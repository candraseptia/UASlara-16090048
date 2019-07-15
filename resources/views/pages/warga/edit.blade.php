@extends
@section('content')
	
	<div class="row">
		<div class="col-sm-8 offset-sm-2">
			<h1 class="display-3">Update</h1>
		</div>
		@if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
                @endforeach
            </ul>

		</div>
		<br>
		@endif

		<form method="post" action="{{ route('warga.edit', $warga->id) }}">
				
			@method('PATCH')
			@csrf
			<div class="form=group">
				<label for="nik_warga">Nik Warga</label>
                <input type="text" class="form-control" name="nik_warga" value={{ $warga->nik_warga }} />
			</div>

			<div class="form=group">
				<label for="nama_warga">Nama Warga</label>
                <input type="text" class="form-control" name="nama_warga" value={{ $warga->nama_warga }} />
			</div>

			<div class="form=group">
				<label for="alamat_warga">Alamat Warga</label>
                <input type="text" class="form-control" name="alamat_warga" value={{ $warga->alamat_warga }} />
			</div>

		</form>
	

@endsection