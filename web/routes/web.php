<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\Admin\Users\LoginController;
use App\Http\Controllers\admin\users\RegisterController;
use App\Http\Controllers\PostController;
use GuzzleHttp\Middleware;
use Illuminate\Routing\Controllers\Middleware as ControllersMiddleware;

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

Route::prefix('home')->group(function (){
    Route::get('/', [
        'as' => 'home.index',
        'uses' => 'App\Http\Controllers\HomeController@home'
    ]);
    Route::get('/logout',[HomeController::class,'logout'])->name('logout');
});

// route::middleware(['auth']) ->group(function(){
//     route::get('home/admin',[HomeController::class,'home']) -> name('admin');
// });

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
    Route::get('/datve/{Ma_phim}/{Ma_lich_chieu}', [
        'as' => 'phim.datve',
        'uses' => 'App\Http\Controllers\PhimController@datve'
    ]);
    
    Route::get('/xacnhan/{Ma_phim}/{Ma_lich_chieu}', [
        'as' => 'ghe.xacnhan',
        'uses' => 'App\Http\Controllers\GheController@xacnhan'
    ]);
    Route::post('/hoadon/{Ma_lich_chieu}', [
        'as' => 'ghe.hoadon',
        'uses' => 'App\Http\Controllers\GheController@hoadon'
    ]);
});

Route::prefix('ghe')->group(function() {
    Route::post('them/{Ma_ghe}/{Ma_lich_chieu}', [
        'as' => 'themghe',
        'uses' => 'App\Http\Controllers\GheController@them'
    ]);
    Route::post('xoa/{Ma_ghe}/{Ma_lich_chieu}', [
        'as' => 'xoaghe',
        'uses' => 'App\Http\Controllers\GheController@xoa'
    ]);
});


route::get('/login',[LoginController::class,'index'])->name('login');

route::post('/login/store',[LoginController::class,'store']);

Route::prefix('register')->group(function (){
    route::get('/',[RegisterController::class,'register']) -> name('register');

    Route::post('/add',[RegisterController::class,'add'])->name('add');
});
