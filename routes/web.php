<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

/*Auth::routes();*/

Route::get('login','LandingController@login')->name('login');
Route::post('login','Auth\LoginController@login');
Route::post('logout','Auth\LoginController@logout')->name('logout');
Route::post('registerGuest','LandingController@registerGuest')->name('registerGuest');


Route::get('/home', 'HomeController@index')->name('home');
Route::get('download','HomeController@download')->name('download');
