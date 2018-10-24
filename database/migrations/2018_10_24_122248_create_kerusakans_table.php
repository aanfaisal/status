<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateKerusakansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kerusakans', function (Blueprint $table) {
            $table->increments('rusak_id');
            $table->string('nama')->nullable();
            $table->string('pelapor')->nullable();
            $table->string('bagian')->nullable();
            $table->string('status')->nullable();
            
            $table->timestamps();
            });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('kerusakans');
    }
}
