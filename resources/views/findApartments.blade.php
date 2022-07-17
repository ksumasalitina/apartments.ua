@extends('layouts.app')

@section('title')
    Результати пошуку
@endsection

@section('content')
    @if(count($apartments)==0)
        <h3 class="text-center">Вибачте, за вашим запитом нічого не знайдено:(</h3>
    @else
@foreach($apartments as $x)
    <div class="p-3 w-75 bg-light border rounded-3 center-box wrapper" style="margin-bottom: 10px">
        <div class="box1">
            <img src="{{$x->image_1}}" class="w-100" />
        </div>
        <div>
            <h2 class="text-center"><a class="link-dark" href="{{route('info', $x->id)}}" target="_blank">{{$x->name}}</a></h2>
        </div>
        <div>
            <p class="text-center">{{$x->description}}</p>
        </div>
        <div>
            <h3 align="right" style="margin-top: 50px">{{$x->cost}} UAH</h3>
        </div>
    </div>
@endforeach
    @endif
@endsection
