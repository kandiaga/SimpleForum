<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
	@include('../head')
	
</head>
<body>
@include('../top_nav')     

<div class="container">	
	<div class="row">
      <div class="col-md-12">	    
        <div class="topics-list">		
		
		@if(auth()->check())
    <!-- Show content for logged-in users -->
  <h1> Welcome, {{ auth()->user()->name }}</h1>	
	<a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
    Logout
    </a>

     <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
       @csrf

	   </form>

	
@else
    <!-- Show content for guests -->
    <h1>Please log in to access this content </h1>
    <p><a href="{{ url('/login') }}"> Login in </a></p>
	
@endif
		 <hr/>           
        </div>
      </div>
  </div>  

</div>  
		
@include('layouts.footer_rights')
  
  @include('../footer')	
  
 
</body>
</html>
		


