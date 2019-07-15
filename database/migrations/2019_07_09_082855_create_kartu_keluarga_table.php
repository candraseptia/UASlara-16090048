<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKartuKeluargaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kartu_keluarga', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('nomor_keluarga');
            $table->integer('id_kepala_keluarga');
            $table->string('alamat_keluarga');
            $table->string('desa_kelurahan_keluarga');
            $table->string('kecamatan_keluarga');
            $table->string('kabupaten_kota_keluarga');
            $table->string('provinsi_keluarga');
            $table->string('negara_keluarga');
            $table->string('rt_keluarga');
            $table->string('rw_keluarga');
            $table->string('kode_pos_keluarga');
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
        Schema::dropIfExists('kartu_keluarga');
    }
}
