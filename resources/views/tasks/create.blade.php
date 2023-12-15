<!-- resources/views/tasks/create.blade.php -->

<!DOCTYPE html>
<html>
<head>
    <title>Create Task</title>
</head>
<body>
    <h1>Create Task</h1>

    @if ($errors->any())
        <div style="color: red;">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form method="post" action="{{ url('/tasks') }}"  enctype="multipart/form-data">
        @csrf
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" value="{{ old('title') }}" required>
        <br>
        <label for="title">Price:</label>
        <input type="text" id="price" name="price" value="{{ old('price') }}" required>
        <br>
        <label for="description">Description:</label>
        <textarea id="description" name="description" required>{{ old('description') }}</textarea>
        <br>
		
		<label for="image">Image:</label>
    <input type="file" id="image" name="image">
    <br>

        <button type="submit">Create Task</button>
    </form>
</body>
</html>
