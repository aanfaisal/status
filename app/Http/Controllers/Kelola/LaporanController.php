<?php

namespace App\Http\Controllers\Kelola;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


use PDF;
use DB;
use App\Kerusakan;

class LaporanController extends Controller
{
    
    public function index()
    {
        $data = Kerusakan::all();
        
        $pdf = PDF::loadview('admin.laporan', compact('data'))->setPaper('a4');
        
        //dd($data);
        return $pdf->stream('Laporan-StatusIT.pdf');

    }
    
}
