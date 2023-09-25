<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ChiTietPhim extends Model
{
    protected $fillable = ['Dao_dien', 'Dien_vien', 'Ngon_ngu', 'Tom_tat', 'Trailer', 'Tuoi_gioi_han', 'Image'];
    public  $primaryKey = "Ma_phim";
    use HasFactory;
}
