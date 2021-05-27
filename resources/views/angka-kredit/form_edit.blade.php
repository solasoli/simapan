@extends('layouts.app')
@section('content')


<div class="br-pageheader pd-y-15 pd-l-20">
  <nav class="breadcrumb pd-0 mg-0 tx-12">
    <a class="breadcrumb-item" href="/">Dashboard</a>
    <a class="breadcrumb-item" href="#">Angka Kredit</a>
    <span class="breadcrumb-item active">Edit Angka Kredit</span>
  </nav>
</div>

<div class="pd-x-20 pd-sm-x-30 pd-t-20 pd-sm-t-30">
  <h4 class="tx-gray-800 mg-b-5">Edit Angka Kredit</h4>
</div>

<div class="br-mainpanel" style="margin: 0px;">
  <div class="br-pagetitle">
   <div style="padding-top: 20px"></div>
  </div>
<div class="modal fade" id="myModal">
  <div class="modal-dialog modal-lg">
    <div class="modal-content" style="width: 120%">
      <!-- Modal Header -->
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
    </div>
  </div>
</div>

<div class="row row-sm mg-t-20">
@foreach ($data as $val)
<form method="POST" id="form-kredit" enctype="multipart/form-data" action="{{url('')}}/angka-kredit/edit-angka-kredit/update/{{$val->id}}">
@endforeach
  @csrf
  <div class="col-lg-12">
    <div class="card bd-0 shadow-base" style="margin: 20px;margin-top:0px">
      <div class="br-pagebody">
        <div class="row">
          <div class="col-6">
            <div class="tab-content">
            @foreach($data as $idx => $val)
            <input type="text" name="id_surat_perintah" value="{{$val->id_surat_perintah}}" hidden>
            <input type="text" name="id_pegawai" value="{{$val->id_pegawai}}" hidden>
              <table class="table table-borderless">
                <tr style="border:0px">
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
            @endforeach
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-6">
            <div class="btn btn-default w-100">Unsur</div>
            <select class="form-control" name="unsur" id="unsur">
            @foreach($data as $d)
                <option value="{{$d->id_unsur}}">{{$d->unsur}}</option>
                @foreach($unsur as $val)
                    @if($val->id != $d->id_unsur)
                    <option value="{{$val->id}}">{{$val->nama}}</option>
                    @endif
                @endforeach
            @endforeach
            </select>
            
            <div style="margin-top: 15px" class="btn btn-default w-100">Sub Unsur</div>
            <select class="form-control" name="sub_unsur" id="sub_unsur"></select>
            
            <div style="margin-top: 15px" class="btn btn-default w-100">Butir Kegiatan</div>
            <select class="form-control" id="butir_kegiatan">
              <option value="">- Pilih Butir Kegiatan -</option>
            </select>
            <div class="validasi_butir_kegiatan text-danger"></div>
            
            <div style="margin-top: 15px" dis class="btn btn-default w-100">Angka Kredit</div>
            @foreach($data as $val)
            <input type="text" disabled class="form-control angkaKredit" value="{{$val->angka_kredit}}">
            @endforeach
            <input type="text" name="angka_kredit" id="angka_kredit" hidden>
            
            <div style="margin-top: 15px" class="btn btn-default w-100">Satuan Hasil</div>
            @foreach($data as $val)
            <input rows="3" disabled class="form-control satuanHasil" value="{{$val->butir_kegiatan_satuan}}">
            @endforeach
          </div>
          <div class="col-6">
            <div class="btn btn-default w-100">Data SP</div>
            @foreach($data as $val)
             <table class="table table-borderless" style="border: 5px solid #efefef">
                <tr>
                  <td width="20%">No. SP</td>
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
                  <td>{{ $dari[0] }} s/d {{ $sampai[0]}}</td>
                </tr>
                <input type="text" name="dari" value="" hidden>
                <input type="text" name="sampai" value="" hidden>
                <tr>
                  <td>Jumlah Hari</td>
                  <td>:</td>
                  <td>{{$val->jumlah_hari}}</td>
                </tr>
                <input type="text" name="jumlah_hari" value="{{$val->jumlah_hari}}" hidden>
                <tr>
                  <td>Jam</td>
                  <td>:</td>
                  <td class="jam">{{$val->jam}}</td>
                </tr>
                <input type="text" name="jam" value="{{$val->jam}}" hidden>
                <tr>
                  <td>Posisi</td>
                  <td>:</td>
                  <td>{{$val->peran}}</td>
                </tr>
                <input type="text" name="peran" value="{{$val->peran}}" hidden>
              </table>
            @endforeach

              <div class="input-group control-group after-add-more" style="display: flex; flex-direction: column;">
                <div class="form-group">
                  <label for="nama">Upload Dokumen</label>
                </div>
                <table class="table table-borderless">
                  <tr>
                    <td width="75%">
                      <input type="file" style="width: 100%" name="document[]" class="form-control" placeholder="Enter Name Here"></td>
                    <td width="25%">
                      <div class="input-group-btn">
                          <button class="btn btn-success add-more" type="button">
                          <i class="fa fa-plus"></i> Tambah File
                          </button>
                      </div>
                    </td>
                  </tr>
                </table>
              </div>
            <div class="copy-fields hide" style="display: none;">
              <div class="control-group input-group" style="margin-top:-20px;">
                <table class="table table-borderless">
                  <tr>
                    <td width="75%">
                      <input type="file" name="document[]" class="form-control" placeholder="Enter Name Here" style="width: 100%">
                    </td>
                    <td width="25%">
                      <div class="input-group-btn">
                        <button class="btn btn-danger remove" type="button"><i class="fa fa-times"></i></button>
                      </div>
                    </td>
                  </tr>
                </table>
              </div>
            </div>
          </div>
        </div>

        <div class="row mt-5 pb-5 justify-content-end">
          <div class="col-sm-3">
            <button type="submit" class="btn btn-primary btn-block">Simpan</button>
          </div>
          <div class="col-sm-3">
            <a href="#" onclick="return window.history.back()" class="btn btn-secondary btn-block">Cancel</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</form>

    <br>

    <br>

    <br>

