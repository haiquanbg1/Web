<?php

namespace App\Http\Controllers;

use App\Models\DanhSachPhim;
use App\Models\ChiTietPhim;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Request as FacadesRequest;

class DanhSachPhimController extends Controller
{
    private $danhsachphim;
    private $chitietphim;

    public function __construct(DanhSachPhim $danhsachphim, ChiTietPhim $chitietphim)
    {
        $this->danhsachphim = $danhsachphim;
        $this->chitietphim = $chitietphim;
    }

    public function create()
    {
         return view('danhsachphim.add');
    }

    public function index()
    {
        $DataDanhsachphim = $this->danhsachphim->latest()->where('Trang_thai', '=', 1)->paginate(5);
        return view('danhsachphim.index', compact('DataDanhsachphim'));
    }

    public function store(Request $request)
    {
        $this->danhsachphim->create([
            'Ten_phim' => $request->Ten_phim,
            'Thoi_luong' => $request->Thoi_luong,
            'The_loai' => $request->The_loai,
            'Ngay_khoi_chieu' => $request->Ngay_khoi_chieu
        ]);
        $this->chitietphim->create([
            'Dao_dien' => $request->Dao_dien,
            'Dien_vien' => $request->Dien_vien,
            'Ngon_ngu' => $request->Ngon_ngu,
            'Tom_tat' => $request->Tom_tat,
            'Trailer' => $request->Trailer,
            'Tuoi_gioi_han' => $request->Tuoi_gioi_han,
            'Image' => $request->Image
        ]);
        return redirect()->route('danhsachphim.index');
    }

    public function info($Ma_phim)
    {
        $XemDanhsachphim = $this->danhsachphim->find($Ma_phim);
        $XemChitietphim = $this->chitietphim->find($Ma_phim);
        return view('danhsachphim.info', compact('XemDanhsachphim', 'XemChitietphim'));
    }

    public function edit($Ma_phim)
    {
        $CapnhatDanhsachphim = $this->danhsachphim->find($Ma_phim);
        $CapnhatChitietphim = $this->chitietphim->find($Ma_phim);
        return view('danhsachphim.edit', compact('CapnhatDanhsachphim', 'CapnhatChitietphim'));
    }

    public function delete($Ma_phim)
    {
        $this->danhsachphim->find($Ma_phim)->update([
            'Trang_thai' => 0
        ]);
        return redirect()->route('danhsachphim.index');
    }

    public function update($Ma_phim, Request $request)
    {
        $this->danhsachphim->find($Ma_phim)->update([
            'Ten_phim' => $request->Ten_phim,
            'Thoi_luong' => $request->Thoi_luong,
            'The_loai' => $request->The_loai,
            'Ngay_khoi_chieu' => $request->Ngay_khoi_chieu
        ]);
        $this->chitietphim->find($Ma_phim)->update([
            'Dao_dien' => $request->Dao_dien,
            'Dien_vien' => $request->Dien_vien,
            'Ngon_ngu' => $request->Ngon_ngu,
            'Tom_tat' => $request->Tom_tat,
            'Trailer' => $request->Trailer,
            'Tuoi_gioi_han' => $request->Tuoi_gioi_han,
            'Image' => $request->Image
        ]);
        return redirect()->route('danhsachphim.index');
    }
}
