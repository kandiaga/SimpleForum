<style>
        /* Custom styles for profile page */
        .profile-cover {
            height: 200px; /* Adjust the height as needed */
            background-size: cover;
            background-position: center;
            position: relative;
            overflow: hidden;
        }

        .profile-avatar {
            width: 150px; /* Adjust the size as needed */
            height: 150px; /* Adjust the size as needed */
            border: 5px solid #fff; /* White border around avatar */
            border-radius: 50%;
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
        }
		
		.rounded-image {
    width: 55px;
    height: 55px; /* If you want to enforce a square shape */
    border-radius: 50%; /* This creates a circular shape */
    object-fit: cover; /* Helps maintain aspect ratio for non-square images */
}

    </style>
<div class="container mt-4">



    <div class="profile-cover" style="background-image: url('{{ asset('images/authors/covers/cover_default.png') }}');">
        <!-- User Avatar -->
        <img src="{{ asset('images/authors/avatars/avatar_default.png') }}" alt="User Avatar" class="profile-avatar">
      <!-- User Details Section -->
    <div class="mt-3">
	  @if(auth()->guard('author')->check() && auth()->guard('author')->user()->id_author==$user->id_author)
        <h2>User Name: {{ auth()->guard('author')->user()->username }}</h2>
        <p>Email: user@example.com</p>
	@else	
	 <h2>{{ $user->username }}</h2>
   @endif		
		
        <!-- Add more user details as needed -->
    </div>
    <!-- User Activity Feed -->
    		
    </div>	
	<div class="container mt-3">  
    <ul class="nav nav-tabs" id="profileTabs">
	   <li class="nav-item">
            <a class="nav-link  active" id="activity-tab" data-bs-toggle="tab" href="#activity">Latest Activity</a>
        </li>
        <li class="nav-item">
            <a class="nav-link " id="information-tab" data-bs-toggle="tab" href="#information">Profile Information</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="visitors-tab" data-bs-toggle="tab" href="#visitors">Recent Profile Visitors</a>
        </li> 
       <li class="nav-item">
            <a class="nav-link" id="achievements-tab" data-bs-toggle="tab" href="#achievements">Achievements</a>
        </li> 
		 <li class="nav-item">
            <a class="nav-link" id="followers-tab" data-bs-toggle="tab" href="#followers">Followers</a>
        </li> 
		
       <li class="nav-item">
            <a class="nav-link" id="contacts-tab" data-bs-toggle="tab" href="#contacts">Contacts</a>
        </li> 			
    </ul>

    <div class="tab-content mt-3">
	    <!-- Latest Activity Tab Content -->
        <div class="tab-pane fade  show active" id="activity">		 
            <!-- Add your latest activity content here -->
			<div class="col-md-12">
        <div class="topics-list">
          <h3>
		 @if(auth()->guard('author')->check() && auth()->guard('author')->user()->id_author==$user->id_author)
         {{ auth()->guard('author')->user()->username }}       
	     @else	
	     {{ $user->username }}'
          @endif	
            Latest Activity
		</h3>
          <!-- List of recent topics goes here -->
          <ul class="topic-list">		  
		  @foreach($topics as $topic)			
			@include('layouts.topics_list', ['topic' => $topic])
          @endforeach            
        </ul>
        </div>
      </div>
			
			
        </div>
        <!-- Information Tab Content -->
        <div class="tab-pane fade " id="information">
            Location	
             Vancouver, Canada
            Interests	
            Electronic product design, ATmel AVR microcontrollers, C and VB6 programming,
            Activity	
            User/Merchant
        </div>

        <!-- Header Visitors Tab Content -->
        <div class="tab-pane fade" id="visitors">        
            <!-- Add your Recent Profile Visitors content here -->			
			<p style="color:green;">{{ $profileViewCount }} profile views </p>
			<hr/>		
			
              <h3>Recent Profile Visitors</h3>
			<ul class="topic-list">		  
		  @foreach($profileVisitors as $visitor)                      	  
			@include('layouts.visitors_list', ['visitor' => $visitor])
          @endforeach            
        </ul>
        </div>
		
		<!-- Header Achievements Tab Content -->
        <div class="tab-pane fade" id="achievements">
            <h3>Achievements</h3>
            <!-- Add your Recent Profile Achievements content here -->
        </div>
		<!-- Header Followers Tab Content -->
        <div class="tab-pane fade" id="followers">
            <h3>Followers</h3>
            <!-- Add your Followers list  here -->
		<div style="height:400px;">
			@foreach($profileFollowers as $follower)                      	  
			@include('layouts.followers_list', ['follower' => $follower])
          @endforeach    
		</div>  
        </div>
		
		
		<!-- Header Contacts Tab Content -->
        <div class="tab-pane fade" id="contacts">
            <h3>Contacts</h3>
            <!-- Add your Recent Profile Contacts content here -->
        </div>	
        
    </div>
</div>

	
	
</div>


