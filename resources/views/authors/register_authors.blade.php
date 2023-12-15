<!-- resources/views/users/register.blade.php -->
<!DOCTYPE html>
<html>
<head>
    <title>Create Category</title>
	@include('../head')
	
</head>
<body>
@include('../top_nav')     

<div class="container">	
@if(auth()->guard('author')->check())
<div class="row">
      <div class="col-md-12">	    
        <div class="topics-list">
		<h1>Welcome, {{ auth()->guard('author')->user()->username }}. You  are Already in !!! </h1>
		 	 
        </div>
      </div>
</div>  	
 @else
	<div class="row">
      <div class="col-md-12">	    
        <div class="topics-list">
		<h1>Register an Account </h1>
		 <hr/>         
        <h5>If you already  have an account just: <a href="{{ url('/login') }}">Sing in</a>  </h5>		 
        </div>
      </div>
  </div>  
  
   @if ($errors->any())
        <div style="color: red;">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

       <div class="col-md-12">	    
        <div class="topics-list">
         <form  method="post" action="{{ url('/authors') }}"  enctype="multipart/form-data">
		 @csrf
            <div class="form-group">
                <label for="username">User Name:</label>
                <input type="text" class="form-control" id="username" name="username" required>
            </div>         

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
			
			<div class="form-group">
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
		 </div>
		 
	@endif	 	 
		 
		 
  </div>  
		
@include('layouts.footer_rights')
  
  @include('../footer')	
  
 
</body>
</html>
		