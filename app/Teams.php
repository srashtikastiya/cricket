<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Teams extends Model
{
    //
    protected $fillable = [
    	'id',
        'name',
        'logouri',
        'club_state'
    ];

    public $timestamps = true;

     public function players()
    {
        return $this->hasMany('App\Players', 'team_id');
    }

    public function matches1()
    {
        return $this->hasMany('App\Matches', 'first_team');
    }

    public function matches2()
    {
        return $this->hasMany('App\Matches', 'second_team');
    }
     public function matches3()
    {
        return $this->hasMany('App\Matches', 'won_team');
    }

     public function points()
    {

        return $this->hasOne('App\Points','team_id');
    }


}
