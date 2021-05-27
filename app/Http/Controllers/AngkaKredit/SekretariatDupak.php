<?php

namespace App\Http\Controllers\AngkaKredit;

use App\Http\Controllers\Controller;
use App\Repository\AngkaKredit\AkrPegawai;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Auth;
use Yajra\DataTables\Facades\DataTables;

class SekretariatDupak extends Controller
{
    public function index() {
        return view('/angka-kredit/sekretariat-dupak');
    }

    public function getPegawaiJabatan()
    {
        $data = DB::table('pgw_pegawai AS p')
            ->select(DB::raw('p.id, p.nama, p.nip, j.id as id_jabatan, j.name as jabatan'))
            ->join('pgw_jabatan as j', 'p.id_jabatan', '=', 'j.id')
            ->where('p.is_deleted', 0)
            ->orderBy('p.id', 'DESC')
            ->get();
        
        return DataTables::of($data)
        ->addColumn('aksi', function($data) {
            $button = '<a href="/angka-kredit/sekretariat-dupak/surat-perintah-pegawai/'. $data->id .'" class="btn btn-info btn-sm">Detail SP</a>';
            return $button;
        })
        ->rawColumns(['aksi'])
        ->make(true);
    }

    public function suratPerintahPegawai(Request $request, $id)
    {
        $data = DB::table('akr_pegawai AS ap')
            ->select(DB::raw('ap.*, sp.no_surat, p.nama, au.nama as unsur, abk.nama as butir_kegiatan, abks.nama as butir_kegiatan_satuan, asu.nama as sub_unsur'))
            ->join('pkpt_surat_perintah AS sp', 'sp.id', '=', 'ap.id_surat_perintah')
            ->join('pgw_pegawai as p', 'p.id', '=', 'ap.id_pegawai')
            ->join('akr_sub_unsur as asu', 'asu.id', '=', 'ap.id_sub_unsur')
            ->join('akr_unsur as au', 'au.id', '=', 'asu.id_unsur')
            ->join('akr_butir_kegiatan as abk', 'abk.id', '=', 'ap.id_butir_kegiatan')
            ->join('akr_butir_kegiatan_satuan as abks', 'abks.id', '=', 'abk.id_butir_kegiatan_satuan')
            ->where('p.id', $id)
            ->orderBy('ap.id', 'ASC')
            ->get();

        $date = DB::table('akr_pegawai')
            ->selectRaw('id, dari, sampai')
            ->get();

        // request search (filter tanggal)
        $dari = $request->dari;
        $sampai = $request->sampai;

        if ($dari != null && $sampai != null) {
            $data = $data->whereBetween('ap.dari', [$dari, $sampai]);
        }

        return view('/angka-kredit/sekretariat-dupak-pegawai', [
            'data' => $data,
            'date' => $date,
            'id_pegawai' => $id
        ]);
    }

    public function getMatchDate($id)
    {
        $date = DB::table('akr_pegawai')
            ->selectRaw('id, dari, sampai')
            ->where('id_pegawai', $id)
            ->get();

        return response()->json($date);
    }

    public function statusSp(Request $request, $id)
    {
        $data = AkrPegawai::find($id);
        $id_pegawai = $data->id_pegawai;

        if ($request->pemilihanSp == 's') {
            $changeS = AkrPegawai::where('id_pegawai', $id_pegawai)
                ->where('is_sekunder', 1)
                ->update(['is_sekunder' => 0]);
                
            if($changeS) {
                $pegawai = AkrPegawai::find($id);
                $pegawai->is_sekunder = 1;
                $pegawai->is_primer = 0;
                $pegawai->save();
            }

        } else if ($request->pemilihanSp == 'p') {
            $changeP = AkrPegawai::where('id_pegawai', $id_pegawai)
                ->where('is_primer', 1)
                ->update(['is_primer' => 0]);
            
            if($changeP) {
                $pegawai = AkrPegawai::find($id);
                $pegawai->is_primer = 1;
                $pegawai->is_sekunder = 0;
                $pegawai->save();
            }
        }

        return redirect('/angka-kredit/sekretariat-dupak/surat-perintah-pegawai/' . $id_pegawai)
                ->with(['success_status_sp' => 'Status berhasil ditetapkan']);
    }

