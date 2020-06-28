<?php

namespace App\Http\Controllers;

use App\Players;
use App\Teams;
use Illuminate\Http\Request;
use DataTables;

class PlayersController extends Controller
{
   public function index($id)
    {
    	
        
        $data = Players::orderBy('id', 'asc')->where('team_id', $id)->with(['teams'])->get();
  
        $team_name = $data[0]->teams->name;
       

        return view('player',["players"=>$data,"team_name"=>$team_name]);
        
    }
}
