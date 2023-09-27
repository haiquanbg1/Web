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
        $DataDS = $this->danhsachphim->all()->where('Ngay_khoi_chieu', '<=', $this->Now);
        $DataCT = $this->chitietphim->all();
            // foreach($DataDS as $data)
            // {
            //     if($data->Ngay_khoi_chieu > $Now->toDateString())
            //     {
            //         //$DataCT->find($data->Ma_phim)->delete();
            //         $DataDS->find($data->Ma_phim)->delete();
            //     }
            // }
        return view('phim.dangchieu', compact('DataDS', 'DataCT'));
    }

    public function sapchieu()
    {
        $DataDS = $this->danhsachphim->all()->where('Ngay_khoi_chieu', '>', $this->Now);
        $DataCT = $this->chitietphim->all();
            // foreach($DataDS as $data)
            // {
            //     if($data->Ngay_khoi_chieu <= $Now->toDateString())
            //     {
            //         $DataCT->find($data->Ma_phim)->delete();
            //         $DataDS->find($data->Ma_phim)->delete();
            //     }
            // }
        return view('phim.sapchieu', compact('DataDS', 'DataCT'));
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
        $LC = $this->lichchieu->all()->where('Ma_phim', '=', $DataDS->Ma_phim);

        return view('phim.phimdetails', compact('DataDS', 'DataCT', 'LC', 'Date'));
    }
}
