@extends('layouts.app')

@section('title')
    Вхід
@endsection

@section('content')
    <div class="text-center">
        <form action="{{route('login_process')}}" method="POST">
            @csrf
            <h1 class="h3 mb-3 fw-normal">Введіть дані для входу</h1>
            <div>
                <label style="margin-bottom: 15px" for="email">Email:</label> <br>
                <input type="email" class="find-form" placeholder="name@example.com" name="email" id="email" style="margin-bottom: 20px">
                @error('email')
                <p class="error">{{$message}}</p>
                @enderror
            </div>
            <div>
                <label style="margin-bottom: 15px" for="password">Пароль:</label><br>
                <input type="password" class="find-form" id="password" name="password" placeholder="Password" style="margin-bottom: 20px">
                @error('password')
                <p class="error">{{$message}}</p>
                @enderror
            </div>
            <a href="{{route('forgot')}}">Забули пароль?</a>
            <button class="btn btn-dark" type="submit">Увійти</button>
        </form>
    </div>
@endsection
