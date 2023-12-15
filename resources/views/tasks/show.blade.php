<!DOCTYPE html>
<html>
<head>
    <title>{{ $task->title }}</title>
</head>
<body>

      @if($task->image)
            <img src="{{ asset('storage/' . $task->image) }}" alt="Task Image">
        @endif
    <h1>{{ $task->title }}</h1>
    <p>{{ $task->description }}</p>
</body>
</html>
