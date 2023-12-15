<!DOCTYPE html>
<html>
<head>
    <title>{{ $topic->title }}</title>	
	@include('../head')
	<link rel="stylesheet" href="{{ asset('trumbowyg/dist/ui/trumbowyg.css') }}">
<link rel="stylesheet" href="{{ asset('trumbowyg/dist/plugins/colors/ui/trumbowyg.colors.css') }}">
</head>
<body> 
 @include('../top_nav')      
 <div class="container">
   <div class="row">
      <div class="col-md-12">	    
        <div class="topics-list">
		<h1> {{ $topic->title }}</h1>
		 <hr/>           
        </div>
      </div>
  </div>  
	 
	 <div class="col-md-12">
    <div class="topics-list">
        <div class="row">
            <div class="col-md-3">
			 @if($topic->image)
            <img src="{{ asset('storage/' . $topic->image) }}" alt="category Image">
            @endif
                <img src="https://via.placeholder.com/200x150.png" alt="Author Avatar">
            </div>
            <div class="col-md-9">
                <div class="row">
                    <div class="col-md-12">
                        <p>{{ $topic->description }}</p>
                    </div>
                </div>
				
				@if(auth()->check() && auth()->user()->id==$topic->author_id)
                <div class="row">
                    <div class="col-md-12">
                        <a href="{{ url('/topics/'.$topic->id_topic.'/edit') }}" class="btn btn-primary">Edit Topic</a>  
                    </div>
                </div>
				@endif
            </div>
        </div>
    </div>
</div> 
	 
	 
	 
	 
	 
	 
	<div class="row">
	   @foreach($answers as $answer)  
	  
	 <div class="col-md-12">
    <div class="topics-list">
        <div class="row">
            <div class="col-md-3">
                <img src="https://via.placeholder.com/200x150.png" alt="Author Avatar">
            </div>
            <div class="col-md-9">
                <div class="row">
                    <div class="col-md-12">
                        {!! $answer->content !!}
                    </div>
                </div>
				@if(auth()->guard('author')->check() && auth()->guard('author')->user()->id_author==$answer->author_id)
                <div class="row">
                    <div class="col-md-12">
                        <a href="{{ url('/answers/'.$answer->id_answer.'/edit') }}" class="btn btn-primary">Edit Answer </a>  
                    </div>
                </div>
				@endif
            </div>
        </div>
    </div>
</div>    
	   
		
		@endforeach
	</div>

     


    @if(auth()->guard('author')->check())
    <!-- Show content for logged-in users -->
<hr/>
	<div class="row">
	 <div class="col-md-12">
    <div class="topics-list">
	<form method="post" action="{{ url('/answers') }}"  enctype="multipart/form-data">
        @csrf
        
        <label for="content">Add  an Answer</label>
        <textarea id="myTextarea" name="content" required>{{ old('content') }}</textarea>
        <br>
		<br>
        
		<input type="hidden" id="topic_id" name="topic_id" value="{{ $topic->id_topic }}" required> 
		<input type="hidden" id="author_id" name="author_id" value="{{ auth()->guard('author')->user()->id_author }}" required> 
		<input type="hidden" id="status" name="status" value="approved" required> 
		
		<hr/>
        <button type="submit"  class="btn btn-primary float-right">Add Answer </button>
		 <br>
		<br>
		 <br>
		<br>
    </form>
	
	</div>	
    </div>
	
@else
    <!-- Show content for guests -->    
	 <!--  IF  NOT  Logged in --->	
	@include('layouts.login_register') 	
	<!----  ELSE --->
	
@endif



		


   </div>
	
</div>	


  @include('layouts.footer_rights')
  @include('../footer')
  
  <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>


        <script src="{{ asset('trumbowyg/dist/trumbowyg.js') }}"></script>
        <script src="{{ asset('trumbowyg/dist/langs/fr.min.js') }}"></script>
        <script src="{{ asset('trumbowyg/dist/plugins/base64/trumbowyg.base64.js') }}"></script>
        <script src="{{ asset('trumbowyg/dist/plugins/colors/trumbowyg.colors.js') }}"></script>
        <script src="{{ asset('trumbowyg/dist/plugins/noembed/trumbowyg.noembed.js') }}"></script>
        <script src="{{ asset('trumbowyg/dist/plugins/pasteimage/trumbowyg.pasteimage.js') }}"></script>
        <script src="{{ asset('trumbowyg/dist/plugins/template/trumbowyg.template.js') }}"></script>
        <script src="{{ asset('trumbowyg/dist/plugins/preformatted/trumbowyg.preformatted.js') }}"></script>
        <script src="{{ asset('trumbowyg/dist/plugins/ruby/trumbowyg.ruby.js') }}"></script>
        <script src="{{ asset('trumbowyg/dist/plugins/upload/trumbowyg.upload.js') }}"></script>
		<script>
    $(document).ready(function() {
        $('#myTextarea').trumbowyg();
    });
</script>
        
</body>
</html>