<?php

namespace App\Http\Controllers;

use App\Models\ChiTietPhim;
use App\Models\DanhSachPhim;
use App\Models\LichChieu;
use Carbon\Carbon;
use Illuminate\Http\Request;

class PhimController extends Controller
{
    private $danhsachphim;
    private $chitietphim;
    private $lichchieu;
    private $Now;

    public function __construct(DanhSachPhim $danhsachphim, ChiTietPhim $chitietphim, LichChieu $lichchieu)
    {
        $this->danhsachphim = $danhsachphim;
        $this->chitietphim = $chitietphim;
        $this->lichchieu = $lichchieu;
        $this->Now = Carbon::now('Asia/Ho_Chi_Minh');
    }

    public function dangchieu()
    {
        $Date = Carbon::now('Asia/Ho_Chi_Minh');
        $DataDS = $this->danhsachphim->all()->where('Ngay_khoi_chieu', '<=', $this->Now)->where('Trang_thai', '=', 1);
        $DataCT = $this->chitietphim->all();
        return view('phim.dangchieu', compact('DataDS', 'DataCT', 'Date'));
    }

    public function sapchieu()
    {
        $Date = Carbon::now('Asia/Ho_Chi_Minh');
        $DataDS = $this->danhsachphim->all()->where('Ngay_khoi_chieu', '>', $this->Now)->where('Trang_thai', '=', 1);
        $DataCT = $this->chitietphim->all();
        return view('phim.sapchieu', compact('DataDS', 'DataCT', 'Date'));
    }

    public function dacbiet()
    {
        return view('phim.dacbiet');
    }

    public function detail($Ma_phim)
    {
        $Date = Carbon::now('Asia/Ho_Chi_Minh');
        $DataDS = $this->danhsachphim->find($Ma_phim);
        $DataCT = $this->chitietphim->find($Ma_phim);
        $LC = $this->lichchieu->all()->sortBy('Gio_chieu')->where('Ma_phim', '=', $DataDS->Ma_phim);

        if($Date < $DataDS->Ngay_khoi_chieu)
            $Date = new Carbon($DataDS->Ngay_khoi_chieu);
        return view('phim.phimdetails', compact('DataDS', 'DataCT', 'LC', 'Date'));
    }
}
