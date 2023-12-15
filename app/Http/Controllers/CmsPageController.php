<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Topic;
use App\Models\Category;
use App\Models\Answer;

use App\Models\CmsPage;

class CmsPageController extends Controller
{
    
	public function index()
    {
        $pages = CmsPage::all();

        return view('cms_pages.index_pages', ['pages' => $pages]);
    }
	
	
	public function store(Request $request)
	{
		$validatedData = $request->validate([			
            'topic_id'=>'required',
            'author_id'=>'required',
            'content'=>'required',
            'status',			
		]);
         
		 
		 

		Answer::create($validatedData);
		
		// Using input method
         $topic_id = $request->input('topic_id');

        // or using get method
         //$topic_id = $request->get('topic_id');


		return redirect('/topics/'.$topic_id)->with('success', 'answer created successfully!');
	}
	
	
	

	public function edit(Answer $answer)
	{
		return view('answers.edit_answer', compact('answer'));
	}

	public function update(Request $request, Answer $answer)
	{
		$validatedData = $request->validate([
			'topic_id'=>'required',
            'author_id'=>'required',
            'content'=>'required',
            'status',	
		]);

		$answer->update($validatedData);
		
		$topic_id = $request->get('topic_id');

		return redirect('/topics/'.$topic_id)->with('success', 'answer updated successfully!');
	}
	
	
		public function destroy(answer $answer)
	{
		$answer->delete();

		return redirect('/topics')->with('success', 'answer deleted successfully!');
	}
	
	
	

     

    
}
