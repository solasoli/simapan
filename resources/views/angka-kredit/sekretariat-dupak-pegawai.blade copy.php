@extends('layouts.app')
@section('content')
<div class="br-mainpanel" style="margin: 0px;">
  <div class="br-pagetitle">
   <div style="padding-top: 20px">
    <h5>Sekretariat Dupak</h5>
  </div>
</div>
<div class="modal fade" id="myModal">
  <div class="modal-dialog modal-lg">
    <div class="modal-content" style="width: 120%">

      <!-- Modal Header -->
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <table class="table table-bordered" style="border: 3px solid #dee2e6">
          <tr>
            <td>Data SP</td>
            <td>Unsur</td>
            <td>Sub Unsur</td>
            <td>Butir Kegiatan</td>
            <td>Hasil Perhitungan</td>
            <td>Satuan Hasil</td>
          </tr>
          <tr>
            <td width="20%">Sp : <br> tanggal : <br> Jumlah HP : <br>Jam : <br>Posisi : <br>Atasan :</td>
            <td width="16%"></td>
            <td width="16%"></td>
            <td width="16%"></td>
            <td width="16%"></td>
            <td width="16%"></td>
          </tr>
        </table>
        <div class="row">
          <div class="col-6">
            <button class="btn btn-default w-100 mb-1">Dokumen 1</button>
            <button class="btn btn-default w-100 mb-1">Dokumen 1</button>
            <button class="btn btn-default w-100">Dokumen 1</button>
          </div>
          <div class="col-3">
            <button class="btn btn-info w-50 mb-1">Unduh</button>
            <button class="btn btn-info w-50 mb-1">Unduh</button>
            <button class="btn btn-info w-50">Unduh</button>
          </div>
        </div>
      </div>


    </div>
  </div>
</div>
<div class="container">
<div class="row row-sm mg-t-20">
  <div class="col-lg-12">
    <div class="card bd-0 shadow-base" style="margin: 20px;margin-top:0px">

      <div class="br-pagebody">

      <style>
        .scrolltable {
          overflow: auto;
          white-space: nowrap;
        }

        .scrolltable a {
          display: inline-block;
          color: white;
          text-align: center;
          padding: 14px;
          text-decoration: none;
        }
      </style>

        <div class="row row-sm mg-t-20">
          <div class="col-lg-12">
            <!-- Tab panes -->
        <div class="tab-content scrolltable">
          <div class="row">
            <div class="col-md-12">
              <style>
                #table {
                  display: flex;
                  justify-content: space-between;
                }
                #filter {
                  display: flex;
                  align-items: center;
                  justify-content: space-around;
                }
              </style>
              <div id="table">
                <form id="filter" action="{{url('')}}/angka-kredit/sekretariat-dupak/" method="post">
                {{ csrf_field() }}
                    <input type="date" required class="form-control mr-2" name="dari">
                    <input type="date" required class="form-control mr-2" name="sampai">
                    <button type="submit" class="btn btn-secondary">Filter</button>
                </form>

                <form id="intersect" method="post">
                  @csrf
                  <input type="text" id="id_date_intersect" name="intersect[]" hidden>
                  <button type="submit" class="btn btn-success">Lihat SP beririsan</button>
                </form>
              </div>
            </div>
          </div>
          @if($message = Session::get('success_status_sp'))
          <div class="alert alert-success" id="flash-status-sp" role="alert">
            {{$message}}
          </div>
          @endif
          <table class="table table-striped table-bordered mt-2" style="border: 2px solid #dee2e6;">
            <tr class="text-dark">
              <td>Data SP</td>
              <td>Unsur</td>
              <td>Sub Unsur</td>
              <td>Butir Kegiatan</td>
              <td>Hasil Perhitungan</td>
              <td>Satuan Hasil</td>
              <td>Status</td>
              <td>Aksi</td>
            </tr>
              @foreach($data AS $val) 
              @php
              $dari = explode(' ', $val->dari);
              $sampai = explode(' ', $val->sampai);
              @endphp

            <tr>
              <td>Nama: {{$val->nama}}<br> Sp : {{$val->no_surat}}<br> tanggal : {{$dari[0]}} s/d {{$sampai[0]}}<br> Jumlah HP : {{$val->jumlah_hari}}<br>Jam : {{$val->jam}}<br>Posisi : {{$val->peran}}</td>
              <td>{{$val->unsur}}</td>
              <td>{{$val->sub_unsur}}</td>
              <td>{{$val->butir_kegiatan}}</td>
              
              <td>{{$val->angka_kredit}}</td>
              <td>{{$val->butir_kegiatan_satuan}}</td>
              @php
                if($val->is_primer == 1 && $val->is_sekunder == 0) {
                  $status = 'Primer';
                }else if($val->is_sekunder == 1 && $val->is_primer == 0) {
                  $status = 'Sekunder';
                }else {
                  $status = '-';
                }
              @endphp
              <td class="text-center text-info">{{$status}}</td>
              <td>
                <a href="#" data-toggle="modal" data-target="#myModal" class="btn btn-success btn-xs">Review</a>
                <a href="/angka-kredit/review-sekretariat-dupak/{{$val->id}}" class="btn btn-info btn-xs">Detail</a>
              </td>
            </tr>
            @endforeach
          </table>

        </div>
