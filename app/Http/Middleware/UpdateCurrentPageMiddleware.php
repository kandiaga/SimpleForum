<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

use App\Models\Author;
use App\Models\Topic;
use App\Models\Category;

class UpdateCurrentPageMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    
	public function handle($request, Closure $next)
    {
        if (Auth::guard('author')->check()) {
			$id_author=Auth::guard('author')->user()->id_author;
            //$user =Auth::guard('author')->user(); 
             // put the user in online users list
			$userRecord =Author::where('id_author', $id_author)->first();  
			if ($userRecord) {
				$userRecord->current_page_url =$request->url();
                $userRecord->current_page_name =$this->cleanUrl($request->url());				
				$userRecord->save();
			}
			
            //$user->update(['current_page' => $request->url()]);
        }

        return $next($request);
    }
	
	private function cleanUrl($url)
    {
        
		if (strpos($url, 'topics') !== false) {
        // Logic for topics
		// Get the path after 'topics/'
        $pathAfterTopics = Str::after($url, 'topics/');
        
        // Extract the ID before the next slash or the end of the string
        $id_topic = strtok($pathAfterTopics, '/');
		
		$topic=Topic::where('id_topic', $id_topic)->first();  
		$cleanedUrl=$topic->title;
		
        return $cleanedUrl ?: 'Unknown ID';
		
		} elseif (strpos($url, 'categories') !== false) {
			
			// Logic for categories
			// Get the path after 'categories/'
        $pathAfterTopics = Str::after($url, '/categories');
        
        // Extract the ID before the next slash or the end of the string
        $id_category = strtok($pathAfterTopics, '/');
		
		$category=Category::where('id_category', $id_category)->first();  
		$cleanedUrl=$category->title;
		
        return $cleanedUrl ?: 'Unknown ID';
			
		} else {
			// Default logic or handle other cases
			return $url ?: 'Unknown ID';
		}
		
		
		

        
    }
}
