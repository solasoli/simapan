@extends('layouts.app')
@section('content')
<div class="br-mainpanel" style="margin: 0px;">
  <div class="br-pagetitle">
   <div style="padding-top: 20px">
    <h5>Review Tim Penilai</h5>
  </div>
</div>


<div class="row row-sm mg-t-20">
  <div class="col-lg-12">
    <div class="card bd-0 shadow-base" style="margin: 20px;margin-top:0px">
    @foreach ($data as $idx => $val)
     <div class="br-pagebody">
      <div class="row">
        <div class="col-6">
          <div class="tab-content">
            <table class="table table-borderless">
              <tr>
                <td width="15%">Nama</td>
                <td width="5%">:</td>
                <td width="80%">{{$val->nama}}</td>
              </tr>
              <tr>
                <td>NIP</td>
                <td>:</td>
                <td>{{$val->nip}}</td>
              </tr>
              <tr>
                <td>Jabatan</td>
                <td>:</td>
                <td>{{$val->jabatan}}</td>
              </tr>
            </table>

          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-6">
          <label class="btn btn-default w-100">Pilih Unsur</label>
          <input type="text" disabled class="form-control" value="{{$val->unsur}}">

          <label class="btn btn-default w-100" style="margin-top: 15px">Pilih Sub Unsur</label>
          <input type="text" disabled class="form-control" value="{{$val->sub_unsur}}">

          <label class="btn btn-default w-100" style="margin-top: 15px">Pilih Butr Kegiatan</label>
          <input type="text" disabled class="form-control" value="{{$val->butir_kegiatan}}">

          <label class="btn btn-default w-100" style="margin-top: 15px">Angka Kredit</label>
          <input type="text" disabled class="form-control" value="{{$val->angka_kredit}}">

          <label class="btn btn-default w-100" style="margin-top: 15px">Satuan Hasil</label>
          <input type="text" disabled class="form-control" value="{{$val->satuan}}">
          <br>
        </div>
        <div class="col-6">
          <button class="btn btn-default w-100">Data SP</button>
          <table class="table table-borderless" style="border: 5px solid #efefef">
            <tr>
              <td width="20%">SP</td>
              <td width="5%">:</td>
              <td width="75%">{{$val->no_surat}}</td>
            </tr>
            @php
              $dari = explode(' ', $val->dari);
              $sampai = explode(' ', $val->sampai);
            @endphp
            <tr>
              <td>Tanggal</td>
              <td>:</td>
              <td>{{$dari[0]}} s/d {{$sampai[0]}}</td>
            </tr>
            <tr>
              <td>Jumlah HP</td>
              <td>:</td>
              <td>{{$val->jumlah_hari}}</td>
            </tr>
            <tr>
              <td>Jam</td>
              <td>:</td>
              <td>{{$val->jam}}</td>
            </tr>
            <tr>
              <td>Posisi</td>
              <td>:</td>
              <td>{{$val->peran}}</td>
            </tr>
            <tr>
              <td>Atasan</td>
              <td>:</td>
              <td></td>
            </tr>

          </table>

          <button class="btn btn-default w-100">Revisi / Masukan</button>
          <textarea rows="4" class="form-control"></textarea>
          <br>
          <div class="row">
            <div class="col-6">
              <a href="pejabat_pengusul.html"><button class="btn btn-danger w-100">Revisi</button></a>
            </div>
            <div class="col-6">
              <a href="pejabat_pengusul.html"><button class="btn btn-success w-100">Approve</button></a>
            </div>
          </div>
          <br>
          <br>
        </div>
      </div>
    </div>
    @endforeach


  </div><!-- row -->

  <br>


  <br>


  <br>


</div><!-- br-pagebody -->
@endsection