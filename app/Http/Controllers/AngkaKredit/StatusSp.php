<?php

namespace App\Http\Controllers\AngkaKredit;

use App\Repository\Pegawai\Pegawai;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Auth;
use Yajra\DataTables\Facades\DataTables;

class StatusSp extends Controller
{
    public function getPegawai()
    {
        $data = DB::table('pgw_pegawai AS p')
            ->select(DB::raw('p.id, p.nama, p.nip, j.id as id_jabatan, j.name as jabatan'))
            ->join('pgw_jabatan as j', 'p.id_jabatan', '=', 'j.id')
            ->where('p.is_deleted', 0)
            ->orderBy('p.id', 'DESC')
            ->get();
        
        return DataTables::of($data)
        ->addColumn('aksi', function($data) {
            $button = '<a href="/angka-kredit/status-sp/status-sp-pegawai/primer/'.$data->id.'" class="btn btn-primary btn-sm mr-2">Primer</a>';
            $button .= '<a href="/angka-kredit/status-sp/status-sp-pegawai/sekunder/'.$data->id.'" class="btn btn-info btn-sm mr-2">Sekunder</a>';
            $button .= '<a href="/angka-kredit/status-sp/status-sp-pegawai/tersier/'.$data->id.'" class="btn btn-secondary btn-sm mr-2">Tersier</a>';
            return $button;
        })
        ->rawColumns(['aksi'])
        ->make(true);
    }

    public function getIntersectStatus()
    {
        $data = DB::table('akr_pegawai AS ap')
            ->select(DB::raw('ap.*, sp.no_surat, p.nama, au.nama as unsur, abk.nama as butir_kegiatan, abks.nama as butir_kegiatan_satuan, asu.nama as sub_unsur'))
            ->join('pkpt_surat_perintah AS sp', 'sp.id', '=', 'ap.id_surat_perintah')
            ->join('pgw_pegawai as p', 'p.id', '=', 'ap.id_pegawai')
            ->join('akr_sub_unsur as asu', 'asu.id', '=', 'ap.id_sub_unsur')
            ->join('akr_unsur as au', 'au.id', '=', 'asu.id_unsur')
            ->join('akr_butir_kegiatan as abk', 'abk.id', '=', 'ap.id_butir_kegiatan')
            ->join('akr_butir_kegiatan_satuan as abks', 'abks.id', '=', 'abk.id_butir_kegiatan_satuan')
            ->whereRaw('is_primer=1 OR is_sekunder=1')
            ->get();

        if(Auth::user()->role->id != 1) {
            $data = $data->where('id_pegawai', Auth::user()->user_pegawai->id_pegawai);
        }

        return view('/angka-kredit/status-sp-pegawai', [
            'data' => $data
        ]);
    }

    public function getStatusSuratPerintah($status, $id)
    {
        $data = DB::table('akr_pegawai as ap')
            ->select(DB::raw('ap.*, sp.no_surat, p.nama'))
            ->join('pkpt_surat_perintah as sp', 'sp.id', '=', 'ap.id_surat_perintah')
            ->join('pgw_pegawai as p', 'p.id', '=', 'ap.id_pegawai')
            ->where('ap.id_pegawai', $id)
            ->get();
        
        if($status == 'primer') {
            $data = $data->where('is_primer', 1);
        }else if($status == 'sekunder') {
            $data = $data->where('is_sekunder', 1);
        }else{
            $data = $data->where('is_primer', 0)->where('is_sekunder', 0);
        }

        return response()->json($data);
    }

    public function status_sp_pegawai($status , $id)
    {
        $pegawai = Pegawai::findOrFail($id);
        $data = DB::table('akr_pegawai as ap')
            ->select(DB::raw('ap.*, sp.no_surat, p.nama'))
            ->join('pkpt_surat_perintah as sp', 'sp.id', '=', 'ap.id_surat_perintah')
            ->join('pgw_pegawai as p', 'p.id', '=', 'ap.id_pegawai')
            ->where('ap.id_pegawai', $id)
            ->get();
        
        if($status == 'primer') {
            $data = $data->where('is_primer', 1);
        }else if($status == 'sekunder') {
            $data = $data->where('is_sekunder', 1);
        }else{
            $data = $data->where('is_primer', 0)->where('is_sekunder', 0);
        }

        return view('angka-kredit.status-sp-pegawai-review',[
            'data' => $data,
            'status' => $status,
            'id'    => $id,
            'pegawai' => $pegawai
            ]);
    }
}
