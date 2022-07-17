@extends('layouts.app')

@section('title')
    Відгуки
@endsection

@section('content')
    <main class="d-flex flex-nowrap">
        @include('profile.sidebar')
        <div class="w-75">
        @foreach($reviews as $r)
            <div style="{height: auto}" class="w-75">
            <div class="p-3 w-75 bg-light border rounded-3 center-box" style="margin-bottom: 10px">
                <h4>{{$r->apartment_name}}</h4>
                <div>
                    <div style="display: inline-block">
                        <p><b>Оцінка: </b></p>
                    </div>
                    <div style="display: inline-block">
                        <p>{{$r->stars}}</p>
                    </div>
                </div>
                <p align="center" style="margin-top: 15px" class="fw-light">{{$r->comment}}</p>
                <a href="{{route('delete-review', $r->id)}}" class="btn btn-dark">Удалить</a>
            </div></div>
        @endforeach
        </div>
    </main>
@endsection
