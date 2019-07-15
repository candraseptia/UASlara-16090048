<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateWargasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wargas', function (Blueprint $table) {
            $table->increments('id');
            $table->char('nik_warga','16')->unsigned;
            $table->string('nama_warga');
            $table->string('tempat_lahir_warga');
            $table->date('tanggal_lahir_warga');
            $table->string('alamat_warga');
            $table->string('rt_warga');
            $table->string('rw_warga');
            $table->string('desa_warga');
            $table->string('kecamatan_warga');
            $table->string('kabupaten_kota_warga');
            $table->string('provinsi_warga');
            $table->string('agama_warga');
            $table->string('pendidikan_warga');
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
        Schema::dropIfExists('wargas');
    }
}
