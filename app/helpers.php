<?php

// app/helpers.php

use Carbon\Carbon;
use App\Models\Topic;
use App\Models\Answer;


function transformDate($dateString)
{
    $date = Carbon::parse($dateString);
    $now = Carbon::now();

    $diffInMinutes = $date->diffInMinutes($now);
    $diffInHours = $date->diffInHours($now);
    $diffInDays = $date->diffInDays($now);

    if ($diffInMinutes < 60) {
        return "$diffInMinutes minutes ago";
    } elseif ($diffInHours < 24) {
        return "$diffInHours hours ago";
    } else {
        return "$diffInDays days ago";
    }
}


function postCount($author_id){
	
	$user_topics=Topic::where('author_id', $author_id)->count();
	$user_answers=Answer::where('author_id', $author_id)->count();
	
	$user_posts=$user_topics+$user_answers;
	
	
	return $user_posts;
	
	
}


function communityAnswers($author_id){
	
	$user_answers=Answer::where('author_id', $author_id)->count();
	
	return $user_answers;
	
	
}


function openedTopics($author_id){	
	$user_topics=Topic::where('author_id', $author_id)->count();	
	return $user_topics;	
}
