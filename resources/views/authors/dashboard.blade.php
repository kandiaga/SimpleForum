<!DOCTYPE html>
<html>
<head>
    <title>User Profile</title>
	@include('../head')
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
	
</head>
<body>
@include('../top_nav')     

<div class="container">	
	<div class="row">
      <div class="col-md-12">	    
        <div class="topics-list">	

@if(auth()->guard('author')->check())		
		 @if(auth()->guard('author')->check() && auth()->guard('author')->user()->id_author==$user->id_author)
			<!-- Show content for logged-in users -->       
	  <h1><a href="#"> Edit Profile</a></h1>
	      @else	  			  
		  @if($is_following!='' && $is_following->follower_id==auth()->guard('author')->user()->id_author  &&  $is_following->author_id_author===$user->id_author)		  
          <button   class="btn btn-outline-primary"> Your are Following {{$user->username}}</button>	
          <button   class="btn btn-primary float-right"><a href="{{ url("/forums/profile/{$user->id_author}-{$user->username}/content/") }}"  style="color:white;">View  all Posts </a></button>	  
	      @else			 	  
	  <div class="container mt-5"> 	
	   <form method="post"  action="{{ url("/follow/{$user->id_author}") }}"  >	  
       @csrf
	    <input type="hidden" id="follower_id" name="follower_id" value="{{ auth()->guard('author')->user()->id_author }}" required>
       <input type="hidden" id="id_author" name="id_author" value="{{ $user->id_author }}" required> 	   
	  
	   <button type="submit"  class="btn btn-outline-primary"> Follow {{$user->username}}</button>
	   
	   </form>	
	    @endif
</div>
	  
	  
        
		
		  @endif
	
   @include('layouts.author_profile')
   
@else
	 <button   class="btn btn-outline-primary"> Your are Following {{$user->username}}</button>	
          <button   class="btn btn-primary float-right"><a href="{{ url("/forums/profile/{$user->id_author}-{$user->username}/content/") }}"  style="color:white;">View  all Posts </a></button>	  	  	  
    <!-- Show content for guests -->
    @include('layouts.author_profile')
	
@endif
		 <hr/>           
        </div>
      </div>
  </div>  

</div>  


 
		
@include('layouts.footer_rights')
  
  @include('../footer')	
  
  <!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
<!-- Bootstrap JS and Popper.js -->

</body>
</html>
		


