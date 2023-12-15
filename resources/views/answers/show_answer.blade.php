<!DOCTYPE html>
<html>
<head>
    <title>{{ $topic->title }}</title>
</head>
<body>

      @if($topic->image)
            <img src="{{ asset('storage/' . $topic->image) }}" alt="category Image">
        @endif
    <h1>{{ $topic->title }}</h1>
    <p>{{ $topic->description }}</p>
</body>
</html>
