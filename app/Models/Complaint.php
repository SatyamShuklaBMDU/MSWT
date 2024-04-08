<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Complaint extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'description',
        'user_id',
        'status',
    ];

    // Relationship of a Complaint `complaints` table with User `users` table (every complaint belongs to a user)    
    public function user() { 
        return $this->belongsTo(User::class, 'user_id','id');

    }
}
