<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LichChieu extends Model
{
    protected $fillable = ['Ma_phim', 'Ma_phong', 'Ngay_chieu', 'Gio_chieu'];
    public  $primaryKey = "Ma_lich_chieu";
    use HasFactory;
}
