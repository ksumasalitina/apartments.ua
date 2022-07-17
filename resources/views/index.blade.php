@extends('layouts.app')

@section('title')
    Головна
@endsection

@section('content')
    <div>
        <h2 class="find-apart">Знайти житло</h2>
        <form class="col-md-15 text-center" action="{{route('find')}}" method="POST">
            @csrf
            <input type="text" placeholder="Куди їдете" class="find-form" name="place" list="cities">
            <datalist id="cities">
                @foreach($cities as $c)
                    <option>{{$c->city}}</option>
                @endforeach
            </datalist>
            <input type="date" placeholder="З"  class="find-form" min="{{date("Y-m-d")}}" name="startDate">
            <input type="date" placeholder="По" class="find-form" min="{{date("Y-m-d",mktime(0, 0, 0, date("m")  , date("d")+1, date("Y")))}}" name="endDate">
            <select class="find-form" name="people">
                <option selected disabled>Людей</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
            </select>
            <button type="submit" class="btn btn-dark">Пошук</button>
        </form>
        <div class="alert-danger">
        @error('place')
        <p class="error" style="text-align:center">{{$message}}</p>
        @enderror
        @error('startDate')
            <p class="error" style="text-align:center">{{$message}}</p>
        @enderror
        @error('endDate')
            <p class="error" style="text-align:center">{{$message}}</p>
        @enderror
        @error('people')
            <p class="error" style="text-align:center">{{$message}}</p>
        @enderror
        </div>
        <h2 class="find-apart">Найкращі пропозиції!</h2>
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
            </div>
        @endforeach

    </div>
@endsection
