<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>online  Users</title>
    @include('../head')
</head>
<body>

  @include('../top_nav')  

  <div class="container">
  <div class="categories-list">
        <h2>Online Users</h2>

        @if(count($onlineUsers) > 0)
            <ul class="list-group">
                @foreach($onlineUsers as $user)
                    <li class="list-group-item">					
					<a href="/forums/profile/{{ $user->id_author }}">{{ $user->username }}</a>
					is viewing: <a href="{{ $user->current_page_url }}"> {{ $user->current_page_name ?: 'Unknown page' }} </a>
					</li>
                @endforeach
            </ul>
        @else
            <p>No online users at the moment.</p>
        @endif
  </div>
   </div>
   
 @include('layouts.footer_rights')
  
  @include('../footer')
</body>
</html>



     
