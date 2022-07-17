<?php

namespace App\Http\Controllers;

use App\Models\Apartment;
use App\Models\Booking;
use App\Models\City;
use App\Models\Room;
use Cookie;
//use Facade\FlareClient\View;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use function view;
use View;
class HomeController extends Controller
{
    public function page(){
        $apartments = Apartment::get()->where('rate','>', 4.5)->sortByDesc('rate');
        $cities = Apartment::select('city')->get();
        return view('index',['apartments'=>$apartments, 'cities'=>$cities]);
    }

    public function find(Request $request){
        $data = $request->validate([
            'place'=> ['required'],
            'startDate' => ['required'],
            'endDate' => ['required'],
            'people' => ['required']
        ]);
        Cookie::queue('place', $data['place'], 10000000);
        Cookie::queue('startDate', $data['startDate'], 10000000);
        Cookie::queue('endDate', $data['endDate'], 10000000);
        Cookie::queue('people', $data['people'], 10000000);
        $rooms = Booking::select('room_id')
                ->where('departure', '>=', $data['startDate'])
                ->where('arrival', '<=', $data['endDate'])
                ->get();
        $result = DB::table('apartments')
            ->select('apartments.id', 'apartments.name', 'apartments.image_1', 'apartments.cost','apartments.description')
            ->join('rooms', 'rooms.apartment_id', '=', 'apartments.id')
            ->where('apartments.city',$data['place'])
            ->where('rooms.people','>=',$data['people'])
            ->whereNotIn('rooms.id', $rooms)->distinct()->get();
        return view('findApartments',['apartments'=>$result]);
}
}
