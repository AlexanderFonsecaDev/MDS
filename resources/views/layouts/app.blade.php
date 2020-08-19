<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'MDS') }}</title>

    <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i"
          rel="stylesheet">
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body>
    <div id="app">

        @include('sweetalert::alert')

        <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
            <div class="container">
                <a class="navbar-brand" href="/">{{ config('app.name', 'MDS') }}</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">Iniciar sesión</a>
                            </li>
                        @else
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('logout') }}"
                                   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">Cerrar sesión</a>
                                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                    @csrf
                                </form>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <header class="masthead text-center text-white">
            <div class="masthead-content">
                <div class="container">
                    @yield('header')
                </div>
            </div>
        </header>



        <section class="mt-4">
            <div class="container">
                @yield('content')
            </div>
        </section>

    </div>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
</body>
</html>
