<!DOCTYPE html>
<html>
<head>
    <title>Topics List</title>
</head>
<body>
    <h1>Topic List</h1>
    <ul>
        @foreach($topics as $topic)
            <li><a href="/topics/{{ $topic->id_topic }}">{{ $topic->title }}</a></li>
        @endforeach
    </ul>
</body>
</html>
