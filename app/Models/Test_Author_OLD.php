<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Author extends Model
{
    use HasFactory;
	protected $table = 'authors';
	protected $primaryKey = 'id_author';
	
	protected $fillable = [        
        'id_user',
        'fullname',
        'description',
        'cover',
        'username',
        'email',
        'password', 
        'avatar',
    ];
}
