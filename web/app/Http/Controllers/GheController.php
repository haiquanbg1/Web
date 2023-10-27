<?php

namespace App\Http\Controllers;

use App\Models\ChiTietPhim;
use App\Models\DanhSachPhim;
use App\Models\LichChieu;
use App\Models\Ghe;
use App\Models\Ve;
use Illuminate\Support\Facades\Auth;

class GheController extends Controller
{
    private $danhsachphim;
    private $chitietphim;
    private $lichchieu;
    private $ghe;
    private $ve;

    public function __construct(DanhSachPhim $danhsachphim, ChiTietPhim $chitietphim, LichChieu $lichchieu, Ghe $ghe, Ve $ve)
    {
        $this->danhsachphim = $danhsachphim;
        $this->chitietphim = $chitietphim;
        $this->lichchieu = $lichchieu;
        $this->ghe = $ghe;
        $this->ve = $ve;
    }

    public function them($Ma_ghe, $Ma_lich_chieu)
    {
        if(Auth::check())
        {
            $this->ve->where('Ma_ghe', '=', $Ma_ghe)->where('Ma_lich_chieu', '=', $Ma_lich_chieu)->update([
                'Trang_thai' => 1,
                'Ma_khach_hang' => Auth()->user()->id
            ]);
            // $data = $this->ve->where('Ma_ghe', '=', $Ma_ghe)->where('Ma_lich_chieu', '=', $Ma_lich_chieu);
            // foreach($data as $update)
            // {
            //     $update->update([
            //         'Trang_thai' => 0,
            //         'Ma_khach_hang' => Auth()->user()->id
            //     ]);
            // }
            return redirect()->back();
        }
        else
        {
            return redirect()->route('login');
        }
    }

    public function xoa($Ma_ghe, $Ma_lich_chieu)
    {
        $this->ve->where('Ma_lich_chieu', '=', $Ma_lich_chieu)->where('Ma_ghe', '=', $Ma_ghe)->update([
            'Trang_thai' => null,
            'Ma_khach_hang' => 0
        ]);;
        return redirect()->back();
    }

    public function xacnhan($Ma_phim, $Ma_lich_chieu)
    {
        $user = Auth::user();
        
        $DataDS = $this->danhsachphim->find($Ma_phim);
        $DataCT = $this->chitietphim->find($Ma_phim);
        $LC = $this->lichchieu->find($Ma_lich_chieu);
        $DataGhe = $this->ghe->all()->where('Ma_phong', '=', $LC->Ma_phong);
        $data = Ve::where('Ma_khach_hang', '=', $user->id)->where('Ma_lich_chieu', '=', $Ma_lich_chieu)->get();
        return view('phim.hoadon', compact('DataDS', 'DataCT', 'LC', 'DataGhe', 'user', 'data'));
    }

    public function hoadon($Ma_lich_chieu)
    {
        $user = Auth::user();
        Ve::where('Ma_khach_hang', '=', $user->id)->where('Ma_lich_chieu', '=', $Ma_lich_chieu)->update([
            'Trang_thai' => 2
        ]);
        return redirect()->route('home.index');
    }
}
