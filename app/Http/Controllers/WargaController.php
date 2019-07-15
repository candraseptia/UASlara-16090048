<?php

namespace App\Http\Controllers;

use App\Warga;
use Illuminate\Http\Request;

class WargaController extends Controller
{
     public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $warga = Warga::all();
        return view('pages.warga.index',compact('warga'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pages.warga.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Warga::create([
            'nik_warga' => $request->nik_warga,
            'nama_warga' => $request->nama_warga,
            'tempat_lahir_warga' => $request->tempat_lahir_warga,
            'tanggal_lahir_warga' => $request->tanggal_lahir_warga,
            'alamat_warga' => $request->alamat_warga,
            'rt_warga' => $request->rt_warga,
            'rw_warga' => $request->rw_warga,
            'desa_warga' => $request->desa_warga,
            'kecamatan_warga' => $request->kecamatan_warga,
            'kabupaten_kota_warga' => $request->kabupaten_kota_warga,
            'provinsi_warga' => $request->provinsi_warga,
            'agama_warga' => $request->agama_warga,
            'pendidikan_warga' => $request->pendidikan_warga,
            ]);

        return redirect()->route('warga');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Warga  $warga
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Warga  $warga
     * @return \Illuminate\Http\Response
     */
    public function edit(Warga $warga)
    {
        $warga = Warga::find($id);
        return view('pages.warga.edit', compact('warga'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Warga  $warga
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Warga $warga)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Warga  $warga
     * @return \Illuminate\Http\Response
     */
    public function destroy(Warga $warga)
    {
        //
    }
}
