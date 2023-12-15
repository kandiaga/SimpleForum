<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Category;
use App\Models\Topic;


class CategoryController extends Controller
{
    //
	
	
		public function index()
	{
		//$categories = Category::all();
		$id_parent=0;
		$categories=Category::where('id_parent', $id_parent)->get();
		return view('categories.index_categories', compact('categories'));
	}

	public function show(Category $category)
	{
		
		$topics =Topic::where('category_id', $category->id_category)->get();
       $childs =Category::where('id_parent', $category->id_category)->get();
		return view('categories.show', compact('category','topics','childs'));
	}
	
	
	
		public function create()
	{
		$categories = Category::all();
		return view('categories.create_category', compact('categories'));
	}

	public function store(Request $request)
	{
		$validatedData = $request->validate([
			'title' => 'required|max:255',
			'description' => 'required',
            'id_parent' => 'required',			
		]);
         
		 
		 

		Category::create($validatedData);

		return redirect('/categories')->with('success', 'category created successfully!');
	}
	
	
	

	public function edit(Category $category)
	{
		$categories = Category::all();
		return view('categories.edit', compact('category','categories'));
	}

	public function update(Request $request, Category $category)
	{
		$validatedData = $request->validate([
			'title' => 'required|max:255',
			'description' => 'required',
			'id_parent' => 'required',
		]);

		$category->update($validatedData);

		return redirect('/categories')->with('success', 'Category updated successfully!');
	}
	
	
		public function destroy(Category $category)
	{
		$category->delete();

		return redirect('/categories')->with('success', 'Category deleted successfully!');
	}
	
	
	

     

    
}
