<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\DanhSachPhim;
use App\Models\LichChieu;
use App\Models\Ghe;
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
                $this->delete($data->Ma_lich_chieu);
            else if($data->Ngay_chieu == $Now->toDateString())
                if($data->Gio_chieu < $Now->toTimeString())
                    $this->delete($data->Ma_lich_chieu);
            if($DataPhim->find($data->Ma_phim)->Trang_thai == 0)
                $this->delete($data->Ma_lich_chieu);
        }
        $DataLichChieu = $this->lichchieu->where('Trang_thai', '=', 1)->paginate(5);
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
        $data = $this->lichchieu->find($Ma_lich_chieu);
        $dataGhe = Ghe::all()->where('Ma_phong' , '=', $data->Ma_phong);

        $data->update([
            'Trang_thai' => 0
        ]);
        foreach($dataGhe as $ghe)
        {
            $ghe->update([
                'Trang_thai' => 0
            ]);
        }
        return redirect()->route('lichchieu.index');
    }
}
