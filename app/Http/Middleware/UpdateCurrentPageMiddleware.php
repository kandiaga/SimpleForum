<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Auth;

use App\Models\Author;

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
				$userRecord->current_page =$request->url();
				$userRecord->save();
			}
			
            //$user->update(['current_page' => $request->url()]);
        }

        return $next($request);
    }
}
