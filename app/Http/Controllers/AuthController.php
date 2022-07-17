<?php

namespace App\Http\Controllers;

use App\Jobs\ForgotUserEmailJob;
use App\Mail\ForgotPassword;
use App\Models\User;
use Illuminate\Auth\Events\Registered;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use function auth;
use function back;
use function bcrypt;
use function event;
use function redirect;
use function view;


class AuthController extends Controller
{
    public function showLogin(){
        return view('auth.signinForm');
    }
    public function showRegister(){
        return view('auth.registerForm');
    }
    public function showForgot(){
        return view('auth.forgotPassword');
    }
    public function showVerifyEmail(){
        return view('auth.verify-email');
    }
    public function forgot(Request $request){
        $data = $request->validate([
            "email" => ["required", "email", "string", "exists:users"]
        ]);
        $user = User::where(["email"=>$data['email']])->first();
        $password = uniqid();
        $user->password = bcrypt($password);
        $user->save();
        Mail::to($user)->send(new ForgotPassword($password));
        return redirect(route('login'));
    }

    public function logout(){
        auth("web")->logout();
        return redirect(route('home'));
    }

    public function login(Request $request){
        $data = $request->validate([
            "email" => ["required", "email", "string"],
            "password" => ["required", "min:8"],
        ]);
        if(auth("web")->attempt($data)){
            return redirect(route('home'));
        }
        return redirect(route('login'))->withErrors(['email'=> "Неправильний email або пароль"]);
    }

    public function register(Request $request){
        $data = $request->validate([
            "name" => ["required"],
            "email" => ["required", "email", "string", "unique:users,email"],
            "password" => ["required", "confirmed", "min:8"],
        ]);

        $user = User::create([
            "name" => $data['name'],
            "email" => $data['email'],
            "password" => bcrypt($data['password'])
        ]);
        if($user){
            event(new Registered($user));
            auth("web")->login($user);

            return redirect(route('verification.notice'));
        }
        return redirect(route('home'));
    }

    public function verifyNotification(Request $request){
        $request->user()->sendEmailVerificationNotification();
        return back()->with('message', 'Verification link send');
    }
}
