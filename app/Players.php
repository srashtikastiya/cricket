<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Players extends Model
{

    public $timestamps = true;

     public function teams()
    {
        
        return $this->belongsTo('App\Teams', 'team_id', 'id');
    
    }
}
