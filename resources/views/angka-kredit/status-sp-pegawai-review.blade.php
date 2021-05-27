@extends('layouts.app')
@section('content')
<style media="screen">
.modal-lg {
    width: 750px !important;
}

.table th,
.table td {
    white-space: nowrap;
}

.table-responsive {
    overflow-y: auto;
}
</style>
<div class="br-pageheader pd-y-15 pd-l-20">
    <nav class="breadcrumb pd-0 mg-0 tx-12">
        <a class="breadcrumb-item" href="/">Dashboard</a>
        <a class="breadcrumb-item" href="#">Angka Kredit</a>
        <span class="breadcrumb-item active">Status Surat Perintah</span>
    </nav>
</div>

<div class="br-pagebody">
  <div class="row">
    <div class="col-sm-6 mb-4">
        <h4>Status Surat Perintah</h4>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-12 widget-2 px-0">
      <div class="card shadow-base">
        <div class="card-header">
          <h6 class="card-title float-left">{{$pegawai->nama}}</h6>
        </div>
        <div class="card-body">
          <div class="tab-pane" id="avail">              
            <div class="table-responsive">
                <table id="datatable" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>
                            <th>No SP</th>
                            <th>Tanggal</th>
                            <th>Jumlah HP</th>
                            <th>Jam</th>
                            <th>Posisi</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data as $item)
                        @php
                            $dari = explode(' ', $item->dari);
                            $sampai = explode(' ', $item->sampai);
                            
                        @endphp
                        <tr>
                            <td>{{$item->no_surat}}</td>
                            <td>{{$dari[0]}} <strong> s.d </strong> {{$sampai[0]}} </td>
                            <td>{{$item->jumlah_hari}}</td>
                            <td>{{$item->jam}}</td>
                            <td>{{$item->peran}}</td>
                            <td>{{$status}}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script>
    $(document).ready(function() {
        $('#datatable').DataTable();
}    );
// fungsi timeout flash mes
setTimeout(() => $('#flash-status-sp').slideUp(300), 2000)
</script>
<script src="{{ asset('') }}admin_template/lib/datatables/jquery.dataTables.js"></script>
<script src="{{ asset('') }}admin_template/lib/datatables-responsive/dataTables.responsive.js"></script>

@endsection