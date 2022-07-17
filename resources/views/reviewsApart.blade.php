@extends('layouts.app')
@section('title')
    Відгуки
@endsection

@section('content')
    @foreach($apart as $a)
    <h2 align="center">Відгуки {{$a->name}}</h2>
    @auth("web")
        @if(auth()->user()->email_verified_at == null)
            <span class="alert-danger">Ваш email не підтвердженно.
                             Будь ласка перевірте пошту та перейдіть за посиланням для підтвердження.</span>
            <a href="{{route('verification.send')}}">Надіслати email повторно</a>
            <button class="btn btn-dark" disabled style="margin-left: 3%">Залишити відгук</button>
        @else
    <button class="btn btn-dark" @click="showReviewForm" style="margin-left: 3%">Залишити відгук</button>
        @endif
    @endauth
    <div id="div1" style="margin: 3%">
    <form action="{{route('send-review')}}" method="POST">
        @csrf
        <div>
            <select class="find-form" name="stars">
                <option selected disabled>Оцінка</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>
        </div>
        <div>
            <textarea type="text"  class="comment" id="comment" name="comment" placeholder="Введіть коментар..." style="margin-bottom: 20px">
            </textarea>
        </div>
        <input type="hidden" name="apartment_id" value="{{$a->id}}">
        <input type="hidden" name="apartment_name" value="{{$a->name}}">
        <button type="submit" class="btn btn-outline-danger">Відправити</button>
    </form>
    </div>
    @endforeach
@foreach($reviews as $r)
    <div class="p-3 w-75 bg-light border rounded-3 center-box" style="margin-bottom: 10px">
        <h4>{{$r->user_name}}</h4>
        <div>
            <div style="display: inline-block">
                <p><b>Оцінка: </b></p>
            </div>
            <div style="display: inline-block">
                <p>{{$r->stars}}</p>
            </div>
        </div>
        <p align="center" style="margin-top: 15px" class="fw-light">{{$r->comment}}</p>
    </div>
@endforeach
@endsection
