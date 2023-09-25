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

Route::get('/', 'AdminController@Adminlogin');
Route::post('/', 'AdminController@Login');

Route::get('/home', function () {
    return view('home');
});

Route::prefix('danhsachphim')->group(function () {
    Route::get('/create', [
        'as' => 'danhsachphim.create',
        'uses' => 'DanhSachPhimController@create'
    ]);
    Route::get('/', [
        'as' => 'danhsachphim.index',
        'uses' => 'DanhSachPhimController@index'
    ]);
    Route::post('/store', [
        'as' => 'danhsachphim.store',
        'uses' => 'DanhSachPhimController@store'
    ]);
    Route::get('/edit/{Ma_phim}', [
        'as' => 'danhsachphim.edit',
        'uses' => 'DanhSachPhimController@edit'
    ]);
    Route::get('/info/{Ma_phim}', [
        'as' => 'danhsachphim.info',
        'uses' => 'DanhSachPhimController@info'
    ]);
    Route::get('/delete/{Ma_phim}', [
        'as' => 'danhsachphim.delete',
        'uses' => 'DanhSachPhimController@delete'
    ]);
    Route::post('/update/{Ma_phim}', [
        'as' => 'danhsachphim.update',
        'uses' => 'DanhSachPhimController@update'
    ]);
});

Route::prefix('lichchieu')->group(function () {
    Route::get('/create', [
        'as' => 'lichchieu.create',
        'uses' => 'LichChieuController@create'
    ]);
    Route::get('/', [
        'as' => 'lichchieu.index',
        'uses' => 'LichChieuController@index'
    ]);
    Route::post('/store', [
        'as' => 'lichchieu.store',
        'uses' => 'LichChieuController@store'
    ]);
    Route::get('/delete/{Ma_lich_chieu}', [
        'as' => 'lichchieu.delete',
        'uses' => 'LichChieuController@delete'
    ]);
});

Route::prefix('slider')->group(function () {
    Route::get('/create', [
        'as' => 'slider.create',
        'uses' => 'SliderController@create'
    ]);
    Route::get('/', [
        'as' => 'slider.index',
        'uses' => 'SliderController@index'
    ]);
    Route::post('/store', [
        'as' => 'slider.store',
        'uses' => 'SliderController@store'
    ]);
    Route::get('/delete/{id}', [
        'as' => 'slider.delete',
        'uses' => 'SliderController@delete'
    ]);
});

