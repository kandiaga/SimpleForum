<!-- resources/views/topics/create.blade.php -->

<!DOCTYPE html>
<html>
<head>
    <title>Create New Topic</title>
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
		 <h1>Creating new Topic in category:</h1>
		 <hr/>  
        <strong>{{ $categoryName }}</strong>         
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
   

    @if(auth()->guard('author')->check())
    <div class="row">
	 <div class="col-md-12">
    <div class="topics-list">
    <form method="post" action="{{ url('/topics') }}"  enctype="multipart/form-data">
        @csrf
        		
		<div class="form-group">
                 <label for="title">Title:</label>
                <input type="text" id="title" name="title" value="{{ old('title') }}" class="form-control" required>
        </div>
		
        <label for="description">Description:</label>
        <textarea id="myTextarea" name="description" required>{{ old('description') }}</textarea>
        <br>
		<br>
		<div class="form-group">
        <label for="category_id">Selected Category:</label>
        <select  id="category_id" name="category_id" class="form-control"  required>
        <option value="{{ $categoryId }}"  selected="selected">{{ $categoryName }}</option>			
		</select>
		</div>
        <br>
		<input type="hidden" id="author_id" name="author_id" value="{{ auth()->guard('author')->user()->id_author }}" required> 
		<br>
		
        <button type="submit"  class="btn btn-primary float-right">Create Topic</button>
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
	@include('layouts.login_register') 	
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
