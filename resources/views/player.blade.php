@extends('layouts.app')

@section('content')
<h1 style="text-align:center;">{{ $team_name }}</h1>

   <table id="datatable" class="table table-striped table-bordered" style="width:80%">
        <thead>
            <tr>
                <th>S NO</th>
                <th>Profile</th>
                <th>Country</th>
                <th>Matches</th>
                <th>Run</th>
                <th>HS</th>
                <th>Ave</th>
                <th>SR</th>
                <th>100</th>
                <th>50</th>
                <th>WKTS</th>
                <th>Bowl Ave</th>
                <th>Econ</th>
                <th>Bowl SR</th>

                
            </tr>
        </thead>
        <tbody>

             @foreach($players as $value)

              <tr>

                <td></td>
                <td><img src='{{url("public/$value->imageuri")}}' alt="" title="">
                    {{ $value->first_name   }} {{ $value->last_name   }}</td>
                <td>{{ $value->country }}</td>
                <td>{{ $value->matches }}</td>
                <td>{{ $value->run }}</td>
                <td>{{ $value->highest_score }}*</td>
                <td>{{ $value->avg }}</td>
                <td>{{ $value->strike_rate }}</td>
                <td>{{ $value->hundreds }}</td>
                <td>{{ $value->fifties }}</td>
                <td>@if($value->total_wickets =='')<b>-</b>@else{{ $value->total_wickets }}@endif</td>
                <td>{{ $value->bowl_avg }}</td>
                <td>@if($value->econ =='')<b>-</b>@else{{ $value->econ }}@endif</td>
                <td>{{ $value->bowl_strike }}</td>
                
             </tr>
        
             @endforeach
           
            
        </tbody>
        
    </table>


   
@stop