<?php

namespace App\Http\Controllers;

use App\Models\ChiTietPhim;
use App\Models\DanhSachPhim;
use Carbon\Carbon;
use Illuminate\Http\Request;

class PhimController extends Controller
{
    private $danhsachphim;
    private $chitietphim;

    public function __construct(DanhSachPhim $danhsachphim, ChiTietPhim $chitietphim)
    {
        $this->danhsachphim = $danhsachphim;
        $this->chitietphim = $chitietphim;
    }

    public function dangchieu()
    {
        $Now = Carbon::now('Asia/Ho_Chi_Minh');
        $DataDS = $this->danhsachphim->all()->where('Ngay_khoi_chieu', '<=', $Now);
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
        $Now = Carbon::now('Asia/Ho_Chi_Minh');
        $DataDS = $this->danhsachphim->all()->where('Ngay_khoi_chieu', '>', $Now);
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
}
