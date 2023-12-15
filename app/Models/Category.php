<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
	protected $table = 'categories';
	protected $primaryKey = 'id_category';
	
	protected $fillable = [
        'title', // Add any other fillable attributes here
        'description',
		'id_parent',
    ];
}
