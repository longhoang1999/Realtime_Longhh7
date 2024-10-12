<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;
use App\Models\Voucher;

class VoucherEvent implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $voucher;
    public function __construct(Voucher $voucher){
        $this->voucher = $voucher;
    }

    public function broadcastOn(){
        return new Channel('broadcast-voucher');
    }

    public function broadcastWith(){
        return [
            'name' => $this->voucher->name,
            'description'   => $this->voucher->description,
            'discount'  => $this->voucher->discount
        ];
    }
}