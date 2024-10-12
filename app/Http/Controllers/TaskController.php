<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Task;
use App\Events\TaskAssigned;

class TaskController extends Controller
{
    public function index(){
        $otherUser = User::where('id', "<>", Auth::id())->select('name', 'id')->get();
        return view('task')->with([
            'otherUser' => $otherUser
        ]);
    }

    public function store(Request $request){
        $data = [
            'title' => $request->title,
            'description'   => $request->description,
            'user_send_id'  => Auth::id(),
            'user_receive_id'  => $request->user_receive_id
        ];
        $newTask = Task::create($data);

        broadcast(new TaskAssigned($newTask));
        return response()->json([
            'message'   => 'success',
        ]);
    }
}