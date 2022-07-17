<?php

namespace App\Http\Controllers;

use App\Models\Apartment;
use App\Models\Booking;
use App\Models\Favorite;
use App\Models\Profile;
use App\Models\Review;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Auth;

class ProfileController extends Controller
{
    public function showProfile(){

        $profile=DB::table('profiles')->where('user_id','=', auth()->user()->id)->get();
        return view('profile.profileInfo',['profile'=>$profile]);
    }
    public function showBookings(){
        $bookings = Booking::get()->where('user_id','=', auth()->user()->id)->sortByDesc('arrival');
        return view('profile.bookingsHistory', ['bookings'=>$bookings]);
    }
    public function showFavorites(){
        $favs = Favorite::select('apartment_id')->where('user_id','=', auth()->user()->id)->get();
        $aparts = Apartment::whereIn('id', $favs)->get();
        return view('profile.favorites', ['apartments'=>$aparts]);
    }
    public function showReviews(){
        $reviews = Review::where('user_id', '=', auth()->user()->id)->get();
        return view('profile.reviews', ['reviews'=>$reviews]);
    }

    public function updateProfile(Request $request){
        DB::table('profiles')->where('user_id','=', auth()->user()->id)
            ->update(['lastname' => $request['lastName'],
                        'dob'=>$request['dob'],
                        'phone'=>$request['phone'],
                        'nationality'=>$request['nationality'],
                        'gender'=>$request['gender']]);
        return redirect(route('profile'));
    }

    public function deleteReview($id){
        Review::where('id', '=', $id)->delete();
        return redirect(route('reviews'));
    }
    public function deleteFavorite($id){
        Favorite::where('apartment_id', '=', $id)->delete();
        return redirect(route('favorites'));
    }

    public function addToFav($id){
        $user = auth()->user()->id;
        try{
        Favorite::create([
            'user_id'=>$user,
            'apartment_id'=>$id
        ]);}
        catch (\Exception $e){
            return redirect(route('info', $id));
        }
        return redirect(route('info', $id));
    }
}
