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
    <span class="breadcrumb-item active">Status Tanggal Beririsan</span>
  </nav>
</div>

<style>
  div.box {
    width: 20px;
    height: 20px;
    border-radius: 3px;
  }
  div.box-group {
    display: flex;
    flex-direction: column;
    background-color: #fff;
    padding: 15px 15px;
    border-radius: 6px;
    box-shadow: 1px 1px 8px rgba(0, 0, 0, .2);
  }
  .color-group {
    display: flex;
    margin-top: 20px;
  }
  div.primer {
    background-color: #0866C6;
  }
  div.sekunder {
    background-color: #17a2b8;
  }
  div.tersier {
    background-color: #868e96;
  }
  div.angka_kredit {
    background-color: #F49917;
  }
  .label-color {
    color: #777;
    margin-left: 3px;
    font-size: 12px;
  }
  .refresh {
    display: flex;
    justify-content: space-between;
  }
</style>

<div class="pd-x-20 pd-sm-x-30 pd-t-20 pd-sm-t-30">
  <div class="row">
    <div class="col-12">
    <div class="box-group">
      <h4 class="tx-gray-800 mg-b-5">Status Tanggal Beririsan</h4> <br>
      NOTE:
        <span><small><i>* klik tanggal yang beririsan -> pilih status tanggal -> klik simpan / tetapkan</i></small></span>
        <span class="text-danger"><small><i>* Dalam tanggal beririsan tidak boleh ada status yang sama</i></small></span>
        <span><small><i>* jika telah terisi semua klik simpan perubahan</i></small></span>

        <hr style="border-top: 1px solid rgba(0,0,0,.2); width: 100%">
        @if($message = Session::get('success'))
          <div class="alert alert-success success" role="alert">
            {{ $message }}
          </div>
        @endif
          <div class="refresh">
            <a href="" class="btn btn-secondary btn-sm">Atur ulang angka kredit &nbsp; <i class="fa fa-refresh"></i></a>
            <form id="dataAngker" style="display: inline-block">
              <input type="text" name="angker[]" id="angker" hidden>
              <button type="submit" class="btn btn-primary btn-sm">Simpan perubahan <i class="fa fa-save"></i></button>
            </form>
          </div>
          <div class="color-group">
            <div class="primer box"></div>
            <label class="label-color">Primer</label>
            <div class="sekunder box ml-3"></div>
            <label class="label-color">Sekunder</label>
            <div class="tersier box ml-3"></div>
            <label class="label-color">Tersier</label>
            <div class="angka_kredit box ml-3"></div>
            <label class="label-color">Angka kredit saat ini</label>
          </div>
        <div class="validasi">
        </div>
        <div class="tab-content scrolltable">
          <div class="row">
            <div class="col-md-12">
              <div id="table">
              </div>
            </div>
          </div>
          <table class="table table-bordered mt-2 table-sm" id="dateTable">
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<style>
  .scrolltable {
    overflow: auto;
    white-space: nowrap;
  }

  .scrolltable a {
    display: inline-block;
    text-align: center;
    color: #1aa2ce;
    padding: 14px;
    text-decoration: none;
  }
  #table {
    display: flex;
    justify-content: space-between;
    background-color: #FFF;
  }
</style>


