@extends('layouts.admin')

@section('title')
<title>Đặt vé</title>
@endsection

@section('content')
<div class="container">
    <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
            <div style="text-align: center; margin:50px;">
                <h3 style="color: black; background-color:#fdffc4">BOOKING ONLINE</h3>
                <ul style="background-color:seashell;">
                    <li style="display:flex;">
                        <div class="col-lg-6 col-md-6 col-xs-12" style="display: flex;">
                            <h5> &nbsp;&nbsp;Tên:</h5>
                        </div>
                        <div class="col-lg-6 col-md-6 col-xs-12">
                            <h5><?php echo $user->name; ?></h5>
                        </div>
                    </li>
                    <li style="display:flex;">
                        <div class="col-lg-6 col-md-6 col-xs-12" style="display: flex;">
                            <h5> &nbsp;&nbsp;Số điện thoại:</h5>
                        </div>
                        <div class="col-lg-6 col-md-6 col-xs-12">
                            <h5><?php echo $user->So_dien_thoai; ?></h5>
                        </div>
                    </li>
                    <li style="display:flex;">
                        <div class="col-lg-6 col-md-6 col-xs-12" style="display: flex;">
                            <h5> &nbsp;&nbsp;Rạp:</h5>
                        </div>
                        <div class="col-lg-6 col-md-6 col-xs-12">
                            <h5>Royal Cinema</h5>
                        </div>
                    </li>
                    <li style="border-color: red; display:flex;">
                        <div class="col-lg-6 col-md-6 col-xs-12" style="display: flex;">
                            <h5> &nbsp;&nbsp;Giờ chiếu:</h5>
                        </div>
                        <div class="col-lg-6 col-md-6 col-xs-12">
                            <h5><?php $s = $LC->Gio_chieu;
              echo substr_replace($s, "", strlen($s) - 3); ?></h5>
                        </div>
                    </li>
                    <li style="display:flex;">
                        <div class="col-lg-6 col-md-6 col-xs-12" style="display: flex;">
                            <h5> &nbsp;&nbsp;Phòng:</h5>
                        </div>
                        <div class="col-lg-6 col-md-6 col-xs-12">
                            <h5><?php echo "P" . $LC->Ma_phong; ?></h5>
                        </div>
                    </li>
                    <li style="display:flex;">
                        <div class="col-lg-6 col-md-6 col-xs-12" style="display: flex;">
                            <h5> &nbsp;&nbsp;Ghế:</h5>
                        </div>
                        <div class="col-lg-6 col-md-6 col-xs-12">
                            <h5>
                                <?php 
                                $count = "";
                                foreach ($data as $dataVe) {
                                    $ghe = $DataGhe->find($dataVe->Ma_ghe);
                                    $count = $count . $ghe->Ten_ghe . ", ";
                                  } 
                                  $ans = $count;
                                  if ($count != "")
                                    $ans =  substr_replace($count, "", strlen($count) - 2);
                                  echo $ans;
                                ?>
                            </h5>
                        </div>
                    </li>
                </ul>
                <div style="align-items: center; text-align:center">
                    <button style="border-color:gray;">Thanh toán</button>
                </div>
            </div>
        </div>

        <!--THong tin phim-->
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12" style="margin:35px 0px">
  <div style="margin: 0px 10px 10px 0px; display:flex;">
    <div class="col-lg-6 col-md-6 col-sm-12" style="margin: 0px 10px 10px 0px;">
      <img class="img-responsive" src="{{ $DataCT->Image }}">
    </div>
    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
      <h4><b style="font-size: 25px;">{{ $DataDS->Ten_phim }}</b></h4>
      <h4>Phim 2D</h4>
    </div>
  </div>
  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="margin:10px 0px;">
    <ul style="padding: 10px 30px 10px 30px; list-style:none;">
      <li style="padding: 10px 0px; display:flex;">
        <div class="col-lg-6 col-md-6 col-xs-12" style="display: flex;">
          <i style="font-size: 23px;" class="fa fa-tags"></i>
          <h5> &nbsp;&nbsp;Thể loại:</h5>
        </div>
        <div class="col-lg-6 col-md-6 col-xs-12">
          <h5>{{ $DataDS->The_loai }}</h5>
        </div>
      </li>
      <li style="padding: 10px 0px; display:flex;">
        <div class="col-lg-6 col-md-6 col-xs-12" style="display: flex;">
          <i style="font-size: 23px;" class="fa fa-clock"></i>
          <h5> &nbsp;&nbsp;Thời lượng:</h5>
        </div>
        <div class="col-lg-6 col-md-6 col-xs-12">
          <h5><?php echo $DataDS->Thoi_luong . " phút" ?></h5>
        </div>
      </li>
    </ul>
  </div>

  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="margin:10px 0px;">
    <hr style="border-style: dash; border-top-width:2px; margin:5px 0px;">
    <ul style="padding: 10px 30px 10px 30px; list-style:none;">
      <li style="padding: 10px 0px; display:flex;">
        <div class="col-lg-6 col-md-6 col-xs-12" style="display: flex;">
          <i style="font-size: 23px;" class="fa fa-calendar"></i>
          <h5> &nbsp;&nbsp;Ngày chiếu:</h5>
        </div>
        <div class="col-lg-6 col-md-6 col-xs-12">
          <h5>{{ $LC->Ngay_chieu }}</h5>
        </div>
      </li>
      <li style="padding: 10px 0px; display:flex;">
        <div class="col-lg-6 col-md-6 col-xs-12" style="display: flex;">
          <i style="font-size: 23px;" class="fa fa-clock"></i>
          <h5> &nbsp;&nbsp;Giờ chiếu:</h5>
        </div>
        <div class="col-lg-6 col-md-6 col-xs-12">
          <h5><?php $s = $LC->Gio_chieu;
              echo substr_replace($s, "", strlen($s) - 3); ?></h5>
        </div>
      </li>
      <li style="padding: 10px 0px; display:flex;">
        <div class="col-lg-6 col-md-6 col-xs-12" style="display: flex;">
          <i style="font-size: 23px;" class="fa fa-desktop"></i>
          <h5> &nbsp;&nbsp;Phòng:</h5>
        </div>
        <div class="col-lg-6 col-md-6 col-xs-12">
          <h5><?php echo "P" . $LC->Ma_phong; ?></h5>
        </div>
      </li>
      <li style="padding: 10px 0px; display:flex;">
        <div class="col-lg-6 col-md-6 col-xs-12" style="display: flex;">
          <i style="font-size: 23px;" class="fa fa-cubes"></i>
          <h5> &nbsp;&nbsp;Ghế đang giữ:</h5>
        </div>
        <div class="col-lg-6 col-md-6 col-xs-12">
          <h5>
            <?php
            $count = "";
              foreach ($data as $dataVe) {
                $ghe = $DataGhe->find($dataVe->Ma_ghe);
                $count = $count . $ghe->Ten_ghe . ", ";
              }
            $ans = $count;
            if ($count != "")
              $ans =  substr_replace($count, "", strlen($count) - 2);
            echo $ans;
            ?>
          </h5>
        </div>
      </li>
    </ul>
    <hr>
  </div>
        </div>
    </div>
</div>
@endsection