@extends('layouts.admin')

@section('title')
<title>Phim</title>
@endsection

@section('content')
    <div class="container mt-5 mb-5 col-lg-12 col-md-12">
        <h1 style="color:black"><b>Thông tin người dùng</b></h1>
        <div class="form-group" style="display: flex;">
            <div class="col-lg-6 col-md-6 mb-4 mx-3">
                <label class="control-label" style="font-size:16px; color: black">
                    <span style="color:red">*</span>
                    &nbsp;ID
                </label>
                <input type="text" value="{{ $user->id }}" class="form-control" placeholder="Họ tên" disabled="disabled">
            </div>
            <div class="col-lg-6 col-md-6 mb-4 mx-3">
                <label class="control-label" style="font-size:16px; color: black">
                    <span style="color:red">*</span>
                    &nbsp;Email
                </label>
                <input type="text" value="{{ $user->email }}" class="form-control" placeholder="Họ tên" disabled="disabled">
            </div>
        </div>
        <div class="form-group" style="display: flex;">
            <div class="col-lg-6 col-md-6 mb-4 mx-3">
                <label class="control-label" style="font-size:16px; color: black">
                    <span style="color:red">*</span>
                    &nbsp;Tên thành viên
                </label>
                <input type="text" value="{{ $user->name }}" class="form-control" placeholder="Họ tên" disabled="disabled">
            </div>
            <div class="col-lg-6 col-md-6 mb-4 mx-3">
                <label class="control-label" style="font-size:16px; color: black">
                    <span style="color:red">*</span>
                    &nbsp;Số điện thoại
                </label>
                <input type="text" value="{{ $user->So_dien_thoai }}" class="form-control" placeholder="Họ tên" disabled="disabled">
            </div>
        </div>
        <div class="form-group" style="display: flex;">
            <div class="col-lg-6 col-md-6 mb-4 mx-3">
                <label class="control-label" style="font-size:16px; color: black">
                    <span style="color:red">*</span>
                    &nbsp;Giới tính
                </label>
                <input type="text" value=<?php
                        if ($user->Gioi_tinh == '0')
                            echo "Nam";
                        else 
                            echo "Nữ";
                    ?> class="form-control" placeholder="Họ tên" disabled="disabled">
            </div>
            <div class="col-lg-6 col-md-6 mb-4 mx-3">
                <label class="control-label" style="font-size:16px; color: black">
                    <span style="color:red">*</span>
                    &nbsp;Ngày sinh
                </label>
                <input type="text" value="{{ $user->Ngay_sinh }}" class="form-control" placeholder="Họ tên" disabled="disabled">
            </div>
        </div>
        <?php $totalMoney = 0; ?>
        <div class="form-group" style="display: flex;">
            <div class="col-lg-6 col-md-6 mb-4 mx-3">
                <label class="control-label" style="font-size:16px; color: black">
                    <span style="color:red">*</span>
                    &nbsp;Số tiền đã chi
                </label>
                <input type="text" value= <?php 
                    $ve = $dataVe->where('Ma_khach_hang', '=', $user->id);
                    foreach($ve as $data)
                    {
                        $Gia = $dataGhe->find($data->Ma_ghe)->Gia;
                        $totalMoney += $Gia;
                    }
                    echo $totalMoney;
                 ?> class="form-control" placeholder="Họ tên" disabled="disabled">
            </div>
            <div class="col-lg-6 col-md-6 mb-4 mx-3">
                <label class="control-label" style="font-size:16px; color: black">
                    <span style="color:red">*</span>
                    &nbsp;Hạng thành viên
                </label>
                <input type="text" value=<?php 
                    if($totalMoney >= 1000000)
                        echo "VIP";
                    else
                        echo "Thường";
                 ?> class="form-control" placeholder="Họ tên" disabled="disabled">
            </div>
        </div>
    </div>
@endsection