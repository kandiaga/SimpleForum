<li class="topic-item">
                <h4><a href="/topics/{{ $topic->id_topic }}">{{ $topic->title }}</a></h4>
				@php
                  $authorId =$topic->author_id; // Replace with the actual category ID
                  $author = App\Models\Author::findOrFail($authorId);				  
				  $date = $topic->created_at; // Replace this with your actual date variable
               @endphp   
                <p class="topic-info">By <a href="/forums/profile/{{ $topic->author_id }}-{{ $author->username }}">{{ $author->username }}</a>, <time datetime="{{ $topic->created_at }}">{{ \Carbon\Carbon::parse($date)->format('M j, Y') }}</time></p>
</li>