@extends('layouts.app')

@section('title')
    Вхід
@endsection

@section('content')
    <div class="text-center">
        <h1>Вам надіслано email для верифікації!</h1>
        <h2>Будь ласка підтвердіть аккаунт.</h2>
        <a href="{{route('verification.send')}}">Надіслати повторно</a>
    </div>
@endsection