</div>
</div>
</div>
</div><!-- row -->

<br>
<br>
<br>

</div><!-- br-pagebody -->
</div>
</div>

@foreach($data as $val)
<!-- Modal status SP -->
<div class="modal fade" id="pemilihanSpModal{{$val->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <form action="{{url('')}}/angka-kredit/sekretariat-dupak/status-sp/{{$val->id}}" method="post">
      {{ csrf_field() }}
      <div class="modal-header">
        Status SP
      </div>
      <div class="modal-body">
        <div class="content px-5" style="width: 300px">
          <select name="pemilihanSp" id="pemilihanSp" class="form-control">
            <option value="p">Primer</option>
            <option value="s">Sekunder</option>
          </select>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" aria-label="Close">Batal</button>
        <button type="submit" class="btn btn-primary">Simpan</button>
      </div>
      </form>
    </div>
  </div>
</div>
@endforeach

<script>

  $(document).ready(() => {
    var id_pegawai = `{{$id_pegawai}}`
    // get date
    $.get('{{url("")}}/angka-kredit/sekretariat-dupak/get-match-date/' + id_pegawai, (res) => {

      // fungsi untuk mendapatkan range tanggal
      function getDates(startDate, endDate, interval) {
        const duration = endDate - startDate
        const steps = duration / interval

        return Array.from({length: steps + 1}, (v,i) => new Date(startDate.valueOf() + (interval * i)))
      }

      const dayInterval = 1000 * 60 * 60 * 24; // 1 day

      // fungsi untuk mendapatkan string date
      function getDateStr(data) {
        var date = []
        date = data.split(' ')
        date = date[0];
        date = date.split('-')
        date = date.join()

        return date;
      }

      var startDateStr = []
      var endDateStr = []
      // masukan range date kedalam array
      for(let i=0; i<res.length; i++) {
        startDateStr.push(getDateStr(res[i].dari))
        endDateStr.push(getDateStr(res[i].sampai))
      }

      // masukan seluruh array date kedalam array (array multi dimensi)
      var all_dates_array = []
      for(let i=0; i<endDateStr.length; i++) {
        all_dates_array.push(getDates(new Date(startDateStr[i]), new Date(endDateStr[i]), dayInterval))
      }

      // fungsi untuk mengecek apakah ada data yang sama pada array
      Array.prototype.diff = function(arr) {
        var ret = []
        this.sort()
        arr.sort()
        for(var i = 0; i < this.length; i += 1) {
            if(arr.indexOf(this[i]) > -1){
                ret.push(this[i])
            }
        }
        return ret
      };

      // memecah dan merubah (all_dates_array) menjadi string dan msukan kedalam array
      var data = []
      $.each(all_dates_array, idx => {
        
        var dates_array = []
        
        for(let i=0; i<all_dates_array[idx].length; i++) {
          dates_array.push(all_dates_array[idx][i].toString())
        }
        
        data.push(dates_array)
        delete(dates_array)
      })

      var id_intersect = [] // variable beririsan
      var id_noIntersect = [] // variable tidak beririsan
      var len = data.length
      // looping array luar
      $.each(data, idx => {
        // looping array dalam
        for(let i=0; i<len; i++) {
          // array tidak dibandingkan dengan id yang sama
          // cek apakah index sama
          if(idx != i) {
            //cek apakah ada data yang sama pada array
            if(data[idx].diff(data[i]).length > 0) {
              id_intersect.push(res[idx].id)
            }
          
          }
        
        }

      })
      
      // fungsi distinct data array
      function onlyUnique(value, index, self) {
        return self.indexOf(value) === index
      }

      var id_date_intersect = id_intersect.filter(onlyUnique)

      // masukan seluruh id date yang beririsan kedalam value input
      $('#id_date_intersect').attr('value', id_date_intersect)
      
      // ketika form di submit arahkan ke-n
      $('#intersect').submit(() => {
        $('#intersect').attr('action', '{{url("")}}/angka-kredit/sekretariat-dupak-beririsan/')
      })

    })

  })

  // fungsi timeout flash message
  setTimeout(() => $('#flash-status-sp').slideUp(300), 2000)

</script>

@endsection