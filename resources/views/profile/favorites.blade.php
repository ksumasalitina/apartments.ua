@extends('layouts.app')

@section('title')
    Вподобання
@endsection

@section('content')
    <main class="d-flex flex-nowrap">
        @include('profile.sidebar')
        <div class="w-75">
        @foreach($apartments as $x)
            <div class="p-3 w-75 bg-light border rounded-3 center-box wrapper" style="margin-bottom: 10px">
                <div class="box1">
                    <img src="{{$x->image_1}}" class="w-100" />
                </div>
                <div>
                    <h2 class="text-center"><a class="link-dark" href="{{route('info-def', $x->id)}}" target="_blank">{{$x->name}}</a></h2>
                </div>
                <div>
                    <p class="text-center">{{$x->description}}</p>
                </div>
                <div>
                    <h3 align="right" style="margin-top: 50px">{{$x->cost}} UAH</h3>
                </div>
                <a href="{{route('delete-fav', $x->id)}}" class="btn btn-dark">Удалить</a>
            </div>
        @endforeach
        </div>
    </main>
@endsection
