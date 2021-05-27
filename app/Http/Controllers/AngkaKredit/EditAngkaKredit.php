<?php

namespace App\Http\Controllers\AngkaKredit;

use App\Repository\AngkaKredit\AkrPegawai;
use App\Http\Controllers\Controller;
use App\Repository\AngkaKredit\AkrPegawaiData;
use App\Repository\AngkaKredit\ButirKegiatanSatuan;
use App\Repository\AngkaKredit\SubUnsur;
use App\Repository\AngkaKredit\Unsur;
use App\Repository\Master\Sasaran;
use App\Repository\Pegawai\Pegawai;
use App\Repository\SuratPerintah\SuratPerintah;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
use Yajra\DataTables\Facades\DataTables;

class EditAngkaKredit extends Controller{
    public function index($id_sp, $id, $no_surat, $peran)
    {
        $no_surat = explode('-', $no_surat);
        $no_surat = implode('/', $no_surat);

        $pegawai = Pegawai::where('id', $id)->get();
        $jabatan = Pegawai::find($id)->jabatan;
        $unsur = Unsur::all();
        $data_sp = DB::table('pkpt_surat_perintah AS sp')
            ->selectRaw('DATEDIFF(sp.sampai, sp.dari) AS hp, sp.dari, sp.sampai, pk.sasaran')
            ->join('mst_program_kerja as pk', 'pk.id', '=', 'sp.id_program_kerja')
            ->where('sp.no_surat', $no_surat)
            ->get();

        return view('/angka-kredit/edit-angka-kredit', [
            'pegawai' => $pegawai,
            'jabatan' => $jabatan,
            'unsur' => $unsur,
            'no_surat' => $no_surat,
            'data_sp' => $data_sp,
            'peran' => $peran,
            'id_sp' => $id_sp
        ]);

    }

    public function getSubUnsur($id)
    {
        $sub_unsur = SubUnsur::where('id_unsur', $id)->get();

        return response()->json([$sub_unsur]);
    }

    public function getButirKegiatan($id)
    {
        $butir_kegiatan = SubUnsur::find($id)->butir_kegiatan;

        return response()->json($butir_kegiatan);
    }

    public function satuan($id)
    {
        $satuan = ButirKegiatanSatuan::where('id', $id)->get();

        return response()->json($satuan);
    }

    public function angkaKredit($id)
    {
        $angkaKredit = AkrPegawai::where('id_surat_perintah', $id)
            ->selectRaw('angka_kredit')
            ->get();

        return response()->json($angkaKredit);
    }

    public function store(Request $request, $id_sp)
    {
        $akr_pegawai = AkrPegawai::create([
            'id_surat_perintah' => $request->id_surat_perintah,
            'id_pegawai' => $request->id_pegawai,
            'peran' => $request->peran,
            'id_sub_unsur' => $request->sub_unsur,
            'id_butir_kegiatan' => $request->id_butir_kegiatan,
            'jumlah_hari' => $request->jumlah_hari,
            'angka_kredit' => $request->angka_kredit,
            'jam' => $request->jam,
            'dari' => $request->dari,
            'sampai' => $request->sampai
        ]);

        $document = $request->file('document');
        if($request->hasFile('document')) {
            foreach($document as $file) {
                $fileName = $file->getClientOriginalName();
                $fileExt = $file->getClientOriginalExtension();
                $extAllowed = array('pdf', 'docx', 'xls', 'xlsx', 'doc');

                // validasi extensi file
                if(in_array($fileExt, $extAllowed)) {

                    // validasi ukuran file
                    $fileSize = $file->getClientSize();
                    if($fileSize < 16777216) {
                        // pindahkan file ke directory (/document/kredit)
                        $numRand = random_int(1, 9999);
                        $file->move(base_path('/document/angka-kredit'), $numRand.$akr_pegawai['id'].'_'.$fileName);

                        AkrPegawaiData::create([
                            'document' => $numRand.$akr_pegawai['id'].'_'.$fileName,
                            'id_akr_pegawai' => $akr_pegawai['id']
                        ]);

                    }else {
                        return Redirect::back()->with(['errorSize' => 'Ukuran file terlalu besar!']);
                    }
                }else {
                    return Redirect::back()->with(['errorEXT' => 'Extensi file tidak diperbolehkan!']);
                }
            }
        }

        return redirect('/angka-kredit/table-auditor-angka-kredit/'.$id_sp)
            ->with(['successStore' => 'Angka kredit berhasil di tambahkan']);
    }

