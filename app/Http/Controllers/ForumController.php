<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Forum;
use App\Models\Category;
use App\Models\Topic;
use App\Models\Author;
use App\Models\Answer;

class ForumController extends Controller
{
    
	
	
		public function index()
	{
		  
		
		$categories = Category::all();
		//$topics = Topic::all();
		$onlineUsers = Author::where('online', true)->get();

		$topics = Topic::orderBy('id_topic', 'desc')->take(5)->get();
		return view('forum.index_home', compact('categories','topics'));
	}
	
	 public function content($id, $username)
    {
		$author_id =$id;

    // Check if the user with the specified ID exists
      $user = Author::find($author_id);

       
        $answers = Answer::where('author_id',$author_id)->orderBy('id_answer', 'desc')->take(15)->get();
		$topics = Topic::where('author_id', $author_id)->orderBy('id_topic', 'desc')->take(5)->get();
		return view('forum.user_content', compact('user','answers','topics'));
    }



    	public function online()
	{
			
		$onlineUsers = Author::where('online', true)->get();

		
		return view('forum.online', compact('onlineUsers'));
	}
	
	
	

    
}
