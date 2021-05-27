<?php

namespace App\Http\Controllers\AngkaKredit;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Datatables;
use Validator;
use Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Input;

class PerhitunganAngkaKredit extends Controller{
    public function index()
    {
        return view('/angka-kredit/perhitungan-angka-kredit');
    }
}