<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    use HasFactory;
    protected $table = 'task';

    public $fillable = [
        'title',
        'description',
        'user_send_id',
        'user_receive_id'
    ];

    public function userSend(){
        return $this->belongsTo(User::class, 'user_send_id');
    }

    public function userReceive(){
        return $this->belongsTo(User::class, 'user_receive_id');
    }
}