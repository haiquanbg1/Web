@extends('layouts.admin')

@section('title')
<title>Phim</title>
@endsection

@section('content')
<div class="product-section">
    <div class="container">
      <div class="row">
        <!-- Start Column 1 -->
        <div class="col-md-12 col-lg-3 mb-5 mb-lg-0">
          <img src="{{ $DataCT->Image }}" class="img-fluid product-thumbnail" style="border-radius: 20px;">
        </div>
        <!-- End Column 1 -->

        <!-- Start Column 2 -->
        <div class="col-12 col-md-7 col-lg-9 mb-5 mb-md-0">
          <h2 style="color: black;"><b>{{ $DataDS->Ten_phim }}</b></h2>
          <p style="font-size: 17px;">{{ $DataCT->Tom_tat }}</p>
          <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4">
              <h5 style="color: black;font-size:17px">ĐẠO DIỄN:</h5>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="font-size: 17px;">{{ $DataCT->Dao_dien }}</div>
          </div>
          <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4">
              <h5 style="color: black;font-size:17px">DIỄN VIÊN:</h5>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="font-size: 17px;">{{ $DataCT->Dien_vien }}</div>
          </div>
          <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4">
              <h5 style="color: black;font-size:17px">THỂ LOẠI:</h5>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="font-size: 17px;">{{ $DataDS->The_loai }}</div>
          </div>
          <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4">
              <h5 style="color: black;font-size:17px">THỜI LƯỢNG:</h5>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="font-size: 17px;"><?php echo $DataDS->Thoi_luong . " phút" ?></div>
          </div>
          <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4">
              <h5 style="color: black;font-size:17px">NGÔN NGỮ:</h5>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="font-size: 17px;">{{ $DataCT->Chi_tiet }}</div>
          </div>
          <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4">
              <h5 style="color: black;font-size:17px">NGÀY KHỞI CHIẾU:</h5>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="font-size: 17px;">{{ $DataDS->Ngay_khoi_chieu }}</div>
          </div>
        </div>
        <!-- End Column 2 -->


      </div>
    </div>
    <!--Ngay chieu-->
    <div class="container mt-3">
      <ul class="nav nav-tabs">
        <li class="nav-item">
          <h3><a class="nav-link day active" id="ngay1">25/09-T2</a></h3>
        </li>
        <li class="nav-item">
          <h3><a class="nav-link day" id="ngay2">26/09-T3</a></h3>
        </li>
        <li class="nav-item">
          <h3><a class="nav-link day" id="ngay3">27/09-T4</a></h3>
        </li>
        <li class="nav-item">
          <h3><a class="nav-link day" id="ngay4">28/09-T5</a></h3>
        </li>
      </ul>
    </div>
    <!--Gio chieu-->
    <div class="container mt-3" id="gio1">
      <div class="row">
        <div class="col-lg-2 col-md-2 col-sm-2 text-center me-2 ms-2" style="background-color: rgb(198, 194, 194);color:black;"><h4>09:00</h4></div>
        <div class="col-lg-2 col-md-2 col-sm-2 text-center me-2 ms-2" style="background-color: rgb(198, 194, 194);color:black;"><h4>13:00</h4></div>
        <div class="col-lg-2 col-md-2 col-sm-2 text-center me-2 ms-2" style="background-color: rgb(198, 194, 194);color:black;"><h4>17:00</h4></div>
        <div class="col-lg-2 col-md-2 col-sm-2 text-center me-2 ms-2" style="background-color: rgb(198, 194, 194);color:black;"><h4>23:00</h4></div>
      </div>
    </div>
    <div class="container mt-3" id="gio2" style="display: none;">
      <div class="row">
        <div class="col-lg-2 col-md-2 col-sm-2 text-center me-2 ms-2" style="background-color: rgb(198, 194, 194);color:black;"><h4>10:00</h4></div>
        <div class="col-lg-2 col-md-2 col-sm-2 text-center me-2 ms-2" style="background-color: rgb(198, 194, 194);color:black;"><h4>14:00</h4></div>
        <div class="col-lg-2 col-md-2 col-sm-2 text-center me-2 ms-2" style="background-color: rgb(198, 194, 194);color:black;"><h4>18:00</h4></div>
        <div class="col-lg-2 col-md-2 col-sm-2 text-center me-2 ms-2" style="background-color: rgb(198, 194, 194);color:black;"><h4>21:00</h4></div>
      </div>
    </div>
    <div class="container mt-3" id="gio3" style="display: none;">
      <div class="row">
        <div class="col-lg-2 col-md-2 col-sm-2 text-center me-2 ms-2" style="background-color: rgb(198, 194, 194);color:black;"><h4>08:00</h4></div>
        <div class="col-lg-2 col-md-2 col-sm-2 text-center me-2 ms-2" style="background-color: rgb(198, 194, 194);color:black;"><h4>11:00</h4></div>
        <div class="col-lg-2 col-md-2 col-sm-2 text-center me-2 ms-2" style="background-color: rgb(198, 194, 194);color:black;"><h4>15:00</h4></div>
        <div class="col-lg-2 col-md-2 col-sm-2 text-center me-2 ms-2" style="background-color: rgb(198, 194, 194);color:black;"><h4>20:00</h4></div>
      </div>
    </div>
    <div class="container mt-3" id="gio4" style="display: none;">
      <div class="row">
        <div class="col-lg-2 col-md-2 col-sm-2 text-center me-2 ms-2" style="background-color: rgb(198, 194, 194);color:black;"><h4>11:00</h4></div>
        <div class="col-lg-2 col-md-2 col-sm-2 text-center me-2 ms-2" style="background-color: rgb(198, 194, 194);color:black;"><h4>13:00</h4></div>
        <div class="col-lg-2 col-md-2 col-sm-2 text-center me-2 ms-2" style="background-color: rgb(198, 194, 194);color:black;"><h4>19:00</h4></div>
        <div class="col-lg-2 col-md-2 col-sm-2 text-center me-2 ms-2" style="background-color: rgb(198, 194, 194);color:black;"><h4>23:00</h4></div>
      </div>
    </div>
  </div>
  <!-- End Product Section -->

  <!--Trailer-->
  <div class="row bg-secondary" style="margin-bottom:20px">
    <div class="col-md-9" style="margin-left: 12.5%; margin-bottom:35px;">
      <h2 class="text-center" style="color: white; text-decoration:underline;margin:20px 0px;">TRAILER</h2>
      <iframe style="width:100%; height: 70vh;" src="{{ $DataCT->Trailer }}" allowfullscreen></iframe>
    </div>
  </div>
  <hr>


@endsection

