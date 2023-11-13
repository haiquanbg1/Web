<?php

namespace App\Http\Controllers;

use App\Models\Slider;
use App\Models\DanhSachPhim;
use App\Models\ChiTietPhim;
use App\Models\Ve;
use App\Models\Ghe;
use App\Models\LichChieu;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    private $slider;
    private $danhsachphim;
    private $chitietphim;
    private $ve;
    private $lichchieu;

    public function __construct(DanhSachPhim $danhsachphim, ChiTietPhim $chitietphim, Slider $slider, Ve $ve, LichChieu $lichchieu)
    {
        $this->danhsachphim = $danhsachphim;
        $this->chitietphim = $chitietphim;
        $this->slider = $slider;
        $this->ve = $ve;
        $this->lichchieu = $lichchieu;
    }

    public function home()
    {
        $count = 0;
        $dataDS = $this->danhsachphim->all();
        $dataCT = $this->chitietphim->all();
        $dataSlider = $this->slider->all();
        $dataGhe = Ghe::all();

        $dataPhim = array();
        foreach($dataDS as $Phim)
        {
            $dataPhim[$Phim->Ma_phim] = 0;
        }

        foreach($this->ve->all() as $dataVe)
        {
            $dataMaPhim = $this->lichchieu->find($dataVe->Ma_lich_chieu)->Ma_phim;
            if($dataDS->find($dataMaPhim)->Trang_thai == 1)
            {
                $Gia = $dataGhe->find($dataVe->Ma_ghe)->Gia;
                $dataPhim[$dataMaPhim] += $Gia;
            }
        }
        arsort($dataPhim);

        $ans = array();
        $dem = 0;
        foreach($dataPhim as $Phim => $Phimvalue)
        {
            $ans[$Phim] = $Phimvalue;
            $dem++;
            if($dem == 3)
                break;
        }

        return view('home', compact('dataSlider','dataDS', 'ans', 'dataCT', 'count'));
    }

    public function logout()
    {
        Auth::logout();
        return redirect()->route('home.index');
    }

    public function giave()
    {
        return view('sidebar.giave');
    }

    public function news()
    {
        return view('sidebar.news');
    }

    public function thongtin()
    {
        $user = Auth::User();
        $dataVe = $this->ve->all();
        $dataGhe = Ghe::all();
        return view('sidebar.thongtin', compact('user', 'dataVe', 'dataGhe'));
    }
}
