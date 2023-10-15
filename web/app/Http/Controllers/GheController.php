<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ghe;
use App\Models\Ve;
use Illuminate\Support\Facades\Auth;

class GheController extends Controller
{
    private $ghe;
    private $ve;

    public function __construct(Ghe $ghe, Ve $ve)
    {
        $this->ghe = $ghe;
        $this->ve = $ve;
    }

    public function them($Ma_ghe, $Ma_lich_chieu)
    {
        if(Auth::check())
        {
            $gia = $this->ghe->find($Ma_ghe)->Gia;
            $this->ghe->find($Ma_ghe)->update([
                'Trang_thai' => 1
            ]);
            $this->ve->create([
                'Ma_ghe' => $Ma_ghe,
                'Ma_khach_hang' => Auth::user()->id,
                'Ma_lich_chieu' => $Ma_lich_chieu,
                'Gia' => $gia
            ]);
            return redirect()->back();
        }
        else
        {
            return redirect()->route('login');
        }
    }

    public function xoa($Ma_ghe, $Ma_lich_chieu)
    {
            $this->ghe->find($Ma_ghe)->update([
                'Trang_thai' => 0
            ]);
            $this->ve->where('Ma_lich_chieu', '=', $Ma_lich_chieu)->where('Ma_ghe', '=', $Ma_ghe)->delete();
            return redirect()->back();
    }

    public function xacnhan($Ma_lich_chieu)
    {
        $user = Auth::user()->id;
        $data = Ve::where('Ma_khach_hang', '=', $user)->where('Ma_lich_chieu', '=', $Ma_lich_chieu)->get();
        return view('phim.hoadon', compact('data'));
    }
}
