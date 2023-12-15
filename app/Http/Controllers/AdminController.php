<?php

// app/Http/Controllers/AdminController.php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Topic;
use App\Models\User;

class AdminController extends Controller
{
    public function dashboard()
    {
       
		return view('admin.dashboard');
    }

    public function manageUsers()
    {
        // Logic to retrieve and display users
		
        return view('admin.manage_users');
    }
	
	
	public function manageCategories()
    {
        //$categories = Category::all();
		$id_parent=0;
		$categories=Category::where('id_parent', $id_parent)->get();
		return view('admin.manage_categories', compact('categories'));
    }

    // Add more methods based on your requirements
}