</div>
<script>
    var url = '{{url("")}}/angka-kredit/edit-angka-kredit/'; 

$('#form-kredit').submit((e) => {
  if($('#butir_kegiatan').val() == '') {
    var message = $('.validasi_butir_kegiatan').append('Butir kegiatan harus diisi!');
    setTimeout(() => message.slideUp(), 2000)
    
    return false
  }
});

// ajax sub unsur
var get_sub_unsur = function() {
  
  let id_unsur = $('#unsur').val()
  
  $('#unsur').each(() => {
    
    $.ajax({
      url: url + "get_sub_unsur/" + id_unsur,
      dataType: 'json',
      timeout: 500,
      success: function(res) {
        res.forEach(function(val){
          for(let i=0; i<val.length; i++) {
            $('#sub_unsur').append('<option value="'+ val[i].id +'" id="option_sub_unsur">'+ val[i].nama +'</option>');
          }
        })
      }
    })
  }).change(() => {
    let id_unsur = $('#unsur').val()
    // bersihkan option sebelum ditambahkan
    $('#sub_unsur option[id="option_sub_unsur"]').remove();

    var optionDef = document.querySelectorAll('#is_angkaKredit');
    for(let i=0; i<optionDef.length; i++) {
      $('#is_angkaKredit').remove();
    }

    $.ajax({
      url: url + "get_sub_unsur/" + id_unsur,
      dataType: 'json',
      timeout: 500,
      success: function(res) {
        res.forEach(function(val){
          for(let i=0; i<val.length; i++) {
            $('#sub_unsur').append('<option value="'+ val[i].id +'" id="option_sub_unsur">'+ val[i].nama +'</option>');
          }
        })
      }
    })
  })   

  return;
}

get_sub_unsur();

