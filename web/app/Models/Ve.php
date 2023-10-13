<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ve extends Model
{
    protected $fillable = ['Ma_ghe', 'Ma_khach_hang', 'Ma_lich_chieu', 'Gia'];
    use HasFactory;
}
