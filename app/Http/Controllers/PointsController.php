<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DataTables;
use App\Points;
use App\Teams;


class PointsController extends Controller
{
     public function index(Request $request)
    {
        
        $data = Points::orderBy('pts', 'desc')->with(['teams'])->get();
        // echo '<pre>';
        // print_r($data);
        // die();
        return view('points',["points"=>$data]);
        
    }
}
