<!doctype html>

<html>

<head>

   @include('includes.head')

</head>

<body class="{!! app()->getLocale(); !!}">

<div class="container">

   <header class="row">

       @include('includes.header')

   </header>

 <main class="container-fluid flex-fill">
    
           @yield('content')

   </main>

   <footer class="row" id="footer">

       @include('includes.footer')

   </footer>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script> 
    <script src="{{ asset('public/js/jquerydataTables.min.js') }}"></script>
    <script src="{{ asset('public/js/responsivebootstrap4.min.js') }}"></script>
    <script src="{{ asset('public/js/script.js') }}"></script>


</div>

</body>

</html>