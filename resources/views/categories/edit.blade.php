<!-- resources/views/categories/edit.blade.php -->

<!DOCTYPE html>
<html>
<head>
    <title>Edit category</title>
 @include('../head')	
</head>
<body>
@include('../top_nav') 
    <h1>Edit category</h1>

    @if ($errors->any())
        <div style="color: red;">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form method="post" action="{{ url("/categories/{$category->id_category}") }}">
        @csrf
        @method('PUT')

        <label for="title">Title:</label>
        <input type="text" id="title" name="title" value="{{ old('title', $category->title) }}" required>
        <br>

        <label for="description">Description:</label>
        <textarea id="description" name="description" required>{{ old('description', $category->description) }}</textarea>
        <br>
		
		<br>
		<label for="id_parent">Parent Category:</label>
        <select  id="id_parent" name="id_parent" required>
        <option value="0">Root</option>		
		@foreach($categories as $category)            
			<option value="{{ $category->id_category }}">{{ $category->title }}</option>
        @endforeach		
		</select>
        <br>

        <button type="submit">Update category</button>
    </form>
	
	
	@include('../footer')
</body>
</html>
