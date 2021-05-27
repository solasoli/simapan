<?php

namespace App\Http\Controllers\AngkaKredit;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Datatables;
use Validator;
use Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Input;

class ReviewTimPenilai extends Controller{
    public function index($id)
    {
        $data = DB::table('akr_pegawai as ap')
            ->select(DB::raw('ap.*, sp.no_surat, p.nama, p.nip, pj.name as jabatan, u.nama as unsur, su.nama as sub_unsur, bk.nama as butir_kegiatan, bks.nama as satuan'))
            ->join('pkpt_surat_perintah as sp', 'sp.id', '=', 'ap.id_surat_perintah')
            ->join('pgw_pegawai as p', 'p.id', '=', 'ap.id_pegawai')
            ->join('akr_sub_unsur as su', 'su.id', '=', 'ap.id_sub_unsur')
            ->join('pgw_jabatan as pj', 'pj.id', '=', 'p.id_jabatan')
            ->join('akr_butir_kegiatan as bk', 'bk.id', '=', 'ap.id_butir_kegiatan')
            ->join('akr_butir_kegiatan_satuan as bks', 'bks.id', '=', 'bk.id_butir_kegiatan_satuan')
            ->join('akr_unsur as u', 'u.id', '=', 'su.id_unsur')
            ->where('ap.id', $id)
            ->get();

        return view('/angka-kredit/review-tim-penilai', [
            'data' => $data
        ]);
    }
}