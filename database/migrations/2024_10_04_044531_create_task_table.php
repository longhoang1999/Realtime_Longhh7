<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('task', function (Blueprint $table) {
            $table->id();
            $table->string('title', 50);
            $table->string('description', 200);
            $table->unsignedBigInteger('user_send_id');
            $table->foreign('user_send_id')->references('id')->on('users');
            $table->unsignedBigInteger('user_receive_id');
            $table->foreign('user_receive_id')->references('id')->on('users');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('task');
    }
};