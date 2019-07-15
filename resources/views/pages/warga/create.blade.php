@extends('layouts.master')
@section('content')

	<div class="container">
		<div class="row">
			<div class="col-md-10">
				<h3>Form Warga</h3>
			</div>
			
		</div>

		@if ($message = Session::get('success'))
			<div class="alert alert-success">
				<p>{{$message}}</p>
			</div>
		@endif

		<form method="post" action="{{route('warga.store')}}" enctype="multipart/form-data">
			{{csrf_field()}}
			 <div class="form-group">
		    	<label for="uname">Nik :</label>
		    	<input type="text" class="form-control"  placeholder="Enter Nik" name="nik_warga" required>
  			</div>

  			<div class="form-group">
		    	<label for="uname">Nama :</label>
		    	<input type="text" class="form-control"  placeholder="Enter Nama" name="nama_warga" required>
  			</div>

  			<div class="form-group">
		    	<label for="uname">Tempat Lahir :</label>
		    	<input type="text" class="form-control"  placeholder="Enter username" name="tempat_lahir_warga" required>
		    	
  			</div>

  			<div class="form-group">
		    	<label for="uname">Tanggal Lahir :</label>
		    	<input type="date" class="form-control"  placeholder="Enter username" name="tanggal_lahir_warga" required>
		    	
  			</div>

  			<div class="form-group">
		    	<label for="uname">Alamat:</label>
		    	<textarea name="alamat_warga" required  class="form-control"  placeholder="Masukan Alamat"></textarea>
		    	
  			</div>

  			<div class="form-group">
		    	<label for="uname">Rt:</label>
		    	<input type="text" class="form-control"  placeholder="Enter username" name="rt_warga" required>
		    	
  			</div>

  			<div class="form-group">
		    	<label for="uname">Rw:</label>
		    	<input type="text" class="form-control"  placeholder="Enter username" name="rw_warga" required>
		    	
  			</div>

  			<div class="form-group">
		    	<label for="uname">Desa :</label>
		    	<input type="text" class="form-control"  placeholder="Enter username" name="desa_warga" required>
		    	
  			</div>

  			<div class="form-group">
		    	<label for="uname">Kecamatan:</label>
		    	<input type="text" class="form-control"  placeholder="Enter username" name="kecamatan_warga" required>
		    	
  			</div>

  			<div class="form-group">
		    	<label for="uname">Kabupaten/Kota :</label>
		    	<input type="text" class="form-control"  placeholder="Enter username" name="kabupaten_kota_warga" required>
		    	
  			</div>

  			<div class="form-group">
		    	<label for="uname">Provinsi:</label>
		    	<input type="text" class="form-control"  placeholder="Enter username" name="provinsi_warga" required>
		    	
  			</div>

  			<div class="form-group">
		    	<label for="uname">Agama :</label>
		    	<input type="text" class="form-control"  placeholder="Enter username" name="agama_warga" required>
		    	
  			</div>

  			<div class="form-group">
		    	<label for="uname">Pendidikan Warga:</label>
		    	<input type="text" class="form-control"  placeholder="Enter username" name="pendidikan_warga" required>
		    	
  			</div>
			 
			<button type="submit" class="btn btn-primary">Submit</button>
			<br>
		</form>

		

	</div>

@endsection