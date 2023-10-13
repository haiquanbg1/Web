<?php

namespace App\Http\Controllers;

use App\Models\ChiTietPhim;
use App\Models\DanhSachPhim;
use App\Models\LichChieu;
use App\Models\Ghe;
use Carbon\Carbon;
use App\Models\Ve;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Request as FacadesRequest;

class PhimController extends Controller
{
    private $danhsachphim;
    private $chitietphim;
    private $lichchieu;
    private $Now;
    private $ghe;
    private $ve;

    public function __construct(DanhSachPhim $danhsachphim, ChiTietPhim $chitietphim, LichChieu $lichchieu, Ghe $ghe, Ve $ve)
    {
        $this->danhsachphim = $danhsachphim;
        $this->chitietphim = $chitietphim;
        $this->lichchieu = $lichchieu;
        $this->ghe = $ghe;
        $this->Now = Carbon::now('Asia/Ho_Chi_Minh');
        $this->ve = $ve;
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

    public function datve($Ma_phim, $Ma_lich_chieu)
    {
        $DataDS = $this->danhsachphim->find($Ma_phim);
        $DataCT = $this->chitietphim->find($Ma_phim);
        $LC = $this->lichchieu->find($Ma_lich_chieu);
        $DataGhe = $this->ghe->all()->where('Ma_phong', '=', $LC->Ma_phong);
        return view('phim.datve', compact('DataDS', 'DataCT', 'LC', 'DataGhe'));
    }

    public function xacnhan(Request $request)
    {
        // $demo = $request->cookie();
        // foreach($demo as $a) {
        //     echo $a . "\n";
        // }
    }
}
