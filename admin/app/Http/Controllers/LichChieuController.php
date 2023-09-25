<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\DanhSachPhim;
use  App\Models\LichChieu;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Request as FacadesRequest;

class LichChieuController extends Controller
{
    private $lichchieu;

    public function __construct(LichChieu $lichchieu)
    {
        $this->lichchieu = $lichchieu;
    }

    public function create()
    {
        $DataLichChieu = $this->lichchieu->all();
        $DataPhim = DanhSachPhim::all();
        return view('lichchieu.add', compact('DataLichChieu', 'DataPhim'));
    }

    public function index()
    {
        $Now = Carbon::now('Asia/Ho_Chi_Minh');
        $DataLichChieu = $this->lichchieu->orderBy('Ma_phim')->paginate(5);
        $DataPhim = DanhSachPhim::all();
        // Loại bỏ lịch chiếu đã quá thời gian
        foreach($DataLichChieu as $data)
        {
            if($data->Ngay_chieu < $Now->toDateString())
                $this->lichchieu->find($data->Ma_lich_chieu)->delete();
            else if($data->Ngay_chieu == $Now->toDateString())
                if($data->Gio_chieu < $Now->toTimeString())
                    $this->lichchieu->find($data->Ma_lich_chieu)->delete();
        }
        return view('lichchieu.index', compact('DataLichChieu', 'DataPhim'));
    }

    public function store(Request $request)
    {
        $this->lichchieu->create([
            'Ma_phim' => $request->Ma_phim,
            'Ma_phong' => $request->Ma_phong,
            'Ngay_chieu' => $request->Ngay_chieu,
            'Gio_chieu' => $request->Gio_chieu
        ]);
        return redirect()->route('lichchieu.index');
    }
    
    public function delete($Ma_lich_chieu)
    {
        $this->lichchieu->find($Ma_lich_chieu)->delete();
        return redirect()->route('lichchieu.index');
    }
}
