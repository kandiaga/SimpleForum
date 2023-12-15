<!DOCTYPE html>
<html>
<head>
    <title>Categories List</title>
	@include('../head')
</head>
<body>
   @include('../top_nav') 
<div class="container">	
	<div class="row">
      <div class="col-md-12">	    
        <div class="topics-list">
		<h1>Forum Categories</h1>
		 <hr/>           
        </div>
      </div>
  </div>  
    
	<div class="categories-list">
	<section style="height: auto !important;">
    <ol class="ipsList_reset cForumList zebraStriped" data-controller="core.global.core.table, forums.front.forum.forumList" data-baseurl="" style="height: auto !important;">
        @foreach($categories as $task)
            <li>
			<h2 class="cForumTitle">
			<a href="/categories/{{ $task->id_category }}"  class="ipsPos_right ipsJS_show ipsType_noUnderline cForumToggle" >{{ $task->title }}</a>
			</h2>
			</li>
        @endforeach
    </ol>
   </section>
   </div> 

</div>
	
@include('layouts.footer_rights')
  @include('../footer')	
</body>
</html>
