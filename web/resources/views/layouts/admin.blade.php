<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="{{ asset('Fe/css/bootstrap.min.css') }}" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="{{ asset('fontawesome/css/all.min.css') }}">
  <link href="{{ asset('Fe/css/tiny-slider.css') }}" rel="stylesheet" />
  <link href="{{ asset('Fe/css/style.css') }}" rel="stylesheet" />
  <link rel="icon" type="image/x-icon" href="{{ asset('Fe/images/cinema.png') }}" />
  <script src="https://unpkg.com/axios/dist/axios.min.js"></script>

  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

  @yield('title')

</head>

<body class="hold-transition sidebar-mini">
  <div class="wrapper">
    @include('partials.header')

    @yield('content')

    @include('partials.footer')
  </div>

  <script src="{{ asset('Fe/js/app.js') }}"></script>
  <!-- jQuery -->
  <script src="{{ asset('Fe/js/jquery.min.js') }}"></script>
  <!-- Bootstrap 4 -->
  <script src="{{ asset('Fe/js/bootstrap.bundle.min.js') }}"></script>
  <script>
    window.myConfig = {
      baseURL: "{{ asset('') }}"
    };
  </script>

</html>