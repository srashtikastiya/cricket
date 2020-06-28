@extends('layouts.app')

@section('content')
<h1 style="text-align:center;">Points Table</h1>

   <table id="datatable" class="table table-striped table-bordered" style="width:80%">
        <thead>
            <tr>
                <th>S NO</th>
                <th>Team Name</th>
                <th>Played</th>
                <th>Won</th>
                <th>Lost</th>
                <th>Points</th>  
            </tr>
        </thead>
        <tbody>

             @foreach($points as $value)

              <tr>

                <td></td>
                <td><a href="{{url('players').'/'.$value->teams->id}}">{{ $value->teams->name }}</a></td>
                <td>{{ $value->played }}</td>
                <td>{{ $value->won }}</td>
                <td>{{ $value->loose }}</td>
                <td>{{ $value->pts }}</td>
     
             </tr>
        
             @endforeach
           
            
        </tbody>
        
    </table>


@stop