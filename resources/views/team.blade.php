@extends('layouts.app')

@section('content')
<h1 style="text-align:center;">Teams</h1>

   <table id="datatable" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>S NO</th>
                <th>Team Name</th>
                <th>Club State</th>
                
            </tr>
        </thead>
        <tbody>

             @foreach($teams as $value)

              <tr>

                <td></td>
                <td><a href="{{url('players').'/'.$value->id}}"><img src='{{url("public/$value->logouri")}}' alt="" title="">
                    {{ strtoupper($value->name) }}</a></td>
                <td>{{ strtoupper($value->club_state) }}</td>
                
             </tr>
        
             @endforeach
           
            
        </tbody>
        
    </table>


@stop