<!-- resources/views/categories/edit.blade.php -->

<!DOCTYPE html>
<html>
<head>
    <title>Edit Answer</title>
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
		<h1>Edit Answer</h1>
		 <hr/>           
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

   
    @if(auth()->guard('author')->check()  && auth()->guard('author')->user()->id_author==$answer->author_id)
	<div class="row">
	 <div class="col-md-12">
    <div class="topics-list">
	<form method="post" action="{{ url("/answers/{$answer->id_answer}") }}"  enctype="multipart/form-data">
         @csrf
        @method('PUT')
        <label for="content">Update Answer </label>
        <textarea id="myTextarea" name="content" required>{{  old('content', $answer->content) }}</textarea>
        <br>
		<br>
        
		<input type="hidden" id="topic_id" name="topic_id" value="{{ $answer->topic_id }}" required> 
		<input type="hidden" id="author_id" name="author_id" value="{{ auth()->guard('author')->user()->id_author }}" required> 
		<input type="hidden" id="status" name="status" value="approved" required> 
		<br>
		
        <button type="submit"  class="btn btn-primary float-right">Update Answer </button>
		<br>
		<br>
		 <br>
		<br>
		
    </form>
    </div>	
    </div>	
    </div>
	@else
	 <!--  IF  NOT  Logged in --->	
	<div class="row">
      <div class="col-md-12">	    
        <div class="topics-list">
		<h1 style="color:red;">Sorry you don't  have no rights  to access this content !!!</h1>
		 <hr/>           
        </div>
      </div>
  </div> 
	<!----  ELSE --->	
	@endif		

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
