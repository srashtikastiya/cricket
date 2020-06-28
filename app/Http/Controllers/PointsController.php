<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DataTables;
use App\Points;
use App\Teams;

 /**
     * Display a listing of the Points Table.
     *
     * @return \Illuminate\Http\Response
     */
class PointsController extends Controller
{
     public function index(Request $request)
    {
        
        $data = Points::orderBy('pts', 'desc')->with(['teams'])->get();
        return view('points',["points"=>$data]);
        
    }
}
