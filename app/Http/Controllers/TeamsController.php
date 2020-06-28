<?php

namespace App\Http\Controllers;

use App\Teams;
use Illuminate\Http\Request;
use DataTables;


class TeamsController extends Controller
{
    /**
     * Display a listing of the Teams.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        
        $data = Teams::latest()->get();
        return view('team',["teams"=>$data]);
        
    }

   
}
