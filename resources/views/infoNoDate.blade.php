@extends('layouts.app')

@section('title')
{{$apartment->name}}
@endsection
@section('content')
<div class="bg-light rounded-3">
    <div class="wrapper2" style="margin-left: 4%">
        <div>
            <h2 align="center">{{$apartment->name}}</h2>
            <h5 style="margin-top: 15px"><em>Адреса:</em></h5>
            {{$apartment->street}}, {{$apartment->building}},
            {{$apartment->city}}, {{$apartment->postcode}}
            <h5 style="margin-top: 15px"><em>Телефон:</em></h5>{{$apartment->phone}}
            <h5 style="margin-top: 15px"><em>Email:</em></h5>{{$apartment->email}}
            <h5 style="margin-top: 15px"><em>Рейтинг:</em></h5>{{$apartment->rate}}
            <div style="margin-top: 15px">
                <div style="display: inline-block">
                    <a href="{{route('reviewsApart',$apartment->id)}}" class="btn btn-dark">Відгуки</a>
                </div>
                @auth("web")
                    <div style="display: inline-block">
                        <a href="{{route('add-favorite',$apartment->id)}}" class="btn btn-dark">Додати у вподобання</a>
                    </div>
                @endauth
            </div>
            <p align="center" style="margin-top: 15px" class="fw-light">{{$apartment->description}}</p>
        </div>
        <div class="wrapper1 p-5 w-50 mb-4 center-box" style="margin-right: 20%">
            <div class="box2">
                <img src="{{$apartment->image_1}}" class="rounded"  height="400px" width="550px"/>
            </div>
            <div>
                <img src="{{$apartment->image_2}}" class="rounded" width="250px" height="190px" />
            </div >
            <div>
                <img src="{{$apartment->image_3}}" class="rounded" width="250px"  height="190px"/>
            </div>
        </div>
    </div>
</div>
    <aparts-component :data='@json($apartment->id)' ></aparts-component>
@endsection
