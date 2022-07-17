@extends('layouts.app')

@section('title')
    Профіль
@endsection

@section('content')
    <main class="d-flex flex-nowrap">
    @include('profile.sidebar')
        <form action="{{route('update')}}" method="POST" style="margin-top: 15px">
            @csrf
            @foreach($profile as $p)
            <div class="center-box w-75">
                <div class="row">
                    <div class="col-sm-6">
                        <label for="firstName" class="form-label">Імʼя</label>
                        <input type="text" class="form-control" id="firstName" name="firstName"
                               value="{{auth()->user()->name}}" required>
                    </div>
                    <div class="col-sm-6">
                        <label for="lastName" class="form-label">Прізвище</label>
                        <input type="text" class="form-control" id="lastName" name="lastName" value="{{$p->lastname}}">
                    </div>
                    <div class="col-12" style="margin-top: 15px">
                        <label for="email" class="form-label">Email</label>
                        <input type="text" disabled class="form-control" id="email" name="email" value="{{auth()->user()->email}}" required>
                        @if(auth()->user()->email_verified_at == null)
                            <span class="alert-danger">Ваш email не підтвердженно.
                             Будь ласка перевірте пошту та перейдіть за посиланням для підтвердження.</span>
                            <a href="{{route('verification.send')}}">Надіслати email повторно</a>
                        @endif
                    </div>
                    <div class="col-12" style="margin-top: 15px">
                        <label for="phone" class="form-label">Номер телефону</label>
                        <input type="text" class="form-control" id="phone" name="phone" value="{{$p->phone}}">
                    </div>
                    <div class="col-12" style="margin-top: 15px">
                        <label for="dob" class="form-label">Дата народження</label>
                        <input type="date" class="form-control" id="dob" name="dob" value="{{$p->dob}}">
                    </div>
                    <div class="col-12" style="margin-top: 15px">
                        <label for="nationality" class="form-label">Національність</label>
                        <input type="text" class="form-control" id="nationality" name="nationality" value="{{$p->nationality}}">
                    </div>
                    <div class="my-3">
                        <p class="form-label">Стать</p>
                        @if($p->gender == 'ж')
                        <div class="form-check">
                            <input id="male" name="gender" type="radio" class="form-check-input" value="ч">
                            <label class="form-check-label" for="male">Чоловіча</label>
                        </div>
                        <div class="form-check">
                            <input id="female" name="gender" type="radio" class="form-check-input" value="ж" checked>
                            <label class="form-check-label" for="female">Жіноча</label>
                        </div>
                        @elseif($p->gender == 'ч')
                            <div class="form-check">
                            <input id="male" name="gender" type="radio" class="form-check-input" value="ч" checked>
                            <label class="form-check-label" for="male">Чоловіча</label>
                    </div>
                    <div class="form-check">
                        <input id="female" name="gender" type="radio" class="form-check-input" value="ж" >
                        <label class="form-check-label" for="female">Жіноча</label>
                    </div>
                        @else
                            <div class="form-check">
                                <input id="male" name="gender" type="radio" class="form-check-input" value="ч">
                                <label class="form-check-label" for="male">Чоловіча</label>
                            </div>
                            <div class="form-check">
                                <input id="female" name="gender" type="radio" class="form-check-input" value="ж" >
                                <label class="form-check-label" for="female">Жіноча</label>
                            </div>
                            @endif
                    </div>
                </div>
                <button type="submit" class="btn btn-danger">Зберегти</button>
            </div>
            @endforeach
        </form>
    </main>
@endsection
