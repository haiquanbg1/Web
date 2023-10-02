<?php

namespace App\Http\Controllers\admin\users;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Session;
use function Laravel\Prompts\error;

class RegisterController extends Controller
{
    public function register() {
        return view('admin.user.register',[
            'title' => 'Đăng ký tài khoản'
        ]);
    }
    public function add(Request $request) {
        $this->validate($request,[
            'email' => 'required|unique:users|email:filter',
            'password' => 'required'
        ]);
        if($request->terms==null) {
            Session::flash('error2','Do not agree to terms');
            return redirect()->back();
        }
        if(strcmp($request->password,$request->repassword)==0) {
            $dataInsert= [
                'name'=> $request->fullName,
                'email'=> $request->email,
                'password' => $request->password,
                'So_dien_thoai' => $request->phone,
                'Ngay_sinh' => $request->dob,
                'Gioi_tinh' => (boolean) $request->gender,
            ];
            $post= User::create($dataInsert);
            Session::flash('success','Đăng ký thành công');
            return redirect()->route('login');
        }
        Session::flash('error1','Mật khẩu không trùng khớp');
        
        
        
        return redirect()->back();
    }


}
