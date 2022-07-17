@extends('layouts.app')

@section('title')
    Бронювання
@endsection

@section('content')
    <h1 align="center">Підтвердіть бронювання</h1>
    <form action="{{route('recordBooking')}}" method="POST" style="margin-top: 15px">
        @csrf
        <div class="center-box w-50">
        <div class="row">
            <div class="col-sm-6">
                <label for="firstName" class="form-label">Імʼя</label>
                <input type="text" class="form-control" id="firstName" name="firstName"
                       value="{{auth()->user()->name}}" required>
            </div>
            <div class="col-sm-6">
                <label for="lastName" class="form-label">Прізвище</label>

                <input type="text" class="form-control" id="lastName" name="lastName" value="" required>

            </div>
            <div class="col-12" style="margin-top: 15px">
                <label for="email" class="form-label">Email</label>
                <input type="text" disabled class="form-control" id="email" name="email" value="{{auth()->user()->email}}" required>
            </div>
            <div class="col-12" style="margin-top: 15px">
                <label for="city" class="form-label">Місто</label>
                <input type="text" disabled class="form-control" id="city" name="city" value="{{$apartment->city}}" required>
            </div>
            <div class="col-12" style="margin-top: 15px">
            <label for="apartment" class="form-label">Назва помешкання</label>
            <input type="text" disabled class="form-control" id="apartment" name="apartment" value="{{$apartment->name}}" required>
            </div>
            <div class="col-12" style="margin-top: 15px">
                <label for="startDate" class="form-label">Дата заселення</label>
                <input type="text" disabled class="form-control" id="startDate" name="startDate" value="{{$startDate}}" required>
            </div>
            <div class="col-12" style="margin-top: 15px">
                <label for="endDate" class="form-label">Дата виїзду</label>
                <input type="text" disabled class="form-control" id="endDate" name="endDate" value="{{$endDate}}" required>
            </div>
            <div class="col-12" style="margin-top: 15px">
                <label for="people" class="form-label">Кількість гостей</label>
                <input type="text" disabled class="form-control" id="people" name="people" value="{{$people}}" required>
            </div>
            <div style="margin-top: 15px" class="col-sm-6">
            <h5><em>Сума до сплати:</em></h5>
                <p>{{$total}} UAH</p>
            </div>
            <div style="margin-top: 20px" class="col-sm-6">
                <input type="hidden" name="apartment_name" value="{{$apartment->name}}">
                <input type="hidden" name="apartment-id" value="{{$apartment->id}}">
                <input type="hidden" name="room-id" value="{{$room->id}}">
                <input type="hidden" name="total" value="{{$total}}">
                @if(auth()->user()->email_verified_at != null)
            <button type="submit" class="btn btn-danger w-50">Підтвердити</button>
                @else
                    <div>
                <span class="alert-danger">Ваш email не підтвердженно.
                    Будь ласка перевірте пошту та перейдіть за посиланням для підтвердження.</span><br>
                    <a href="{{route('verification.send')}}">Надіслати email повторно</a>
                    </div>
                    <button disabled type="submit" class="btn btn-danger w-50">Підтвердити</button>
                @endif
            </div>
        </div>
        </div>
    </form>
@endsection
