<!DOCTYPE html>
<html>
<head>
    <title>Forum Topics</title>
@include('../head')	
</head>
<body>
    @include('../top_nav')  
 
 <div class="container">	
	<div class="row">
      <div class="col-md-12">	    
        <div class="topics-list">
		<h1>Forum Topics </h1>
		 <hr/>           
        </div>
      </div>
  </div>  
 
 <div class="categories-list">
	
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
</body>
</html>
