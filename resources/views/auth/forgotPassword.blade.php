@extends('layouts.app')

@section('title')
    Відновлення паролю
@endsection

@section('content')
    <div class="text-center">
        <form action="{{route('forgot_process')}}" method="POST">
            @csrf
            <h1 class="h3 mb-3 fw-normal">Введіть email для відновлення паролю</h1>
            <div>
                <label style="margin-bottom: 15px" for="email">Email:</label> <br>
                <input type="email" class="find-form" placeholder="name@example.com" name="email" id="email" style="margin-bottom: 20px">
                @error('email')
                <p class="error">{{$message}}</p>
                @enderror
            <button class="btn btn-dark" type="submit">Відправити</button>
        </form>
    </div>
@endsection
