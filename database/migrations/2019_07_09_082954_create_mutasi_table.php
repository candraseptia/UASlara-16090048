<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMutasiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mutasi', function (Blueprint $table) {
            $table->bigIncrements('id_mutasi');
            $table->integer('nik_mutasi');
            $table->string('tempat_lahir_mutasi');
            $table->date('tanggal_lahir_mutasi');
            $table->string('jenis_kelamin_mutasi');
            $table->string('alamat_mutasi');
            $table->string('desa_kelurahan_mutasi');
            $table->string('kecamatan_mutasi');
            $table->string('kabupaten_kota_mutasi');
            $table->string('provinsi_mutasi');
            $table->string('negara_mutasi');
            $table->string('rt_mutasi');
            $table->string('rw_mutasi');
            $table->string('agama_mutasi');
            $table->string('pendidikan_terakhir_mutasi');
            $table->string('pekerjaan_mutasi');
            $table->string('status_perkawinan_mutasi');
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
        Schema::dropIfExists('mutasi');
    }
}
