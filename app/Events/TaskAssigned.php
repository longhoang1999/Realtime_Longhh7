<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;
use App\Models\Task;


class TaskAssigned implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $task;
    public function __construct(Task $task){
        $this->task = $task;
    }

    public function broadcastOn(){
        return  new PrivateChannel('tasks.' . $this->task->user_receive_id);
    }

    public function broadcastWith(){
        return [
            'userSendName' => $this->task->userSend->name,
            'title' => $this->task->title
        ];
    }
}