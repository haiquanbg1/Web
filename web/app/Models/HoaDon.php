<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HoaDon extends Model
{
    protected $fillable = ['Thoi_gian_dat', 'Ma_khach_dat', 'Gia'];
    public  $primaryKey = "Ma_hoa_don";
    use HasFactory;
}
