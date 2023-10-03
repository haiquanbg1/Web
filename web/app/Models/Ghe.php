<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ghe extends Model
{
    protected $fillable = ['Trang_thai'];
    public  $primaryKey = "Ma_ghe";
    use HasFactory;
}
