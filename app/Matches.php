<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Matches extends Model
{
  public function teams1() {
    return $this->belongsTo('App\Teams', 'first_team','id');
  }

  public function teams2() {
    return $this->belongsTo('App\Teams', 'second_team','id');
  }
  public function wonteam() {
    return $this->belongsTo('App\Teams', 'won_team','id');
  }
}
