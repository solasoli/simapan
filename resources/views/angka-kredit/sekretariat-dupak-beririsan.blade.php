@extends('layouts.app')
@section('content')
<style media="screen">
  .modal-lg{
    width: 750px !important;
  }
  .table th, .table td {
    white-space: nowrap;
  }

  .table-responsive {
    overflow-y: auto;
  }
</style>
<div class="br-pageheader pd-y-15 pd-l-20">
  <nav class="breadcrumb pd-0 mg-0 tx-12">
    <a class="breadcrumb-item" href="/">Dashboard</a>
    <a class="breadcrumb-item" href="#">PKPT</a>
    <span class="breadcrumb-item active">Status Surat Perintah</span>
  </nav>
</div>

<div class="pd-x-20 pd-sm-x-30 pd-t-20 pd-sm-t-30">
  <div class="row">
    <div class="col-6">
      <h4 class="tx-gray-800 mg-b-5">Status Surat Perintah</h4>
    </div>
  </div>
</div>

{{-- Modal pilihan  --}}
<div class="modal" id="modal_pilihan">
  <div class="modal-dialog modal-lg col-md-6" style="min-width: 600px">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Print Program Kerja Pengawasan</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <form class="form-layout form-layout-5">
          <div class="form-group row">
            <label class="form-control-label col-md-3 col-sm-3 col-xs-12">
              Untuk <span class="required">*</span> :
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select id='tahun_print' class="form-control">
                <option value='0'>Tidak Beririsan</option>
                <option value='1'>Beririsan</option>
              </select>
            </div>
          </div>
          <div class="form-group row mt-4 d-flex justify-content-center">
            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
              <button type="button" class="btn btn-primary confirm-print"></button>
            </div>
          </div>
        </form>
      </div>

    </div>
  </div>
</div>


<div class="br-pagebody">
  @if(Session::has('success'))
  <div class="row">
    <div class="alert alert-success col-lg-12">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
      <div class="d-flex align-items-center justify-content-start">
        <span>{!! Session::get('success') !!}</span>
      </div>
    </div>
  </div>
  @endif

  <div class="row">
    <div class="col-lg-12 widget-2 px-0">
      <div class="card shadow-base">
        <div class="card-header">
          
          <div class="float-right">
          </div>
        </div>
        <div class="card-body">


          <ul class="nav nav-tabs nav-justified mb-4">
            <li class="nav-item"><a href="#not_avail" class="nav-link rounded-top font-weight-bold active show" data-toggle="tab">Tidak Beririsan</a></li>
            <li class="nav-item"><a href="#avail" class="nav-link rounded-top font-weight-bold" data-toggle="tab">Beririsan</a></li>
          </ul>

          <div class="tab-content">

            <div class="tab-pane fade active show" id="not_avail">
              <div class="table-responsive">
                <table class="table table-bordered table-striped responsive" id="oTable" style="width:100%">
                  <thead>
                    <tr>
                      <th>No. SP</th>
                      <th>unsur</th>
                      <th>butir kegiatan</th>
                      <th>satuan</th>
                      <th>sub unsur</th>
                    </tr>
                  </thead>
                @foreach($data_tidak_beririsan as $val)
                  <tbody>
                    <tr>
                        <td>{{$val->no_surat}}</td>
                        <td>{{$val->unsur}}</td>
                        <td>{{$val->butir_kegiatan}}</td>
                        <td>{{$val->butir_kegiatan_satuan}}</td>
                        <td>{{$val->sub_unsur}}</td>
                    </tr>
                  </tbody>
                @endforeach
                </table>
              </div>
            </div>

            <div class="tab-pane fade" id="avail">              
              <div class="table-responsive">
              <form action="{{url('')}}/angka-kredit/sekretariat-dupak/status-tanggal-sp/">
                @php
                  $date = implode(',', $id_beririsan)
                @endphp
                <input type="text" name="tanggal_beririsan" value="{{$date}}" hidden>
                <button type="submit" class="btn btn-info btn-sm mb-3">Pilih Status Surat Perintah</button>
              </form>
                <table class="table table-bordered table-striped responsive" id="oTableAvail" style="width:100%">
                <thead>
                    <tr>
                      <th>No. SP</th>
                      <th>unsur</th>
                      <th>butir kegiatan</th>
                      <th>satuan</th>
                      <th>sub unsur</th>
                    </tr>
                  </thead>
                @foreach($data_beririsan as $val)
                  <tbody>
                    <tr>
                        <td>{{$val->no_surat}}</td>
                        <td>{{$val->unsur}}</td>
                        <td>{{$val->butir_kegiatan}}</td>
                        <td>{{$val->butir_kegiatan_satuan}}</td>
                        <td>{{$val->sub_unsur}}</td>
                    </tr>
                  </tbody>
                  @endforeach
                </table>
              </div>
            </div>

          </div>


        </div>
      </div>
    </div>
  </div>

<!-- modal add -->
@include('pkpt.penomeran_surat-form')

@endsection

@section('scripts')
<!-- Datatables -->
<script>
    $(() => {
        $('#oTableAvail').DataTable({
            responsive: true,
            searchable : true
        });

        $('#oTable').DataTable({
            responsive: true,
            searchable : true
        });
    })
</script>
<script src="{{ asset('admin_template/lib/datatables/jquery.dataTables.js') }}">
</script>
@endsection
