@extends('layouts.app')

@section('title')
Реєстрація
@endsection

@section('content')
    <div class="text-center">
        <form action="{{route('register_process')}}" method="POST">
            @csrf
            <h1 class="h3 mb-3 fw-normal">Реєстрація</h1>
            <div>
                <label style="margin-bottom: 15px" for="name">Ваше імʼя:</label> <br>
                <input type="text" class="find-form" placeholder="Олена" name="name" id="name" style="margin-bottom: 15px">
                @error('name')
                <p class="error">{{$message}}</p>
                @enderror
            </div>
            <div>
                <label style="margin-bottom: 15px" for="email">Email:</label> <br>
                <input type="email" class="find-form" placeholder="name@example.com" name="email" id="email"  style="margin-bottom: 15px">
                @error('email')
                <p class="error">{{$message}}</p>
                @enderror
            </div>
            <div>
                <label style="margin-bottom: 15px" for="password">Пароль:</label><br>
                <input type="password" class="find-form" placeholder="Password" name="password" id="password"  style="margin-bottom: 15px">
            </div>
            <div>
                <label style="margin-bottom: 15px" for="confPassword">Підтвердіть пароль:</label><br>
                <input type="password" class="find-form" placeholder="Password" name="password_confirmation" id="password_confirmation"  style="margin-bottom: 15px">
                @error('password')
                <p class="error">{{$message}}</p>
                @enderror
            </div>
            <button class="btn btn-dark" type="submit">Зареєструватися</button>
        </form>
    </div>

@endsection
