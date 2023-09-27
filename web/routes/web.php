<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

// Route::get('/home', function () {
//     return view('home');
// });

Route::prefix('home')->group(function (){
    Route::get('/', [
        'as' => 'home.index',
        'uses' => 'App\Http\Controllers\HomeController@home'
    ]);
});

Route::prefix('phim')->group(function() {
    Route::get('/', [
        'as' => 'phim.dangchieu',
        'uses' => 'App\Http\Controllers\PhimController@dangchieu'
    ]);
    Route::get('/sapchieu', [
        'as' => 'phim.sapchieu',
        'uses' => 'App\Http\Controllers\PhimController@sapchieu'
    ]);
    Route::get('/dacbiet', [
        'as' => 'phim.dacbiet',
        'uses' => 'App\Http\Controllers\PhimController@dacbiet'
    ]);
    Route::get('/details/{Ma_phim}', [
        'as' => 'details',
        'uses' => 'App\Http\Controllers\PhimController@detail'
    ]);
});
