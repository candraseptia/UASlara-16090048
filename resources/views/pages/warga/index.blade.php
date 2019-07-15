@extends('layouts.master')
@section('content')

	<div class="container">
		<div class="row">
			<div class="col-md-10">
				<h3>Data Warga</h3>
			</div>
			<br>
			<div class="col-sm-2">
				<a href="{{route('warga.create')}}" class="btn btn-sm btn-success">Tambah Warga Baru</a>
			</div>
		</div>

		@if ($message = Session::get('success'))
			<div class="alert alert-success">
				<p>{{$message}}</p>
			</div>
		@endif

		<table class="table table-hover table-sm" id="warga">
			<tr>
				<th><b></b>No.</th>
				<th>Nik</th>
				<th>Nama</th>
				<th>Alamat</th>
				<th>Desa</th>
				<th>Action</th>
			</tr>
			<?php $no=1; ?>
			@foreach ($warga as $wrg)

				<tr>
					<td><b>{{$no++}}</b></td>
					<td>{{$wrg->nik_warga}}</td>
					<td>{{$wrg->nama_warga}}</td>
					<td>{{$wrg->alamat_warga}}</td>
					<td>{{$wrg->desa_warga}}</td>
					<td>
							<a class="btn btn-sm btn-success" href="">Show</a>
							<a class="btn btn-sm btn-warning" href="">Edit</a>
							@csrf
							@method('DELETE')
							<button type="submit" class="btn btn-sm btn-danger">Delete</button>
					</td>
				</tr>

			@endforeach
		</table>

		

	</div>

@endsection