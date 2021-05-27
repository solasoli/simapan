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
                    <td>Surat Perintah</td>
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
$(document).ready(() => {

    $('#data_table').DataTable({
        serverSide: true,
        processing: true,
        ajax: '{{url("")}}/angka-kredit/status-sp/get-pegawai',
        columns: [
            { data: 'nama', name: 'nama'},
            { data: 'nip', name: 'nip'},
            { data: 'jabatan', name: 'jabatan'},
            { data: 'aksi', name: 'aksi', searchable: true, orderable: true}
        ]
    })

    // get date
    $.get('{{url("")}}/angka-kredit/sekretariat-dupak/get-match-date-status', (res) => {
        // fungsi untuk mendapatkan range tanggal
        function getDates(startDate, endDate, interval) {
            const duration = endDate - startDate
            const steps = duration / interval

            return Array.from({
                length: steps + 1
            }, (v, i) => new Date(startDate.valueOf() + (interval * i)))
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

        var startDateStrSekunder = []
        var endDateStrSekunder = []
        var startDateStrPrimer = []
        var endDateStrPrimer = []
        var akrSekunder = ''
        var akrPrimer = ''
        // masukan range date kedalam array
        for (let i = 0; i < res.length; i++) {
            if (res[i].is_sekunder == 1) {
                startDateStrSekunder.push(getDateStr(res[i].dari))
                endDateStrSekunder.push(getDateStr(res[i].sampai))
                akrSekunder = res[i].angka_kredit
            } else {
                startDateStrPrimer.push(getDateStr(res[i].dari))
                endDateStrPrimer.push(getDateStr(res[i].sampai))
                akrPrimer = res[i].angka_kredit
            }
        }

        // masukan seluruh array date kedalam array (array multi dimensi)

        function getAllDates(place, start, end, interval) {
            place.push(getDates(new Date(start), new Date(end), interval))

            return place
        }

        var all_dates_array_sekunder = []
        var all_dates_array_primer = []

        getAllDates(all_dates_array_sekunder, startDateStrSekunder, endDateStrSekunder, dayInterval)
        getAllDates(all_dates_array_primer, startDateStrPrimer, endDateStrPrimer, dayInterval)

        // fungsi untuk mengecek apakah ada data yang sama pada array
        Array.prototype.diff = function(arr) {
            var ret = []
            this.sort()
            arr.sort()
            for (var i = 0; i < this.length; i += 1) {
                if (arr.indexOf(this[i]) > -1) {
                    ret.push(this[i])
                }
            }
            return ret
        };

        // memecah dan merubah (all_dates_array) menjadi string dan msukan kedalam array

        var dates_array_sekunder = []
        var dates_array_primer = []

        var data_primer = []
        $.each(all_dates_array_primer, idx => {
            for (let i = 0; i < all_dates_array_primer[idx].length; i++) {
                dates_array_primer.push(all_dates_array_primer[idx][i].toString())
            }
        })

        $.each(all_dates_array_sekunder, idx => {
            for (let i = 0; i < all_dates_array_sekunder[idx].length; i++) {
                dates_array_sekunder.push(all_dates_array_sekunder[idx][i].toString())
            }
        })

        var dateIntersect = dates_array_sekunder.diff(dates_array_primer)
        var filterDates = []
        $.each(dateIntersect, (idx) => {
            var day = []
            day.push(dateIntersect[idx].split(" "))

            if (day[0][0] != "Sat" && day[0][0] != "Sun") {
                filterDates.push(day[0].join('-'))
            }
        })

        var no_intersect_sekunder = all_dates_array_sekunder[0].length - filterDates.length

        var val_intersect_sekunder = filterDates.length * akrSekunder

        var val_no_intersect_sekunder = no_intersect_sekunder * 6.5

        var akr_result_sekunder = val_intersect_sekunder + val_no_intersect_sekunder
        console.log(akr_result_sekunder)

    })
})

// fungsi timeout flash mes
setTimeout(() => $('#flash-status-sp').slideUp(300), 2000)
</script>
<script src="{{ asset('') }}admin_template/lib/datatables/jquery.dataTables.js"></script>
<script src="{{ asset('') }}admin_template/lib/datatables-responsive/dataTables.responsive.js"></script>

@endsection