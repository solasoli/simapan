@extends('layouts.app')
@section('content')
<div class="br-mainpanel" style="margin: 0px;">
    <div class="br-pagetitle">
        <div style="padding-top: 20px">
            <h5>Sekretariat Dupak</h5>
        </div>
    </div>
    <style>
        #not-found {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 400px;
        }
    </style>
    <div class="container">
        <div class="row row-sm mg-t-20">
            <div class="col-lg-12">
                <div class="card bd-0 shadow-base" style="margin: 20px;margin-top:0px">
                    <div class="br-pagebody" id="not-found">
                        <h4 class="text-danger">Tidak ada SP yang beririsan!</h4>
                    </div>
                </div><!-- row -->

                <br>
                <br>
                <br>

            </div><!-- br-pagebody -->
        </div>
    </div>
@endsection