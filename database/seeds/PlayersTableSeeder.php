<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;

class PlayersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
         DB::table('players')->insert(array(
     // array(
     //   'first_name' => 'Ms',
     //   'last_name' => 'Dhoni',
     //   'team_id' => 2,
     //   'imageuri' => 'image/ms.png',
     //   'player_jersey_number' => 7,
     //   'country' => 'India', 
     //   'matches' => 190,
     //   'run' => 4432,
     //   'highest_score'=> 84,
     //   'fifties' => 23,
     //   'hundreds'=> 0,
     //   'avg'=> 42.20,
     //   'strike_rate'=> 137.85,
     //   'bowl_avg' =>'',
     //   'bowl_strike' =>'',
     //   'total_wickets' =>'',
     //   'econ' =>'',
     //   'created_at' => Carbon::now(),
     //   'updated_at' => Carbon::now(),


     // ),
     //  array(
     //   'first_name' => 'Dwayne',
     //   'last_name' => 'Bravo',
     //   'team_id' => 2,
     //   'imageuri' => 'image/db.png',
     //   'player_jersey_number' => 23,
     //   'country' => 'west indies', 
     //   'matches' => 134,
     //   'run' => 1483,
     //   'highest_score'=> 70,
     //   'fifties' => 5,
     //   'hundreds'=> 0,
     //   'avg'=> 23.17,
     //   'strike_rate'=> 128.28,
     //   'bowl_avg' =>24.60,
     //   'bowl_strike' =>17.59,
     //   'total_wickets' =>147,
     //   'econ' =>8.39,
     //   'created_at' => Carbon::now(),
     //   'updated_at' => Carbon::now(),


     // ),
     //  array(
     //   'first_name' => 'Shreyas',
     //   'last_name' => 'Iyer',
     //   'team_id' => 3,
     //   'imageuri' => 'image/si.png',
     //   'player_jersey_number' => 2,
     //   'country' => 'India', 
     //   'matches' => 62,
     //   'run' => 1681,
     //   'highest_score'=> 96,
     //   'fifties' => 13,
     //   'hundreds'=> 0,
     //   'avg'=> 30.56,
     //   'strike_rate'=> 126.96,
     //   //'bowl_avg' =>24.60,
     //   //'bowl_strike' =>17.59,
     //   'total_wickets' =>0,
     //   //'econ' =>8.39,
     //   'created_at' => Carbon::now(),
     //   'updated_at' => Carbon::now(),


     // ),
     //   array(
     //   'first_name' => 'Rohit',
     //   'last_name' => 'Sharma',
     //   'team_id' => 1,
     //   'imageuri' => 'image/rs.png',
     //   'player_jersey_number' => 11,
     //   'country' => 'India', 
     //   'matches' => 188,
     //   'run' => 4898,
     //   'highest_score'=> 109,
     //   'fifties' => 36,
     //   'hundreds'=> 1,
     //   'avg'=> 31.60,
     //   'strike_rate'=> 130.82,
     //   'bowl_avg' =>29.33,
     //   'bowl_strike' =>22.13,
     //   'total_wickets' =>15,
     //   'econ' =>7.95,
     //   'created_at' => Carbon::now(),
     //   'updated_at' => Carbon::now(),


     // ),
        array(
       'first_name' => 'Hardik',
       'last_name' => 'Pandya',
       'team_id' => 1,
       'imageuri' => 'image/hp.png',
       'player_jersey_number' => 5,
       'country' => 'India', 
       'matches' => 66,
       'run' => 1068,
       'highest_score'=> 91,
       'fifties' => 3,
       'hundreds'=> 0,
       'avg'=> 28.86,
       'strike_rate'=> 154.78,
       'bowl_avg' =>31.26,
       'bowl_strike' =>20.69,
       'total_wickets' =>42,
       'econ' =>9.06,
       'created_at' => Carbon::now(),
       'updated_at' => Carbon::now(),


     ),


         
    
   ));
    }
}
