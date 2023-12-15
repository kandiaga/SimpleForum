<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Topic;
use App\Models\Category;
use App\Models\Answer;


class TopicController extends Controller
{
    //
	
	
		public function index()
	{
		//$topics = Topic::orderBy('id_topic', 'desc')->get();

		//$topics = Topic::all();
		//$topics = Topic::orderBy('id_topic', 'desc')->take(15)->get();
		$topics = Topic::orderBy('id_topic', 'desc')->get();
		$categories = Category::all();
		return view('topics.index_topics', compact('topics','categories'));
	}

	public function show(Topic $topic)
	{
		
		
		$answers = Answer::where('topic_id', $topic->id_topic)->get();
		return view('topics.show_topic', compact('topic','answers'));
	}
	
	
	
		public function create(Request $request, $categoryId)
	{
		$categories = Category::all();
		//$categoryId = $request->get('category');
		
        $ObjectCategory = Category::find($categoryId);
		$categoryName=$ObjectCategory->title;
		return view('topics.create_topic', compact('categories','categoryId','categoryName'));
	}

	public function store(Request $request)
	{
		$validatedData = $request->validate([
			'title' => 'required|max:255',
			'description' => 'required',
            'author_id'=>'required',
		    'category_id'=>'required',			
		]);
         
		 
		 

		Topic::create($validatedData);
        
		//return redirect('/topics')->with('success', 'topic created successfully!');
		
		$category_id = $request->input('category_id');
		return redirect('/categories/'.$category_id)->with('success', 'topic updated successfully!');
	}
	
	
	

	public function edit(Topic $topic)
	{
		$categories = Category::all();
		return view('topics.edit_topic', compact('topic','categories'));
	}

	public function update(Request $request, Topic $topic)
	{
		$validatedData = $request->validate([
			'title' => 'required|max:255',
			'description' => 'required',
		]);

		$topic->update($validatedData);
        $id_topic=$topic->id_topic;
		return redirect('/topics/'.$id_topic)->with('success', 'topic updated successfully!');
	}
	
	
		public function destroy(topic $topic)
	{
		$topic->delete();

		return redirect('/topics')->with('success', 'topic deleted successfully!');
	}
	
	
	

     

    
}
