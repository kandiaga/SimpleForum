<li class="topic-item">
                 @php
                  $visitorId =$visitor->visitor_id; // Replace with the actual category ID
                  $authorVisitor = App\Models\Author::findOrFail($visitorId);				  
				  $date = $visitor->viewed_at; // Replace this with your actual date variable
               @endphp   
                <a href="/forums/profile/{{ $visitor->visitor_id }}">
				<img src="{{ asset('images/authors/avatars/avatar_default.png') }}" alt="{{ $authorVisitor->username }}" class="rounded-image">
				</a>
				
                <p class="topic-info"><a href="/forums/profile/{{ $visitor->visitor_id }}">{{ $authorVisitor->username }}</a>, <time datetime="{{ $visitor->viewed_at }}">{{ \Carbon\Carbon::parse($date)->format('M j, Y') }}</time></p>
</li>