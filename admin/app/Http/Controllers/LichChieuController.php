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
        return view('lichchieu.add');
    }

    public function index()
    {
        $Now = Carbon::now('Asia/Ho_Chi_Minh');
        $DataLichChieu = $this->lichchieu->all()->where('Trang_thai', '=', 1);
        $DataPhim = DanhSachPhim::all();
        // Loại bỏ lịch chiếu đã quá thời gian
        foreach($DataLichChieu as $data)
        {
            if($data->Ngay_chieu < $Now->toDateString())
                $this->lichchieu->find($data->Ma_lich_chieu)->update([
                    'Trang_thai' => 0
                ]);
            else if($data->Ngay_chieu == $Now->toDateString())
                if($data->Gio_chieu < $Now->toTimeString())
                    $this->lichchieu->find($data->Ma_lich_chieu)->update([
                        'Trang_thai' => 0
                    ]);
        }
        $DataLichChieu = $this->lichchieu->where('Trang_thai', '=', 1)->orderBy('Ma_phim')->paginate(5);
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
        $this->lichchieu->find($Ma_lich_chieu)->update([
            'Trang_thai' => 0
        ]);
        return redirect()->route('lichchieu.index');
    }
}
