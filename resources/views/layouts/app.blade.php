<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="{{asset('/css/app.css')}}" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <title>@yield('title')</title>
</head>
<body>
<div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
        <a href="/" class=" col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
            <p class="header_text">WHEN YOU ARE</p>
            <h1 class="header_text">APARTments.ua</h1>
            <p class="header_text">FROM HOME</p>
        </a>
            <div class="col-md-4 text-end">

                @auth("web")
                    <a href="{{route('profile')}}" class="btn">Вітаємо, {{auth()->user()->name}}</a>
                    <a href="{{route('logout')}}" class="btn btn-outline-danger">Вийти</a>
                @endauth
                @guest("web")
                    <a href="{{route('register')}}" class="btn btn-outline-danger" >Реєстарція</a>
                    <a class="btn btn-outline-danger" href="{{route('login')}}">Вхід</a>
                    <a class="btn btn-outline-danger">Зареєструвати житло</a>
               @endguest
            </div>
    </header>
</div>
<div id="app">
@yield('content')

</div>

    <footer class="footer mt-auto py-3">
        <div class="container">
        <p class="text-center text-muted">© 2022 Company, Inc</p>
</div>
    </footer>

<script src="{{asset('/js/app.js')}}"></script>
</body>
</html>
