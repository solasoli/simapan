@extends('layouts.app')
@section('content')

<style media="screen">
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
    <span class="breadcrumb-item active">Sekretariat Dupak</span>
  </nav>
</div>

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
                  <tr class="text-dark">
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
  $('#data_table').DataTable({
    processing: true,
    serverSide: true,
    ajax: '{{url("")}}/angka-kredit/sekretariat-dupak/get-pegawai-Jabatan',
    columns: [
      { data: 'nama', name: 'nama'},
      { data: 'nip', name: 'nip'},
      { data: 'jabatan', name: 'jabatan'},
      { data: 'aksi', name: 'aksi', searchable: true, orderable: true}
    ]
  })
})


  $(document).ready(() => {
    // get date
    $.get('{{url("")}}/angka-kredit/sekretariat-dupak/get-match-date', (res) => {

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
              console.log("id-"+ res[idx].id + ' => ' + data[idx].diff(data[i]).length)
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
        $('#intersect').attr('action', '{{url("")}}/angka-kredit/sekretariat-dupak-beririsan')
      })

    })

  })

  // fungsi timeout flash message
  setTimeout(() => $('#flash-status-sp').slideUp(300), 2000)

</script>
<script src="{{ asset('') }}admin_template/lib/datatables/jquery.dataTables.js"></script>
<script src="{{ asset('') }}admin_template/lib/datatables-responsive/dataTables.responsive.js"></script>

@endsection