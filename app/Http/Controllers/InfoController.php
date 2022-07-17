<?php

namespace App\Http\Controllers;

use App\Models\Review;
use Cookie;
use App\Models\Apartment;
use Illuminate\Support\Facades\DB;
use App\Models\Room;
use App\Models\Booking;
use Illuminate\Http\Request;

class InfoController extends Controller
{
    public function getInfo($id){
        $startDate = request()->cookie('startDate');
        $endDate = request()->cookie('endDate');
        $people = request()->cookie('people');
       $notIn = Booking::select('room_id')
            ->where('departure', '>=', $startDate)
            ->where('arrival', '<=', $endDate)
            ->get();
        $rooms = Room::where('apartment_id', '=', $id)
            ->where('people', '>=', $people)
            ->whereNotIn('id', $notIn)->distinct()->get();
        $data = Apartment::find($id);
        return view('info', ['apartment'=>$data, 'rooms'=>$rooms]);
    }

    public function showReviews($id){
        $reviews = Review::where('apartment_id', '=', $id)->get();
        $apartment = Apartment::where('id', '=', $id)->get();
        return view('reviewsApart', ['reviews'=>$reviews, 'apart'=>$apartment]);
    }

    public function sendReview(Request $request){
        $user_id = auth()->user()->id;
        $user_name = auth()->user()->name;
        Review::create([
            'user_id'=>$user_id,
            'user_name'=>$user_name,
            'apartment_id' => $request['apartment_id'],
            'apartment_name'=>$request['apartment_name'],
            'stars'=>$request['stars'],
            'comment'=>$request['comment']
        ]);
      return redirect(route('reviewsApart',$request['apartment_id']));
    }

    public function infoNoDate($id){
        $data = Apartment::find($id);
        return view('infoNoDate', ['apartment'=>$data]);
    }
}
