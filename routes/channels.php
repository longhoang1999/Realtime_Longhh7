<?php

use Illuminate\Support\Facades\Broadcast;

/*
|--------------------------------------------------------------------------
| Broadcast Channels
|--------------------------------------------------------------------------
|
| Here you may register all of the event broadcasting channels that your
| application supports. The given channel authorization callbacks are
| used to check if an authenticated user can listen to the channel.
|
*/

Broadcast::channel('App.Models.User.{id}', function ($user, $id) {
    return (int) $user->id === (int) $id;
});


Broadcast::channel('broadcast-voucher', function () {
    return true;
});


Broadcast::channel('tasks.{user_receive_id}', function ($user, $user_receive_id) {
    return $user->id == $user_receive_id;
});


Broadcast::channel('chat.{roomId}', function ($user, $roomId) {
    return [
        'id' => $user->id,
        'name' => $user->name
    ];
});