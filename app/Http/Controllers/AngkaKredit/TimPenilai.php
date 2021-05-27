<?php

namespace App\Http\Controllers\AngkaKredit;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;
use Validator;
use Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Input;

class TimPenilai extends Controller{
    public function index(Request $request)
    {
        if($request->ajax()) {
            $data = DB::table('pgw_pegawai as p')
                ->select(DB::raw('p.*, pj.name as jabatan'))
                ->join('pgw_jabatan as pj', 'pj.id', '=', 'p.id_jabatan')
                ->get();

            return DataTables::of($data)
            ->addColumn('aksi', function($data) {
                $btn = '<a href="/angka-kredit/sp-pegawai/'. $data->id .'" class="btn btn-info btn-sm mr-1">Detail SP</a>';
                return $btn;
            })
            ->rawColumns(['aksi'])
            ->make(true);
        }
        return view('/angka-kredit/tim-penilai');
    }

    public function sp_pegawai($id)
    {   
        return view('/angka-kredit/sp-pegawai', [
            'id_pegawai' => $id
        ]);
    }

    public function getInfoPegawai($id)
    {
        $data = DB::table('akr_pegawai as ap')
            ->select(DB::raw('ap.*, sp.no_surat, p.nama'))
            ->join('pkpt_surat_perintah as sp', 'sp.id', '=', 'ap.id_surat_perintah')
            ->join('pgw_pegawai as p', 'p.id', '=', 'ap.id_pegawai')
            ->where('ap.id', $id)
            ->where('sp.is_deleted', 0)
            ->get();

        return response()->json($data);
    }

    public function getSpPegawai($id)
    {
        $data = DB::table('akr_pegawai as ap')
            ->select(DB::raw('ap.*, sp.no_surat, asu.nama as sub_unsur, au.nama as unsur, abk.nama as butir_kegiatan, abks.nama as satuan'))
            ->join('pkpt_surat_perintah as sp', 'sp.id', '=', 'ap.id_surat_perintah')
            ->join('akr_sub_unsur as asu', 'asu.id', '=', 'ap.id_sub_unsur')
            ->join('akr_unsur as au', 'au.id', '=', 'asu.id_unsur')
            ->join('akr_butir_kegiatan as abk', 'abk.id', '=', 'ap.id_butir_kegiatan')
            ->join('akr_butir_kegiatan_satuan as abks', 'abks.id', '=', 'abk.id_butir_kegiatan_satuan')
            ->where('ap.id_pegawai', $id)
            ->get();

        return DataTables::of($data)
        ->addColumn('aksi', function($data) {
            $btn = '<a href="/angka-kredit/review-tim-penilai/'. $data->id .'" class="btn btn-primary btn-sm mr-1">Review</a>';
            return $btn;
        })
        ->addColumn('no_sp', function($data) {
            $no_sp = '<a href="#" id="modal-info-sp" onclick="return show_modal()" class="text-secondary '. $data->id .'">'.$data->no_surat.'</a>';
            return $no_sp;
        })
        ->rawColumns(['aksi', 'no_sp'])
        ->make(true);
    }
}