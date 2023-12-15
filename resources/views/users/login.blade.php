<!-- resources/views/users/register.blade.php -->
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
	@include('../head')
	
</head>
<body>
@include('../top_nav')     

<div class="container">	
@if(auth()->check())
<div class="row">
      <div class="col-md-12">	    
        <div class="topics-list">
		<h1>Welcome, {{ auth()->user()->name }}. You  are Already in !!! </h1>
		 	 
        </div>
      </div>
</div>  	
 @else
	<div class="row">
      <div class="col-md-12">	    
        <div class="topics-list">
		<h1>Login in to your Account </h1>
		 <hr/> 
        <h5>Register if you don't have an account yet : <a href="{{ url('/register') }}"> Register</a>  </h5>		 
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
         <form  method="post" action="{{ url('/login') }}"  enctype="multipart/form-data">
		 @csrf
           

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
		