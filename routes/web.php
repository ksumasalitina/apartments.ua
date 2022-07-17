<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\InfoController;
use \Illuminate\Foundation\Auth\EmailVerificationRequest;
use App\Http\Controllers\BookController;
use App\Http\Controllers\ProfileController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [HomeController::class,'page'])->name('home');

Route::middleware("auth")->group(function (){
    Route::get('/logout',[AuthController::class, 'logout'])->name('logout');
    Route::get('/account/profile',[ProfileController::class, 'showProfile'])->name('profile');
    Route::get('/account/bookings',[ProfileController::class, 'showBookings'])->name('bookings');
    Route::get('/account/favorites',[ProfileController::class, 'showFavorites'])->name('favorites');
    Route::post('/account/update', [ProfileController::class, 'updateProfile'])->name('update');
    Route::get('/account/reviews', [ProfileController::class, 'showReviews'])->name('reviews');
    Route::get('/account/reviews/{id}/delete', [ProfileController::class, 'deleteReview'])->name('delete-review');
    Route::get('/account/favorites/{id}/delete', [ProfileController::class, 'deleteFavorite'])->name('delete-fav');
});
Route::middleware("guest")->group(function (){
    Route::get('/login', [AuthController::class,'showLogin'])->name('login');
    Route::post('/login_process', [AuthController::class,'login'])->name('login_process');

    Route::get('/register', [AuthController::class,'showRegister'])->name('register');
    Route::post('/register_process', [AuthController::class,'register'])->name('register_process');

    Route::get('/forgot', [AuthController::class,'showForgot'])->name('forgot');
    Route::post('/forgot_process', [AuthController::class,'forgot'])->name('forgot_process');
});

Route::get('/email/verify', [AuthController::class,'showVerifyEmail'])->middleware('auth')->name('verification.notice');
Route::get('/email/verification-notification', [AuthController::class,'verifyNotification'
])->middleware(['auth', 'throttle:6,1'])->name('verification.send');

Route::get('/email/verify/{id}/{hash}', function (EmailVerificationRequest $request){
    $request->fulfill();
    return redirect(route('home'));
})->middleware(['auth','signed'])->name('verification.verify');

Route::post('/apartments/find', [HomeController::class, 'find'])->name('find');
Route::get('/apartments/info/{id}/reviews',[InfoController::class, 'showReviews'])->name('reviewsApart');
Route::get('/apartments/info/{id}',[InfoController::class, 'getInfo'])->name('info');
Route::get('/apartments/info/def/{id}',[InfoController::class, 'infoNoDate'])->name('info-def');
Route::post('/booking',[BookController::class, 'book'])->name('book');
Route::post('/booking/success', [BookController::class, 'recordBooking'])->name('recordBooking');
Route::post('/apartments/send', [InfoController::class, 'sendReview'])->name('send-review');
Route::get('/apartments/add/{id}',[ProfileController::class, 'addToFav'])->name('add-favorite');



