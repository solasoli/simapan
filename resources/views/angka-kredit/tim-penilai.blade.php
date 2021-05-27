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
                    <td>Nama</td>
                    <td>NIP</td>
                    <td>Jabatan</td>
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

<script>
  $(function() {
    $("#data_table").DataTable({
      processing: true,
      serverSide: true,
      ajax: "{{ url('') }}/angka-kredit/tim-penilai",
      columns: [
        {data: 'nama', name: 'nama'},
        {data: 'nip', name: 'nip'},
        {data: 'jabatan', name: 'jabatan'},
        {data: 'aksi', name: 'aksi', orderable: false, searchable: false},
      ]
    })

  })
</script>
<script src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>

@endsection