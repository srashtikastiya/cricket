<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;

class TeamsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

     DB::table('teams')->insert(array(
     array(
       'name' => 'mi',
       'logouri' => 'image/mi.png',
       'club_state' => 'maharashtra',
       'created_at' => Carbon::now(),
       'updated_at' => Carbon::now(),

     ),
      array(
       'name' => 'csk',
       'logouri' => 'image/csk.png',
       'club_state' => 'Tamilnadu',
       'created_at' => Carbon::now(),
       'updated_at' => Carbon::now(),

     ),
       array(
       'name' => 'dc',
       'logouri' => 'image/dc.png',
       'club_state' => 'Delhi',
       'created_at' => Carbon::now(),
       'updated_at' => Carbon::now(),

     ),
        array(
       'name' => 'srh',
       'logouri' => 'image/srh.png',
       'club_state' => 'Telangana',
       'created_at' => Carbon::now(),
       'updated_at' => Carbon::now(),

     ),
         
    
   ));
    }
}
