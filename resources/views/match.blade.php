@extends('layouts.app')

@section('content')
<h1 style="text-align:center;">Matches</h1>

   <table id="datatable" class="table table-striped table-bordered" style="width:80%">
        <thead>
            <tr>
                <th>S NO</th>
                <th>Date</th>
                <th>Match</th>
                <th>Won By</th>
                

                
            </tr>
        </thead>
        <tbody>

             @foreach($matches as $value)
             <?php $LogintDate = strtotime($value->date);
                    $date = date('d/m/Y', $LogintDate);?>
              <tr>

                <td></td>
                <td>{{ $date }}</td>
                <td><a href="{{url('players').'/'.$value->teams1->id}}">{{ $value->teams1->name }}</a> vs <a href="{{url('players').'/'.$value->teams2->id}}">{{ $value->teams2->name }}</a></td>
                <td><a href="{{url('players').'/'.$value->wonteam->id}}">{{ $value->wonteam->name }}</a></td>
                
                 
             </tr>
        
             @endforeach
           
            
        </tbody>
        
    </table>


    
@stop