@extends('layouts.app')
@section('content')
<div class="br-mainpanel" style="margin: 0px;">
  <div class="br-pagetitle">
   <div style="padding-top: 20px">
    <h5>Tim Penilai</h5>
  </div>
</div>

<style media="screen">
  .table th, .table td {
    white-space: nowrap;
  }

  .table-responsive {
    overflow-y: auto;
  }
  .modal-cus {
    position: fixed;
    background-color: rgba(0, 0, 0, .5);
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    display: none;
    overflow: hidden;
    justify-content:center;
    align-items: center;
    z-index: 99;
    box-shadow: 2px 2px 10px rgba(0, 0, 0, .8);
  }
  .modal-content {
    width: 350px;
    height: 300px;
    border: 0;
    background-color: #FFF;
    position: relative;
    min-height: 25px;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .close {
    position: absolute;
    top: 10px;
    right: 10px;
    cursor: pointer;
    z-index: 999 !important;
  }
  .modal-body {
    width: 100%;
    display: flex;
    justify-content: flex-start;
    flex-direction: column;
  }
  .table_info {
    width: 100%;
  }
</style>

<div class="br-pagebody">
  <div class="row">
    <div class="col-lg-12 widget-2 px-0">
      <div class="card shadow-base">
        <div class="card-header">
          <h6 class="card-title float-left">Daftar Pegawai</h6>
        </div>
        <div class="card-body">
          <div class="tab-pane" id="avail">              
            <div class="table-responsive">
              <table id="data_table" class="table table-striped table-bordered table-sm table-responsive">
                <thead>
                  <tr>
                    <td>Data SP</td>
                    <td>Unsur</td>
                    <td>Sub Unsur</td>
                    <td>Butir Kegiatan</td>
                    <td>Hasil Perhitungan</td>
                    <td>Satuan Hasil</td>
                    <td>Aksi</td>
                  </tr>
                </thead>
                <tbody>
                </tbody>         
              </table>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- modal -->
<div class="modal-cus">
  <div class="modal-content">
    <div class="close">
      <h4>&times;</h4>
    </div>
    <div class="modal-body">
      <span>
        <strong>Info SP</strong>
      </span>
      <hr>
      <div class="table_info">
        <table>
          <tr>
            <td>Nama</td>
            <td> &emsp; : &emsp; </td>
            <td id="nama"></td>
          </tr>
          <tr>
            <td>No.SP</td>
            <td> &emsp; : &emsp; </td>
            <td id="no_sp"></td>
          </tr>
          <tr>
            <td>Tanggal</td>
            <td> &emsp; : &emsp; </td>
            <td id="tanggal"></td>
          </tr>
          <tr>
            <td>Jumlah HP</td>
            <td> &emsp; : &emsp; </td>
            <td id="hp"></td>
          </tr>
          <tr>
            <td>Jam</td>
            <td> &emsp; : &emsp; </td>
            <td id="jam"></td>
          </tr>
          <tr>
            <td>Posisi</td>
            <td> &emsp; : &emsp; </td>
            <td id="posisi"></td>
          </tr>
        </table>
      </div>
    </div>
  </div>
</div>

<script>
  $(function() {
    var id = `{{$id_pegawai}}`
    $("#data_table").DataTable({
      processing: true,
      serverSide: true,
      ajax: "{{ url('') }}/angka-kredit/getSpPegawai/" + id,
      columns: [
        {data: 'no_sp', name: 'no_sp'},
        {data: 'unsur', name: 'unsur'},
        {data: 'sub_unsur', name: 'sub_unsur'},
        {data: 'butir_kegiatan', name: 'butir_kegiatan'},
        {data: 'angka_kredit', name: 'angka_kredit'},
        {data: 'satuan', name: 'satuan'},
        {data: 'aksi', name: 'aksi', orderable: false, searchable: false},
      ]
    })
  })

  var show_modal = function() {

    $('.modal-cus').css('display', 'flex')
    
    $(document).click((e) => {
      var id = e.target.className
      id = id.split(" ")
      id = id[id.length - 1]
      
      if(id.length <= 1) {
        $.ajax({

          url: `{{url("")}}/angka-kredit/sekretariat-dupak/surat-perintah-pegawai/get-info-sp/${id}`, 
          success: res => {

            $.each(res, (idx, val) => {

              var dari = val.dari.split(" ")
              var sampai = val.sampai.split(" ")
              
              $('#nama').html(val.nama)
              $('#no_sp').html(val.no_surat)
              $('#tanggal').html(dari[0] + ' s/d ' + sampai[0])
              $('#hp').html(val.jumlah_hari)
              $('#jam').html(val.jam)
              $('#posisi').html(val.peran)

            })

          }

        })
      }

    })

  }


  $('.close').click(() => {
    $('.modal-cus').css('display', 'none')
  })
  $(document).click((e) => {
    if(e.target.className == 'modal-cus') {
    $('.modal-cus').css('display', 'none')
    }
  })
</script>
<script src="{{ asset('') }}admin_template/lib/datatables/jquery.dataTables.js"></script>
<script src="{{ asset('') }}admin_template/lib/datatables-responsive/dataTables.responsive.js"></script>

@endsection