<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Forums</title>
    @include('../head')
</head>
<body>

  @include('../top_nav')  

  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="topics-list">
	@if(count($topics)>0)	
          <h2>Recent Topics by {{ $user->username }}</h2>
          <!-- List of recent topics goes here -->
          <ul class="topic-list">		  
		  @foreach($topics as $topic)			
			@include('layouts.topics_list', ['topic' => $topic])
          @endforeach            
        </ul>
        </div>
		@else	
	 <h2 >No  Topics added by  {{ $user->username }} yet !</h2>
   @endif	
      </div>
    </div>
	
	<div class="categories-list">
	@if(count($answers)>0)
	<h1>Answers List by {{ $user->username }}</h1>
    <section style="height: auto !important;">
	
      	<div class="row">
	   @foreach($answers as $answer)  
	  
	 <div class="col-md-12">
    <div class="topics-list">
        <div class="row">            
            <div class="col-md-9">
                <div class="row">
                    <div class="col-md-12">
                        {!! $answer->content !!}
                    </div>
                </div>				
            </div>
        </div>
    </div>
</div>    
	   
		
		@endforeach
	</div>
</section>
   		 @else				  
	 <h2 >No  answers added by  {{ $user->username }} yet !</h2>	        
   @endif
</div>
	
	
  </div>

 @include('layouts.footer_rights')
  
  @include('../footer')
</body>
</html>



     
