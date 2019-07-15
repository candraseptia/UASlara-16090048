<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class kartu_keluarga extends Model
{
    protected $fillable = ['nomor_keluarga','id_kepala_keluarga','alamat_keluarga',
			'desa_kelurahan_keluarga','kecamatan_keluarga','kabupaten_kota_keluarga',
			'provinsi_keluarga','negara_keluarga','rt_keluarga','rw_keluarga',
			'kode_pos_keluarga'];
}
