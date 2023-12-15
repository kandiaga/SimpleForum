<!-- resources/views/categories/edit.blade.php -->

<!DOCTYPE html>
<html>
<head>
    <title>Edit Topic</title>
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
		<h1>Edit Topic</h1>
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

     @if(auth()->check() && auth()->user()->id==$topic->author_id)
    <div class="row">
	 <div class="col-md-12">
    <div class="topics-list">
    <form method="post" action="{{ url("/topics/{$topic->id_topic}") }}">
        @csrf
        @method('PUT')

        <label for="title">Title:</label>
        <input type="text" id="title" name="title" value="{{ old('title', $topic->title) }}" required>
        <br>

        <label for="description">Description:</label>
        <textarea id="myTextarea"  name="description" required>{{ old('description', $topic->description) }}</textarea>
        <br>
		
		<label for="category_id">Category:</label>
        <select  id="category_id" name="category_id" required>	
        <option value="{{ $topic->category_id }}">Default </option>		
		@foreach($categories as $category)            
			<option value="{{ $category->id_category }}">{{ $category->title }}</option>
        @endforeach		
		</select>
        <br>
		<input type="hidden" id="author_id" name="author_id" value="{{ $category->author_id }}" required> 
		<br>

        <button type="submit">Update category</button>
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
