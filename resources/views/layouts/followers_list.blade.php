<li class="topic-item" style="width:200px;float:left; margin-right:15px;">
                 @php
                  $followerId =$follower->follower_id; // Replace with the actual category ID
                  $authorfollower = App\Models\Author::findOrFail($followerId);				  
				  $date = $follower->created_at; // Replace this with your actual date variable
               @endphp   
                <a href="/forums/profile/{{ $follower->follower_id }}">
				<img src="{{ asset('images/authors/avatars/avatar_default.png') }}" alt="{{ $authorfollower->username }}" class="rounded-image">
				</a>
				
                <p class="topic-info"><a href="/forums/profile/{{ $follower->follower_id }}">{{ $authorfollower->username }}</a>, <time datetime="{{ $follower->viewed_at }}">{{ \Carbon\Carbon::parse($date)->format('M j, Y') }}</time></p>
</li>