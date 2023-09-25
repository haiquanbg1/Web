<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DanhSachPhim extends Model
{
    protected $fillable = ['Ten_phim', 'Thoi_luong','The_loai', 'Ngay_khoi_chieu'];
    public  $primaryKey = "Ma_phim";
    use HasFactory;
}
