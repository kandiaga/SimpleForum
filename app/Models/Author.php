<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class Author extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
	protected $table = 'authors';
	protected $primaryKey = 'id_author';

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'username',
        'email',
        'password',		
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
		'online',
		'current_page_url',
		'current_page_name',
		'last_visited',
    ];
		
	
	
	

	public function profileViews()
	{
		return $this->hasMany(ProfileView::class);
	}

    public function profileVisitors()
	{
		return $this->hasMany(profileVisitor::class);
	}


    public function profileFollowers()
	{
		return $this->hasMany(Follower::class);
	}
	
	
	
}
