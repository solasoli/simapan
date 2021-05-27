@extends('layouts.app')
@section('content')


<div class="br-pageheader pd-y-15 pd-l-20">
  <nav class="breadcrumb pd-0 mg-0 tx-12">
    <a class="breadcrumb-item" href="/">Dashboard</a>
    <a class="breadcrumb-item" href="#">Angka Kredit</a>
    <span class="breadcrumb-item active">Perhitungan Angka Kredit</span>
  </nav>
</div>

<div class="pd-x-20 pd-sm-x-30 pd-t-20 pd-sm-t-30">
  <h4 class="tx-gray-800 mg-b-5">Perhitungan Angka Kredit</h4>
</div>

<div class="br-pagebody">
    <div class="row">
        <div class="col-lg-12 widget-2 px-0">
            <div class="card shadow-base">
                <div class="card-header">
                    <h6 class="card-title float-left py-3">Data angka kredit</h6>
                    <span>No. Surat Perintah : </span>
                </div>
                <div class="card-body">
                    <div class="tab-pane fade active show" id="not_approved">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped responsive" id="userTable" style="width:100%">
                                <thead>
                                    <tr>
                                        <th width="190">Nama</th>
                                        <th width="190">Jabatan</th>
                                        <th width="190">Posisi Dalam Tim</th>
                                        <th style='width:150px'>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
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
$(() => {
    setTimeout(function() {
        $('#userTable').DataTable({
            processing: true,
            serverSide: true,
            ajax: "{{url('')}}/angka-kredit/table-auditor-angka-kredit/list_data_editTables/{{$id}}", 
            columns: [ 
                { data:'nama', name:'nama'},
                { data:'jabatan', name: 'jabatan'},
                { data: 'peran', name: 'peran'},
                { data: 'aksi', name: 'aksi', orderable: false,  searchable: false}
            ]
        });
    }, 100);
});
</script>

<script src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>

@endsection