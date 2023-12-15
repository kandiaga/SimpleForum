<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Topic extends Model
{
    use HasFactory;
	protected $table = 'topics';
	protected $primaryKey = 'id_topic';
	
	protected $fillable = [
        'title', // Add any other fillable attributes here
        'description',		
		'author_id',
		'category_id',
		 
    ];
}
