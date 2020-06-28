<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class points extends Model
{
   public function teams() {

   	return $this->belongsTo('App\Teams','team_id', 'id');
    
  }
}
