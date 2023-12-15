<?php

// app/Http/Controllers/AuthorController.php

namespace App\Http\Controllers;

use App\Models\Author;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

use App\Models\Topic;
use App\Models\Category;
use App\Models\ProfileVisitor;
use App\Models\Follower;



class AuthorController extends Controller
{
    
	
	/**
     * Display a listing of the users.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (auth()->guard('author')->check()) {
        // User is logged in, perform some action
        //return view('dashboard');
		
		$users = Author::all();
        return view('authors.index_authors', compact('users'));
		
    } else {
        // User is not logged in, redirect to login page
        return redirect()->route('login');
    }
		
		
    }


     public function follow(Author $user,Request $request)
    {
        
		
		
            
        
		
		if(Auth::guard('author')->check()){
			
			
			
		/*	
		$request->validate([
            'follower_id' =>'required',
            'id_author' => 'required',
            
        ]);

       
            $follower_id =$request->input('follower_id');
            $id_author=$request->input('id_author');
			Follower::create([
            'follower_id' => $request->input('follower_id'),
            'author_id_author' => $request->input('id_author'),
            
        ]);
		*/
			
			 $visitor_id=auth()->guard('author')->user()->id_author;	
			 
			 // Check if the current visitor is already following this author
		 if (!$user->profileFollowers()->where('follower_id', $visitor_id)->exists()) {
					// If the visitor_id is not the same as the user's id, and the visitor_id is not already following the user
					if ($user->id_author!== $visitor_id && !Author::find($visitor_id)->profileFollowers()->where('follower_id', $visitor_id)->exists()) {
						$user->profileFollowers()->create(['follower_id' => $visitor_id]);
					}
		}

			 
			 
		 }
         //$category_id = $request->input('category_id')
        return redirect('/forums/profile/'.$user->id_author);
    }
	
	
	public function showDashboard()
    {
		
		if (auth()->guard('author')->check()) {
        // User is logged in, perform some action
        //return view('dashboard');
        
		$id_author=auth()->guard('author')->user()->id_author;
		//$topics = Topic::orderBy('id_topic', 'desc')->take(15)->get();
		$topics =Topic::where('author_id', $id_author)->take(10)->get();
		
		$sessionId = session()->getId();
        $userRecord =Author::find($id_author);
		$user=$userRecord;
		// Check if a profile view with the same session ID exists
		if (!$userRecord->profileViews()->where('session_id', $sessionId)->exists()) {
			$userRecord->profileViews()->create([
				'session_id' => $sessionId,
				'viewed_at' => now(),
			]);
		}

         

		
         // In your controller or view
          $profileViewCount = $userRecord->profileViews()->count();
		  $profileVisitors=ProfileVisitor::where('author_id_author', $id_author)->orderBy('id', 'desc')->take(5)->get();
		  $profileFollowers=Follower::where('author_id_author', $id_author)->orderBy('id', 'desc')->take(10)->get();

		return view('authors.dashboard', compact('topics','profileViewCount','profileVisitors','profileFollowers','user'));
		
		 } else {
        // User is not logged in, redirect to login page
        return redirect()->route('login');
       }
	
	
	
    }

	
	
	
    /**
     * Show the form for user login.
     *
     * @return \Illuminate\Http\Response
     */
    public function showLoginForm()
    {
        return view('authors.login_authors');
    }

    /**
     * Handle user login.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function login(Request $request)
    {
        //$password=bcrypt($request->get('password'));
		//$email=$request->get('email');
		
		$credentials = $request->only('email', 'password');
		
		
		
		if (Auth::guard('author')->attempt($credentials)) {
			
            $request->session()->regenerate();

           // return redirect()->intended('/dashboard'); // Change the redirect path as needed
			
			// Get the intended URL or redirect to a default path
            $intendedUrl = $request->session()->pull('url.intended', '/dashboard');
            return redirect()->to($intendedUrl);
			
			
        }

        return back()->withErrors([
            'email' => 'The provided credentials do not match our records.',
        ]);
    }
	
	
	/**
     * Log the user out of the application.
     *
     * @return \Illuminate\Http\Response
     */
    public function logout()
    {
        Auth::guard('author')->logout();

        return redirect()->route('login');
    }
	
	
    /**
     * Show the form for creating a new user.
     *
     * @return \Illuminate\Http\Response
     */
    public function register()
    {
        return view('authors.register_authors');
    }

    /**
     * Store a newly created user in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'username' => 'required|string|max:255',
            'email' => 'required|email|unique:authors,email',
            'password' => 'required|string|min:8',
        ]);

        Author::create([
            'username' => $request->input('username'),
            'email' => $request->input('email'),
            'password' => Hash::make($request->input('password')),
        ]);

        return redirect()->route('authors.index')->with('success', 'User created successfully!');
    }

    /**
     * Display the specified user.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(Author $user)
    {
        
		//$authorId= $request->get('authorId');
		$id_author=$user->id_author;
		//$topics =Topic::where('author_id', $user->id_author)->get();
		$topics =Topic::where('author_id', $id_author)->orderBy('id_topic', 'desc')->take(10)->get();
		//$ObjectCategory = Category::find($categoryId);
		// In your controller or wherever you handle profile views
        // $user->profileViews()->create(['viewed_at' => now()]);
		// In your controller or wherever you handle profile views
		$sessionId = session()->getId();

		// Check if a profile view with the same session ID exists
		if (!$user->profileViews()->where('session_id', $sessionId)->exists()) {
			$user->profileViews()->create([
				'session_id' => $sessionId,
				'viewed_at' => now(),
			]);
		}		 

        $is_following='';
		
         // In your controller or view
          $profileViewCount = $user->profileViews()->count();
		  $profileVisitors=ProfileVisitor::where('author_id_author', $user->id_author)->orderBy('id', 'desc')->take(5)->get();
		  
		  $profileFollowers=Follower::where('author_id_author', $user->id_author)->orderBy('id', 'desc')->take(10)->get();
		  
				  
		  if(Auth::guard('author')->check()){
			 $visitor_id=auth()->guard('author')->user()->id_author;			 
			 $user->profileVisitors()->create(['visitor_id'=>$visitor_id,'viewed_at' => now()]);
			 
			 
			 
			  $follower=Follower::where('follower_id', $visitor_id)->where('author_id_author', $user->id_author)->first();
			 if($follower){
				
                  	$is_following=$follower;		 
			 }
			 
			 else{
				 $is_following='';
				 
			 }
			 
		 }
		  
		  
           
 
		return view('authors.dashboard', compact('user','topics','profileViewCount','profileVisitors','profileFollowers','is_following'));
    }

    /**
     * Show the form for editing the specified user.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(Author $user)
    {
        return view('authors.edit_profile', compact('user'));
    }

    /**
     * Update the specified user in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Author $user)
    {
        $request->validate([
            'username' => 'required|string|max:255',
            'email' => 'required|email|unique:authors,email,' . $user->id,
            'password' => 'nullable|string|min:8',
        ]);

        $user->update([
            'username' => $request->input('username'),
            'email' => $request->input('email'),
            'password' => $request->filled('password') ? Hash::make($request->input('password')) : $user->password,
        ]);

        return redirect()->route('authors.index')->with('success', 'User updated successfully!');
    }

    /**
     * Remove the specified user from storage.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(Author $user)
    {
        $user->delete();
        return redirect()->route('authors.index')->with('success', 'User deleted successfully!');
    }
}
