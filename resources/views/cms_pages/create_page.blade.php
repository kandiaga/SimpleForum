<!-- resources/views/topics/create.blade.php -->

<!DOCTYPE html>
<html>
<head>
    <title>Create New Topic </title>
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
        <textarea id="description" name="description" required>{{ old('description') }}</textarea>
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
</body>
</html>
