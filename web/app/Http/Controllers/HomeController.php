<?php

namespace App\Http\Controllers;

use App\Models\Slider;
use App\Models\DanhSachPhim;
use App\Models\ChiTietPhim;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    private $slider;
    private $danhsachphim;
    private $chitietphim;

    public function __construct(DanhSachPhim $danhsachphim, ChiTietPhim $chitietphim, Slider $slider)
    {
        $this->danhsachphim = $danhsachphim;
        $this->chitietphim = $chitietphim;
        $this->slider = $slider;
    }

    public function home()
    {
        $count = 0;
        $dataDS = $this->danhsachphim->all()->take(3);
        $dataCT = $this->chitietphim->all();
        $dataSlider = $this->slider->all();
        return view('home', compact('dataSlider', 'dataDS', 'dataCT', 'count'));
    }
}
