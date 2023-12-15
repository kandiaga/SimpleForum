<!-- resources/views/topics/create.blade.php -->

<!DOCTYPE html>
<html>
<head>
    <title>Create New Topic OK</title>
<!-- Inside your Blade view -->
<link rel="stylesheet" href="{{ asset('css/styles.css') }}">
	
<link rel="stylesheet" href="{{ asset('trumbowyg/dist/ui/trumbowyg.css') }}">
<link rel="stylesheet" href="{{ asset('trumbowyg/dist/plugins/colors/ui/trumbowyg.colors.css') }}">

	
	
	
</head>
<body>
    <h1>Create Topic</h1>

    @if ($errors->any())
        <div style="color: red;">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form method="post" action="{{ url('/topics') }}"  enctype="multipart/form-data">
        @csrf
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" value="{{ old('title') }}" required>        
        <br>
        <label for="description">Description:</label>        
		<textarea id="myTextarea"   name="description" required>{{ old('description') }}</textarea>

        <br>
		<br>
        <label for="category_id">Category:</label>
        <select  id="category_id" name="category_id" required>		
		@foreach($categories as $category)            
			<option value="{{ $category->id_category }}">{{ $category->title }}</option>
        @endforeach		
		</select>
        <br>
		<input type="hidden" id="author_id" name="author_id" value="1" required> 
		<br>
		
        <button type="submit">Create Topic</button>
    </form>
	
	
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
