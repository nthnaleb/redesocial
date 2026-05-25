<?php

namespace App\Http\Controllers; 

use App\Http\Controllers; 

class WebsiteController extends Controller{

    public function explore(){
        return view('website.explore');
    }
    public function home(){
        return view('website.home');
    }
    public function login(){
        return view('website.login');
    }
    public function messages(){
        return view('website.messages');
    }
    public function notification(){
        return view('website.notification');
    }
    public function profile(){
        return view('website.profile');
    }
    public function reels(){
        return view('website.reels');
    }
    public function sign_up(){
        return view('website.sign_up');
    }
    


}