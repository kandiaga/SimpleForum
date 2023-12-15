<header>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/forums">	
	<img src="{{ asset('images/Nka_Soft.png') }}" alt="My Simple Forum">
	</a>	
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">		    
            <li class="nav-item active">
                <a class="nav-link" href="/forums">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Services</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Contact</a>
            </li>			
			 <!-- Check if the user is logged in -->
                    
             @if(auth()->guard('author')->check())
			<!-- Show content for logged-in users -->			
            <li class="nav-item">
                <a class="nav-link" href="{{ url('/dashboard') }}">Dashboard</a>
            </li>			
			<li class="nav-item">
             <a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"  class="nav-link">
            Logout
           </a>
            </li>
			@else
			<li class="nav-item">
                <a href="{{ url('/login') }}"  class="nav-link" > <i class="fas fa-sign-in-alt"></i> Login in </a>
            </li>
			@endif		
        </ul>
    </div>
</nav>


<ul>
  
  <li>
  @if(auth()->guard('author')->check())
    <!-- Show content for logged-in users -->
   <h3> Welcome, {{ auth()->guard('author')->user()->username }}</h3>	
   
	
     <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
       @csrf
	   </form>	
     @else
    <!-- Show content for guests -->    
    <h1><a href="{{ url('/login') }}" style="color:white;" > Login in </a></h1>	
   @endif
  </li>
 </ul> 
 
 </header>   