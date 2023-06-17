<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Model\User;

use PDF;

class PdfController extends Controller
{
    public function penulispdf()
{
	$penulis = DB::table('users')->get();
 
	$pdf = PDF::loadview('penulispdf',['penulis'=>$penulis]);
	return $pdf->download('laporan-penulis-pdf');

}
}
