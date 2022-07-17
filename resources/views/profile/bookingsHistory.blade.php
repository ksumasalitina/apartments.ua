@extends('layouts.app')

@section('title')
    Бронювання
@endsection

@section('content')
    <main class="d-flex flex-nowrap">
        @include('profile.sidebar')
        <div class="w-75">
        @foreach($bookings as $b)
            <div class="p-3 w-75 bg-light border rounded-3" style="margin-bottom: 10px">
                <div style="height: 35px">
                <div style="display: inline-block">
                    <h4 style="color: #6a1a21">Номер бронювання: </h4>
                </div>
                <div style="display: inline-block">
                    <p style="font-size: 20px"><em>{{$b->id}}</em></p>
                </div>
                </div>

                <div style="height: 35px">
                    <div style="display: inline-block">
                        <h4 style="color: #6a1a21">Гість: </h4>
                    </div>
                    <div style="display: inline-block">
                        <p style="font-size: 20px"><em>{{$b->firstName}} {{$b->lastName}}</em></p>
                    </div>
                </div>

                <div style="height: 35px">
                    <div style="display: inline-block">
                        <h4 style="color: #6a1a21">Назва помешкання: </h4>
                    </div>
                    <div style="display: inline-block">
                        <p style="font-size: 20px"><em>{{$b->apartment_name}}</em></p>
                    </div>
                </div>

                <div style="height: 35px">
                    <div style="display: inline-block">
                        <h4 style="color: #6a1a21">З: </h4>
                    </div>
                    <div style="display: inline-block">
                        <p style="font-size: 20px"><em>{{$b->arrival}}</em></p>
                    </div>
                </div>

                <div style="height: 35px">
                    <div style="display: inline-block">
                        <h4 style="color: #6a1a21">По: </h4>
                    </div>
                    <div style="display: inline-block">
                        <p style="font-size: 20px"><em>{{$b->departure}}</em></p>
                    </div>
                </div>

                <div style="height: 35px">
                    <div style="display: inline-block">
                        <h4 style="color: #6a1a21">Кількість людей: </h4>
                    </div>
                    <div style="display: inline-block">
                        <p style="font-size: 20px"><em>{{$b->people}}</em></p>
                    </div>
                </div>

                <div style="height: 35px">
                    <div style="display: inline-block">
                        <h4 style="color: #6a1a21">Загальна вартість: </h4>
                    </div>
                    <div style="display: inline-block">
                        <p style="font-size: 20px"><em>{{$b->total}} UAH</em></p>
                    </div>
                </div>
            </div>

            @endforeach
        </div>
    </main>
@endsection
