<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function Adminlogin()
    {
        return view('login');
    }
    public function Login()
    {
        return redirect()->to('home');
    }
}
