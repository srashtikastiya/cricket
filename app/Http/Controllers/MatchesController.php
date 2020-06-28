<?php

namespace App\Http\Controllers;

use App\Matches;
use App\Teams;
use Illuminate\Http\Request;
use DataTables;
 /**
     * Display a listing of the Matches.
     *
     * @return \Illuminate\Http\Response
     */
class MatchesController extends Controller
{

    public function index(Request $request)
    {
    	
    	 $data = Matches::orderBy('id', 'asc')->with(['teams1','teams2','wonteam'])->get();
    	
    	 return view('match',["matches"=>$data]);
    }
}
