<!-- resources/views/categories/create.blade.php -->

<!DOCTYPE html>
<html>
<head>
    <title>Create Category</title>
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
		<h1>Create Category</h1>
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

    <div class="row">
	 <div class="col-md-12">
    <div class="topics-list">
    <form method="post" action="{{ url('/categories') }}"  enctype="multipart/form-data">
        @csrf
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" value="{{ old('title') }}" required>        
        <br>
        <label for="description">Description:</label>
        <textarea  id="myTextarea" name="description" required>{{ old('description') }}</textarea>
        <br>
		<label for="id_parent">Parent Category:</label>
        <select  id="id_parent" name="id_parent" required>	
		<option value="0">Root</option>	
		@foreach($categories as $category)            
			<option value="{{ $category->id_category }}">{{ $category->title }}</option>
        @endforeach		
		</select>
        <br>
		
        <button type="submit"  class="btn btn-primary float-right">Create Category</button>
		<br>
		<br>
		 <br>
		<br>
    </form>
</div>	
    </div>	
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
