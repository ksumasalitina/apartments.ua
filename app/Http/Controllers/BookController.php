<?php

namespace App\Http\Controllers;
use App\Models\Booking;
use App\Models\Profile;
use App\Models\User;
use DateTime;
use App\Models\Apartment;
use App\Models\Room;
use Illuminate\Http\Request;
use Auth;
use function PHPUnit\Framework\isEmpty;

class BookController extends Controller
{
    public function book(Request $request){
        $room = Room::find($request['room']);
        $apartment = Apartment::find($request['apartment']);
        $startDate = request()->cookie('startDate');
        $startDate2 = DateTime::createFromFormat("Y-m-d", $startDate);
        $endDate = request()->cookie('endDate');
        $endDate1 = DateTime::createFromFormat("Y-m-d", $endDate);
        $lastName = Profile::select('lastname')->where('user_id', '=', auth()->user()->id)->get();
        $days = $endDate1->diff($startDate2)->d;
        $total = $room->cost*$days;
        $people = request()->cookie('people');
        if(Auth::check()){
        return view('book', [
            'room'=>$room,
            'apartment'=>$apartment,
            'startDate'=>$startDate,
            'endDate'=>$endDate,
            'people'=>$people,
            'total'=>$total]);}
        else{
            return redirect(route('auth.login'));
        }
    }

    public function recordBooking(Request $request){
        $user = auth()->user()->id;
        $startDate = request()->cookie('startDate');
        $endDate = request()->cookie('endDate');
        $people = request()->cookie('people');
        $booking = Booking::create([
           'user_id'=>$user,
            'firstName'=>$request['firstName'],
            'lastName'=>$request['lastName'],
            'apartment_id'=>$request['apartment-id'],
            'apartment_name'=>$request['apartment_name'],
            'room_id'=>$request['room-id'],
            'arrival'=>$startDate,
            'departure'=>$endDate,
            'total'=>$request['total'],
            'people'=>$people
        ]);
        if($booking){
            return view('success');
        }
        else{
            return 'Трапилася помилка, спробуйте ще раз';
        }
    }
}
