<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Forums</title>
    @include('../head')
</head>
<body>

  @include('../top_nav')  

  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="topics-list">
          <h2>Recent Topics</h2>
          <!-- List of recent topics goes here -->
          <ul class="topic-list">		  
		  @foreach($topics as $topic)			
			@include('layouts.topics_list', ['topic' => $topic])
          @endforeach            
        </ul>
        </div>
      </div>
    </div>
	
	<div class="categories-list">
	<h1>Categories List</h1>
    <section style="height: auto !important;">
    <ol class="ipsList_reset cForumList zebraStriped" data-controller="core.global.core.table, forums.front.forum.forumList" data-baseurl="" style="height: auto !important;">
       
       @foreach($categories as $task)
            @if($task->id_parent ==0)			
			<li>			
            <h2 class="cForumTitle">
                <a href="/categories/{{ $task->id_category }}" class="ipsPos_right ipsJS_show ipsType_noUnderline cForumToggle" data-action="toggleCategory" data-ipstooltip="" title="{{ $task->title }}"></a>
                <a href="/categories/{{ $task->id_category }}">{{ $task->title }}</a>
            </h2>
			
            <ol class="ipsDataList ipsDataList_large ipsDataList_zebra" data-role="forums">
			@foreach($categories as $child)
			    @if($child->id_parent == $task->id_category)
                <li class="cForumRow ipsDataItem ipsDataItem_responsivePhoto  ipsClearfix" data-forumid="1">
                    <!-- Your forum item content goes here -->
					<a href="/categories/{{ $task->id_category }}">{{ $child->title }}</a>
                </li>
				 @endif
			@endforeach	
                <!-- Add more forum items as needed -->
            </ol>
        </li>
		  @endif
		    
        @endforeach
    </ol>
</section>
</div>
	
	
  </div>

 @include('layouts.footer_rights')
  
  @include('../footer')
</body>
</html>



     