<script>
  var id_date = `{{$date}}`
  $.ajax({
    url: `{{url('')}}/angka-kredit/sekretariat-dupak/statusTanggalSp/${id_date}`,
    success: function(res) {
      function getDates(startDate, endDate, interval) {
        const duration = endDate - startDate
        const steps = duration / interval

        return Array.from({length: steps + 1}, (v,i) => new Date(startDate.valueOf() + (interval * i)))
      }

      const dayInterval = 1000 * 60 * 60 * 24; // 1 day

      // fungsi untuk mendapatkan string date
      function getDateStr(data) {
        let date = []
        date = data.split(' ')
        date = date[0];
        date = date.split('-')
        date = date.join()

        return date;
      }

      const startDateStr = new Array
      const endDateStr = new Array
      // masukan range date kedalam array
      res.forEach( val => {
        startDateStr.push(getDateStr(val.dari))
        endDateStr.push(getDateStr(val.sampai))
      })

      // masukan seluruh array date kedalam array (array multi dimensi)
      all_dates_array = new Array
      endDateStr.forEach((val, idx) => {
        all_dates_array.push(getDates(new Date(startDateStr[idx]), new Date(endDateStr[idx]), dayInterval))
      })

      var ret = []
      Array.prototype.diff = function(datesBefore, datesAfter) {
        if(datesBefore != undefined && datesAfter != undefined) {
          for(let i in this) {
              if(datesBefore.indexOf(this[i]) > -1){
                  ret.push(this[i])
              }
          }
          for(let i in ret) {
              if(datesAfter.indexOf(ret[i]) > -1){
                  ret.push(ret[i])
              }
          }
        }else if(datesBefore != undefined && datesAfter == undefined) {
          for(let i in this) {
              if(datesBefore.indexOf(this[i]) > -1){
                  ret.push(this[i])
              }
          }
        }else if(datesBefore == undefined && datesAfter != undefined) {
          for(let i in this) {
            if(datesAfter.indexOf(this[i]) > -1){
              ret.push(this[i])
            }
          }
        }

        return ret
      };

      const data = new Array
      all_dates_array.forEach(val => {

        const dates_array = new Array
        val.forEach((item, idx) => {

          let days = []
          days.push(item.toString().split(" "))
      
            if(days[0][0] != "Sat" && days[0][0] != "Sun") {
              dates_array.push(days[0].join('-'))   
            }

        })
        
        data.push(dates_array)
      })

      var dataDateMatch = []
      for(let i=0; i<data.length; i++) {
        dataDateMatch.push(data[i].diff(data[i-1], data[i+1]))
      }
      
      let modul = 0 
      data.forEach((val, idx) => {

        const elAngkaKreditNow = `<td style="height: 100%">
        <div class="bg-warning angkerNow" id="angkerNow${idx}" style="height: 80%; display:flex; justify-content: center; align-items: center; color: #FFF; border-radius: 3px;">0</div>
        </td>`;
        
        const elAngkaKreditBefore = `<td>
        <div class="bg-secondary" title="angka-kredit sebelumnya" id="angker${idx}" style="height: 80%; display:flex; justify-content: center; align-items: center; color: #FFF; border-radius: 3px; cursor: context-menu;">${res[idx].angka_kredit}</div>
        </td>`;

        function addElementInDocument() {
          for(let i=0; i<val.length; i++) {
            if(dataDateMatch[idx].indexOf(val[i]) >= 0) {
              $(`.sp${idx}`).append(`
              <td class="text-center"><button class="btn btn-default btnTgl btn-sm" id="btnsp${idx + val[i].substr(8, 2)}" data-toggle="modal" idx-sp="${idx}" style="cursor: pointer; border: 1px solid rgba(0,0,0,.2)" data-status="no-primer" data-target="#sp${idx + val[i].substr(8, 2)}">${val[i].substr(8, 2)}</button></td>
              `)  
            }else{
              $(`.sp${idx}`).append(`
              <td class="text-center"><button class="btn btn-primary btnTgl btn-sm" style="cursor: not-allowed; border: 1px solid rgba(0,0,0,.2)" id="btnsp${idx + val[i].substr(8, 2)}" idx-sp="${idx}" data-status="primer">${val[i].substr(8, 2)}</button></td>
              `)
            }
          }
          $(`.sp${idx}`).append(`${elAngkaKreditNow} ${elAngkaKreditBefore}`)

          return
        }

        // create element tr in table
        const dateTable = document.querySelector('#dateTable')
        let tr = document.createElement('tr')
        tr.className = `sp${idx}`
        dateTable.appendChild(tr)
        
        // create element th for no surat
        const trSp = document.querySelector(`.sp${idx}`)
        let th = document.createElement('th')
        th.setAttribute('style', 'color: #333')
        th.innerHTML = `${res[idx].no_surat}`
        trSp.appendChild(th)
        
        if(idx > 0) {
          const datanow = data[idx][0].substr(8, 2)
            
            for(let i=0; i<data[idx - 1].length; i++) {
              if(data[idx - 1][i].substr(8, 2) == datanow) {
                break
              }
              modul += 1
            }
            
            if(modul > 0) {
              for(let i=0; i<modul; i++) {
                $(`.sp${idx}`).append(`<td class="text-center"> - </td>`)  
              }
              addElementInDocument()
            }else{
              addElementInDocument()
            }

        }else{
          addElementInDocument()
        }
          
        for(let i=0; i<val.length; i++) {
          $('table.table').after(`
            <div class="modal fade bd-example-modal-sm" id="sp${idx + val[i].substr(8, 2)}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-sm" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h6 class="modal-title" id="exampleModalLabel">Set Sebagai</h6>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body py-3 px-5">
                    <div class="container-fluid">
                      <div class="row">
                        <div class="col-md-6">
                          <span>No. SP : ${res[idx].no_surat}</span> <br>
                          <span>Tanggal : ${val[i].substr(8, 2)}</span>
                        </div>
                      </div>
                      <div class="row">
                      <select name="" id="status${idx + val[i].substr(8, 2)}" class="form-control mt-3">
                        <option value="6.5">Primer</option>
                        <option value="1">Sekunder</option>
                        <option value="0">Tersier</option>
                      </select>
                      </div>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-sm btnSet" data-id="${idx + val[i].substr(8, 2)}">Tetapkan</button>
                  </div>
                </div>
              </div>
            </div>
          `);
        }

        for(let i=0; i<val.length; i++) {
          $(`#btnsp${idx + val[i].substr(8, 2)}`).click( function(e) {
            const btn_date = e.target.id
            const classList = $(this).attr('class').split(' ')
            const found = classList.find(eL => eL == 'btn-default')
            removeDataId()

            if(found != undefined) {
              if(found.length > 0) {
                $(this).attr('data-id', 'this')
              }
            }

          })
        }

        function removeDataId() {
          $('.btnTgl').removeAttr('data-id');
        }

        function kalkulasiJam(bobot) {
          if(bobot == 6.5) {
            var angker = 6.5
            changeColor(`button[data-id=this]`, 'btn btn-primary btn-sm')
          }else if(bobot == 1) {
            var angker = 1
            changeColor(`button[data-id=this]`, 'btn btn-info btn-sm')
          }else{
            var angker = 0
            changeColor(`button[data-id=this]`, 'btn btn-secondary btn-sm')
          }

            return angker
          }
          
        $('.btnSet').click( function(e) {
          const targetOption = $(this).attr('data-id')
          const bobot = $(`#status${targetOption} option:selected`).val()

          // tangkap index-sp yang di klik
          const idx_sp = $('button[data-id=this]').attr('idx-sp')

          // change cursor after click set button
          if($('button[data-id=this]')[0] != undefined) {
            $('button[data-id=this]')[0].style.cursor = 'not-allowed'
          }
          
          const angker_sp = res[idx].angka_kredit
          const butir_kegiatan = res[idx].bk
          const jabatan = res[idx].jabatan
          const peran = res[idx].peran
          
          let angker = kalkulasiJam(bobot)
    
          let angkerNow = document.querySelector(`#angkerNow${idx_sp}`)

          const btnStatusPrimer = document.querySelectorAll(`button[idx-sp='${idx_sp}'][data-status=primer]`)
          const btnStatusNoPrimer = document.querySelectorAll(`button[idx-sp='${idx_sp}'][data-status=no-primer]`)
          
          if(angkerNow != null) {
            
            var hasil = angker * butir_kegiatan + parseFloat(angkerNow.textContent)
            var defaultPrimer = 6.5 * butir_kegiatan * btnStatusPrimer.length 

            // const jabatan 
            let anggota = 'ANGGOTA'
            let ketuaTim = 'KETUA TIM'
            let pengendaliTeknis = 'PENGENDALI TEKNIS'
            
            // kondisi angka kredit jabatan
            // Jika Auditor Ahli Madya
            if(jabatan == 'Auditor Ahli Madya') {
              var angka_kredit_hasil = angkaKreditAuditorAhliMadya(anggota, ketuaTim, pengendaliTeknis);
            }else if(jabatan == 'Auditor Ahli Pertama') {
              var angka_kredit_hasil = angkaKreditAuditorAhliPertama(anggota, ketuaTim, pengendaliTeknis);
            }else if(jabatan == 'Auditor Ahli Muda') {
              var angka_kredit_hasil = angkaKreditAuditorAhliMuda(anggota, ketuaTim, pengendaliTeknis);
            }

            var angkerBeforeValue = document.querySelector(`#angkerNow${idx_sp}`).textContent
            if(angkerBeforeValue == 0) {
              document.querySelector(`#angkerNow${idx_sp}`)
              .innerHTML = fourNumberAfterComma(angka_kredit_hasil + defaultPrimer)
            }else{
              document.querySelector(`#angkerNow${idx_sp}`)
              .innerHTML = fourNumberAfterComma(angka_kredit_hasil)
            }

            const storeAngker = []
            for(let i in data) {
              storeAngker.push($(`#angkerNow${i}`).html() + '-' + res[i].id)
            }

            document.querySelector('input#angker')
            .setAttribute('value', storeAngker)
          }
          
          // get hasil angka kredit Auditor Ahli Madya
          function angkaKreditAuditorAhliMadya(val1, val2, val3) {
            if(peran == val1) {
              var angkaKreditHasil = hasil;
            }else if(peran == val2) {
              var angkaKreditHasil = hasil;
            }else if(peran == val3) {
              var angkaKreditHasil = hasil;
            }

            return angkaKreditHasil;
          }

          // get hasil angka kredit Auditor Ahli Pertama
          function angkaKreditAuditorAhliPertama(val1, val2, val3) {
            if(peran == val1) {
              var angkaKreditHasil = hasil;
            }else if(peran == val2) {
              var angkaKreditHasil = hasil * 0.8;
            }else if(peran == val3) {
              var angkaKreditHasil = hasil;
            }

            return angkaKreditHasil;
          }

          // get hasil angka kredit Auditor Ahli Muda
          function angkaKreditAuditorAhliMuda(val1, val2, val3) {
            if(peran == val1) {
              var angkaKreditHasil = hasil;
            }else if(peran == val2) {
              var angkaKreditHasil = hasil;
            }else if(peran == val3) {
              var angkaKreditHasil = hasil * 0.8;
            }

            return angkaKreditHasil;
          }
          
        })  
      })
      
      var id_pegawai = res[0].id_pegawai
      const nodeElZeroValue = document.querySelectorAll('.angkerNow');
      
      $('div.validasi').append(`
      <div class="alert alert-danger" style="display: none" id="validasi" role="alert">
      Tidak boleh ada angka-kredit yang nol (0)
      </div>
      `)

      $("#dataAngker").submit(function(e) {
        const validasiArr = []
        nodeElZeroValue.forEach(val => {
          if(val.textContent == 0) {
            validasiArr.push(val.textContent)
          }
        })    

        if(validasiArr.length > 0) {
          e.preventDefault()
          $('#validasi').first().is(':hidden')
          var show = $('#validasi').slideDown()
          setTimeout(() => {
            show.slideUp('slow')
          }, 3000)
        }else{
          $("#dataAngker").attr('action', `{{url('')}}/angka-kredit/sekretariat-dupak/edit-status-tanggal-sp/${id_pegawai}`)
        }

      })

    }
  })

  // fungsi memotong angka dibelakang koma tanpa membulatkan
  function fourNumberAfterComma(val) {
    var b = val.toString().split('.')
    c = ''
    if(b.length > 1) {
      if(b[1].length > 4) {
        c = b[1].substr(0, 4)
        b[1] = c
        x = b.join('.')
      }else{
        x = b.join('.')
      }
    }else{
      x = b[0]
    }
    return x
  }

  // fungsi merubah warna button sesuai dengan status sp
  function changeColor(selector, color) {
    $(selector).removeAttr('class', 'btn-default')
    $(selector).attr('class', color)
    var hide = $(".modal").modal('hide')
    if(hide) {
      $('button[data-id=this]').removeAttr('data-target')
      $(selector).removeAttr('data-id')
    }
  }

  setTimeout(() => {
    $('.success').slideUp('slow')
  }, 4000)

</script>
@endsection