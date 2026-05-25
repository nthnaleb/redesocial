<?php

use Illuminate\Support\Facades\Route;

route::get('/explore', 'App\Http\Controllers\WebsiteController@explore' );
route::get('/home', 'App\Http\Controllers\WebsiteController@home' );
route::get('/', 'App\Http\Controllers\WebsiteController@login' );
route::get('/messages', 'App\Http\Controllers\WebsiteController@messages' );
route::get('/notification', 'App\Http\Controllers\WebsiteController@notification' );
route::get('/profile', 'App\Http\Controllers\WebsiteController@profile' );
route::get('/reels', 'App\Http\Controllers\WebsiteController@reels' );
route::get('/sign_up', 'App\Http\Controllers\WebsiteController@sign_up' );
