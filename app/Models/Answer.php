<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Answer extends Model
{
    use HasFactory;
	protected $table = 'answers';
	protected $primaryKey = 'id_answer';
	
	protected $fillable = [        
		'topic_id' ,
        'author_id',
        'content',
        'status',
		 
    ];
}
