<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     //return view('welcome');
//     return view('team');
// });

//Route::get('/team', 'TeamsController@index');
Route::get('/', ['uses'=>'TeamsController@index', 'as'=>'team.index']);
Route::get('/players/{id}', ['uses'=>'PlayersController@index', 'as'=>'players.index']);
Route::get('/fixtures', ['uses'=>'MatchesController@index', 'as'=>'matches.index']);
Route::get('/points', ['uses'=>'PointsController@index', 'as'=>'points.index']);