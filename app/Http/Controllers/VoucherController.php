<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Voucher;
use App\Events\VoucherEvent;

class VoucherController extends Controller
{
    public function addVouchers(Request $request){
        $data = [
            'name' => $request->name,
            'description'   => $request->description,
            'discount'  => $request->discount
        ];
        $newVoucher = Voucher::create($data);

        broadcast(new VoucherEvent($newVoucher));
        return response()->json([
            'message'   => 'Thêm mới thành công'
        ]);
    }
}
