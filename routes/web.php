<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\TaskController;
use App\Http\Controllers\RoomController;


// http://127.0.0.1:8000/user
Route::get('user', function() {
    return view('users');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Route::group([
    'middleware' => 'auth'
], function() {
    Route::get('task', [TaskController::class, 'index']);
    Route::post('/task', [TaskController::class, 'store']);


    Route::get('room', [RoomController::class, 'index']);
    Route::get('chat/{roomId}', [RoomController::class, 'chat'])->name('chat');
    Route::post('chat/{roomId}', [RoomController::class, 'postChat'])->name('postChat');
});