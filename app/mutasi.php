<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class mutasi extends Model
{
    protected $fillable =['nik_mutasi','tempat_lahir_mutasi','tanggal_lahir_mutasi',
    		'jenis_kelamin_mutasi','alamat_mutasi','desa_kelurahan_mutasi',
    		'kecamatan_mutasi','kabupaten_kota_mutasi','provinsi_mutasi',
    		'negara_mutasi','rt_mutasi','rw_mutasi','agama_mutasi',
    		'pendidikan_terakhir_mutasi','pekerjaan_mutasi',
    		'status_perkawinan_mutasi'];
}
