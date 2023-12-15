<!-- resources/views/tasks/edit.blade.php -->

<!DOCTYPE html>
<html>
<head>
    <title>Edit Task</title>
</head>
<body>
    <h1>Edit Task</h1>

    @if ($errors->any())
        <div style="color: red;">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form method="post" action="{{ url("/tasks/{$task->id}") }}">
        @csrf
        @method('PUT')

        <label for="title">Title:</label>
        <input type="text" id="title" name="title" value="{{ old('title', $task->title) }}" required>
        <br>

        <label for="description">Description:</label>
        <textarea id="description" name="description" required>{{ old('description', $task->description) }}</textarea>
        <br>

        <button type="submit">Update Task</button>
    </form>
</body>
</html>