    public function list_data_editTables($id)
    {
        $data = DB::table('akr_pegawai AS ap')
            ->select(DB::raw('ap.*, sp.no_surat, p.nama, au.nama as unsur, abk.nama as butir_kegiatan, jb.name as jabatan'))
            ->join('pkpt_surat_perintah AS sp', 'ap.id_surat_perintah', '=', 'sp.id')
            ->join('pgw_pegawai AS p', 'p.id', '=', 'ap.id_pegawai')
            ->join('akr_sub_unsur as asu', 'asu.id', '=', 'ap.id_sub_unsur')
            ->join('akr_unsur as au', 'au.id', '=', 'asu.id_unsur')
            ->join('akr_butir_kegiatan as abk', 'abk.id', '=', 'ap.id_butir_kegiatan')
            ->join('pgw_jabatan as jb', 'jb.id', '=', 'p.id_jabatan')
            ->where('sp.is_deleted', 0)
            ->where('sp.id', $id)
            ->get();

        return DataTables::of($data)
            ->addColumn('aksi', function($data) {
                $button = '<a href="/angka-kredit/table-auditor-angka-kredit/form_edit/'. $data->id .'" class="btn btn-warning btn-sm mr-1">Edit Angka Kredit</a>';
                $button .= '<a href="'. $data->id .'" class="btn btn-info btn-sm">Detail</a>';
                return $button;
            })
            ->rawColumns(['aksi'])
            ->make(true);
    }

    public function edit($id) {
        return view('/angka-kredit/table-auditor-angka-kredit-edit', [
            'id' => $id
        ]);
    }

    public function form_edit($id)
    {
        $data = DB::table('akr_pegawai AS ap')
            ->select(DB::raw('ap.*, sp.no_surat, p.nama, au.nama as unsur, au.id as id_unsur, jb.name as jabatan, ap.peran, p.nip, bks.nama as butir_kegiatan_satuan'))
            ->join('pkpt_surat_perintah as sp', 'sp.id', '=', 'ap.id_surat_perintah')
            ->join('pgw_pegawai as p', 'p.id', '=', 'ap.id_pegawai')
            ->join('akr_sub_unsur as asu', 'asu.id', '=', 'ap.id_sub_unsur')
            ->join('akr_unsur as au', 'au.id', '=', 'asu.id_unsur')
            ->join('pgw_jabatan as jb', 'jb.id', '=', 'p.id_jabatan')
            ->join('akr_butir_kegiatan as abk', 'abk.id', '=', 'ap.id_butir_kegiatan')
            ->join('akr_butir_kegiatan_satuan as bks', 'bks.id', '=', 'abk.id_butir_kegiatan_satuan')
            ->where('ap.id', $id)
            ->where('sp.is_deleted', 0)
            ->get();

        $unsur = Unsur::all();

        return  view('angka-kredit/form_edit', [
            'data' => $data,
            'unsur' => $unsur
        ]);
    }

    public function update(Request $request, $id)
    {
        $akr_pegawai = AkrPegawai::find($id);
        $akr_pegawai->id_surat_perintah = $request->id_surat_perintah;
        $akr_pegawai->id_pegawai = $request->id_pegawai;
        $akr_pegawai->peran = $request->peran;
        $akr_pegawai->id_sub_unsur = $request->sub_unsur;
        $akr_pegawai->id_butir_kegiatan = $request->id_butir_kegiatan;
        $akr_pegawai->jumlah_hari = $request->jumlah_hari;
        $akr_pegawai->jam = $request->jam;
        $akr_pegawai->angka_kredit = $request->angka_kredit;
        $akr_pegawai->save();

        $numRand = random_int(1, 9999);

        $document = $request->file('document');
        if($request->hasFile('document')) {
            foreach ($document as $file) {
                $fileName = $file->getClientOriginalName();
                $fileExt = $file->getClientOriginalExtension();
                $extAllowed = array('pdf', 'docx', 'xls', 'xlsx', 'doc');

                // validasi file ext
                if(in_array($fileExt, $extAllowed)) {

                    $fileSize = $file->getClientSize();

                    // validasi file size
                    if($fileSize < 16777216) {

                        // cek jika user sebelumnya telah upload file
                        $akr_pegawai_data = AkrPegawaiData::where('id_akr_pegawai', $id)->get();
                        foreach($akr_pegawai_data as $val):
                            if($val->id > 0) {
                                if(file_exists(base_path('/document/angka-kredit/' . $val->document))) {
                                    unlink(base_path('/document/angka-kredit/' . $val->document));
                                }
                                // pindahkan file baru ke directory (/document/kredit)
                                $file->move(base_path('/document/angka-kredit'), $numRand.$id.'_'.$fileName);
                                $akr_pegawai_data = AkrPegawaiData::find($val->id);
                                $akr_pegawai_data->document = $numRand.$id.'_'.$fileName;
                                $akr_pegawai_data->save();

                                return redirect()
                                    ->back()
                                    ->with(['successUpdate' => 'Angka kredit berhasil di edit']);
                            }
                        endforeach;

                        $file->move(base_path('/document/angka-kredit'), $numRand.$id.'_'.$fileName);
                        AkrPegawaiData::create([
                            'document' => $numRand.$id.'_'.$fileName,
                            'id_akr_pegawai' => $id
                        ]);

                    }else {
                        return Redirect::back()->with(['errorSize' => 'Ukuran file terlalu besar!']);
                    }

                }else {
                    return Redirect::back()->with(['errorEXT' => 'Extensi file tidak diperbolehkan!']);
                }

            }

        }

        return redirect()->back()
            ->with(['successUpdate' => 'Angka kredit berhasil di edit']);
    }
}