function get_butir_kegiatan() {
      setTimeout(function() {
        $('#sub_unsur').each(() => {
          let id_sub_unsur = $('#sub_unsur').val();
    
          // clear option sebelum ditambahkan
          $('#butir_kegiatan option[id="option_butir_kegiatan"]').remove();
          
          $.ajax({
            url: url + 'get_butir_kegiatan/' + id_sub_unsur,
            success: function(res) {
              res.forEach(function(val) {
                $('#butir_kegiatan').append('<option value="'+ val.angka_kredit +'" id_butir_kegiatan="'+ val.id +'" data_id="'+ val.id_butir_kegiatan_satuan +'" id="option_butir_kegiatan">'+ val.nama +'</option>');
              })
            }
          })
        })
      }, 200)
      return;
    }

    get_butir_kegiatan();

    $('#sub_unsur').change(() => {
      let id_sub_unsur = $('#sub_unsur').val();
  
      // clear option sebelum ditambahkan
      $('#butir_kegiatan option[id="option_butir_kegiatan"]').remove();
      
      $.ajax({
        url: url + 'get_butir_kegiatan/' + id_sub_unsur,
        success: function(res) {
          res.forEach(function(val) {
            $('#butir_kegiatan').append('<option value="'+ val.angka_kredit +'" id_butir_kegiatan="'+ val.id +'" data_id="'+ val.id_butir_kegiatan_satuan +'" id="option_butir_kegiatan">'+ val.nama +'</option>');
          })
        }
      })
    })

    $('#butir_kegiatan').change(() => {
      let angkaKredit = $('#butir_kegiatan').val()
      let jam = $('.jam').text()
      
      @foreach($data AS $idx => $val)
      let jabatan_sp = `{{$val->jabatan}}`;
      let peran = `{{$val->peran}}`
      @endforeach

      
      // get hasil angka kredit * jam
      function getAngkaKreditHasil() {
        let hasil = angkaKredit * jam;
        return hasil
      }

      // get hasil angka kredit Auditor Ahli Madya
      function angkaKreditAuditorAhliMadya(val1, val2, val3) {
        if(peran == val1) {
          var angkaKreditHasil = getAngkaKreditHasil();
        }else if(peran == val2) {
          var angkaKreditHasil = getAngkaKreditHasil();
        }else if(peran == val3) {
          var angkaKreditHasil = getAngkaKreditHasil();
        }

        return angkaKreditHasil;
      }

      // get hasil angka kredit Auditor Ahli Pertama
      function angkaKreditAuditorAhliPertama(val1, val2, val3) {
        if(peran == val1) {
          var angkaKreditHasil = getAngkaKreditHasil();
        }else if(peran == val2) {
          var angkaKreditHasil = getAngkaKreditHasil() * 0.8;
        }else if(peran == val3) {
          var angkaKreditHasil = getAngkaKreditHasil();
        }

        return angkaKreditHasil;
      }

      // get hasil angka kredit Auditor Ahli Muda
      function angkaKreditAuditorAhliMuda(val1, val2, val3) {
        if(peran == val1) {
          var angkaKreditHasil = getAngkaKreditHasil();
        }else if(peran == val2) {
          var angkaKreditHasil = getAngkaKreditHasil();
        }else if(peran == val3) {
          var angkaKreditHasil = getAngkaKreditHasil() * 0.8;
        }

        return angkaKreditHasil;
      }

      // const jabatan 
      let anggota = 'ANGGOTA'
      let ketuaTim = 'KETUA TIM'
      let pengendaliTeknis = 'PENGENDALI TEKNIS'
      
      // kondisi angka kredit jabatan
      // Jika Auditor Ahli Madya
      if(jabatan_sp == 'Auditor Ahli Madya') {
        var angka_kredit_hasil = angkaKreditAuditorAhliMadya(anggota, ketuaTim, pengendaliTeknis);
      }else if(jabatan_sp == 'Auditor Ahli Pertama') {
        var angka_kredit_hasil = angkaKreditAuditorAhliPertama(anggota, ketuaTim, pengendaliTeknis);
      }else if(jabatan_sp == 'Auditor Ahli Muda') {
        var angka_kredit_hasil = angkaKreditAuditorAhliMuda(anggota, ketuaTim, pengendaliTeknis);
      }

      $('.angkaKredit').attr('value', angka_kredit_hasil.toFixed(4));
      $('#angka_kredit').attr('value', angka_kredit_hasil.toFixed(4));
      

      // bersihkan input sebelum ditambahkan input baru
      $('input[name=id_butir_kegiatan]').remove();

      // add input butir kegiatan (get id butir kegiatan)
      var id_butir = $('#butir_kegiatan option:selected').attr('id_butir_kegiatan');
      $('#butir_kegiatan').after('<input name="id_butir_kegiatan" value="'+ id_butir +'" hidden>')

      let id_butir_kegiatan = $('#butir_kegiatan option:selected').attr('data_id');
      $.ajax({
        url: url + 'get_satuan/' + id_butir_kegiatan,
        success: function(res) {
          res.forEach(function(val) {
            $('.satuanHasil').attr('value', val.nama);
            
          })
        }
      })
    })
</script>
   
@endsection