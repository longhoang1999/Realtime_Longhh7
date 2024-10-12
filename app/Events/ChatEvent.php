<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;
use App\Models\Room;
use App\Models\Message;

class ChatEvent implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $room;
    public $message;

    public function __construct(Room $room, Message $message){
        $this->room = $room;
        $this->message = $message;
    }

    public function broadcastOn()
    {
        return new PresenceChannel('chat.' . $this->room->id);
    }

    public function broadcastWith()
    {
        return [
            'user_send_id' => $this->message->user_send_id,
            'content' => $this->message->content,
            'userName' => $this->message->userSend->name
        ];
    }
}