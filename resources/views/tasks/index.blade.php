<!DOCTYPE html>
<html>
<head>
    <title>Task List</title>
</head>
<body>
    <h1>Task List</h1>
    <ul>
        @foreach($tasks as $task)
            <li><a href="/tasks/{{ $task->id }}">{{ $task->title }}</a></li>
        @endforeach
    </ul>
</body>
</html>
