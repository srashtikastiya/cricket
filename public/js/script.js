 $(document).ready(function() {
        var t = $('#datatable').DataTable( {
        "columnDefs": [ {
            "searchable": false,
            "orderable": false,
            "targets": 0,
            "width": 20, targets: 0 
        } ],

        //"order": [[ 1, 'asc' ]]
    } );
 
    t.on( 'order.dt search.dt', function () {
        t.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
            cell.innerHTML = i+1;
        } );
    } ).draw();
      //   $('#datatable input[type="search"]').css(
      //    {'width':'350px','display':'inline-block'}
      // );
    } );