    public function get_date_intersect(Request $request)
    {
        $id_intersect =  $request->intersect;
        $id_noIntersect =  $request->noIntersect;

        $id_intersect = explode(',', $id_intersect[0]);
        $id_noIntersect = explode(',', $id_noIntersect[0]);

        $data_intersect = array();
        foreach ($id_intersect as $val) {
            $data = DB::table('akr_pegawai AS ap')
                ->select(DB::raw('ap.*, sp.no_surat, p.nama, au.nama as unsur, abk.nama as butir_kegiatan, abks.nama as butir_kegiatan_satuan, asu.nama as sub_unsur'))
                ->join('pkpt_surat_perintah AS sp', 'sp.id', '=', 'ap.id_surat_perintah')
                ->join('pgw_pegawai as p', 'p.id', '=', 'ap.id_pegawai')
                ->join('akr_sub_unsur as asu', 'asu.id', '=', 'ap.id_sub_unsur')
                ->join('akr_unsur as au', 'au.id', '=', 'asu.id_unsur')
                ->join('akr_butir_kegiatan as abk', 'abk.id', '=', 'ap.id_butir_kegiatan')
                ->join('akr_butir_kegiatan_satuan as abks', 'abks.id', '=', 'abk.id_butir_kegiatan_satuan')
                ->where('ap.id', $val)
                ->get();

            array_push($data_intersect, $data);
        }

        $data_noIntersect = array();
        foreach ($id_noIntersect as $val) {
            $data = DB::table('akr_pegawai AS ap')
                ->select(DB::raw('ap.*, sp.no_surat, p.nama, au.nama as unsur, abk.nama as butir_kegiatan, abks.nama as butir_kegiatan_satuan, asu.nama as sub_unsur'))
                ->join('pkpt_surat_perintah AS sp', 'sp.id', '=', 'ap.id_surat_perintah')
                ->join('pgw_pegawai as p', 'p.id', '=', 'ap.id_pegawai')
                ->join('akr_sub_unsur as asu', 'asu.id', '=', 'ap.id_sub_unsur')
                ->join('akr_unsur as au', 'au.id', '=', 'asu.id_unsur')
                ->join('akr_butir_kegiatan as abk', 'abk.id', '=', 'ap.id_butir_kegiatan')
                ->join('akr_butir_kegiatan_satuan as abks', 'abks.id', '=', 'abk.id_butir_kegiatan_satuan')
                ->where('ap.id', $val)
                ->get();

            array_push($data_noIntersect, $data);
        }

        $beririsan = array();
        if($id_intersect[0] > 0) {
            foreach ($data_intersect as $idx => $val) {
                array_push($beririsan, $val[0], );
            }
        }

        $tidak_beririsan = array();
        if($id_noIntersect[0] > 0) {
            foreach ($data_noIntersect as $idx => $val) {
                array_push($tidak_beririsan, $val[0], );
            }
        }

        return view('/angka-kredit/sekretariat-dupak-beririsan', [
            'data_beririsan' => $beririsan,
            'data_tidak_beririsan' => $tidak_beririsan,
            'id_beririsan' => $id_intersect
        ]);
    }

    public function getMatchDateStatus()
    {
        if (Auth::user()->role->id != 1) {
            $date = DB::table('akr_pegawai')
                ->select('*')
                ->where('id_pegawai', Auth::user()->user_pegawai->id_pegawai)
                ->get();
        }else {
            $date = DB::table('akr_pegawai')
                ->select('*')
                ->get();
        }

        return response()->json($date);
    }

    public function status_sp_pegawai($id)
    {
        return view('/angka-kredit/sekretariat-dupak/status_sp', [
            'id_pegawai' => $id
        ]);
    }

    public function getStatusTanggalSp($date)
    {
        $id_date = $date;
        $id_date = explode(',', $id_date);

        foreach($id_date as $val) {
            $data = DB::table('akr_pegawai as ap')
                ->selectRaw('ap.id_pegawai, ap.id, ap.dari, ap.sampai, ap.angka_kredit, ap.peran, j.name as jabatan, ap.jam, sp.no_surat, bk.angka_kredit as bk')
                ->join('pkpt_surat_perintah as sp', 'sp.id', '=', 'ap.id_surat_perintah')
                ->join('akr_butir_kegiatan as bk', 'bk.id', '=', 'ap.id_butir_kegiatan')
                ->join('pgw_pegawai as p', 'p.id', '=', 'ap.id_pegawai')
                ->join('pgw_jabatan as j', 'j.id', '=', 'p.id_jabatan')
                ->where(function($query) use ($id_date) {
                    for($i = 0; $i < count($id_date); $i++) {
                        $query->orWhere('ap.id', $id_date[$i]);
                    }
                })
                ->orderBy('ap.dari', 'ASC')
                ->get();
        }

        return response()->json($data);
    }

    public function status_tanggal_sp(Request $request)
    {
        $id_date = $request->tanggal_beririsan;
       
        return view('/angka-kredit/sekretariat-dupak-status-tanggal-sp', [
            'date' => $id_date
        ]);
    }

    public function update(Request $request, $id)
    {
        $data = explode(",", $request->angker[0]);
        $get_pegawai = AkrPegawai::select('id')->where('id_pegawai', $id)->get();

        foreach($data as $val) {
            $pecah = explode('-', $val);
            DB::table('akr_pegawai as ap')
            ->where('ap.id', $pecah[1])
            ->update(['angka_kredit' => $pecah[0]]);
        }
        
        return redirect()->back()
            ->with(['success' => 'Angka kredit berhasil diubah']);
    }
}