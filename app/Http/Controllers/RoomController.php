<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Room;
use App\Models\Message;
use Illuminate\Support\Facades\Auth;
use App\Events\ChatEvent;

class RoomController extends Controller
{
    public function index(){
        $listRoom = Room::get();
        return view('list-room')->with([
            'listRoom'  => $listRoom
        ]);
    }

    public function chat($roomId){
        $room = Room::find($roomId);
        $listMessage = Message::where('room_id', $roomId)->with('userSend')->get();
        return view('chat')->with([
            'room' => $room,
            'listMessage'   => $listMessage
        ]);
    }

    public function postChat($roomId, Request $req){
        $newMessage = Message::create([
            'content' => $req->message,
            'room_id' => $roomId,
            'user_send_id' => Auth::id()
        ]);

        broadcast(new ChatEvent(Room::find($roomId), $newMessage));

        return response()->json([
            'log'   => 'success'
        ], 201);
    }
}