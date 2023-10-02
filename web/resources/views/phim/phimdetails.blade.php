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
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="font-size: 17px;">{{ $DataCT->Ngon_ngu }}</div>
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
    <ul class="nav nav-tabs" style="justify-content: space-between; cursor: pointer;">
      @for($i=1; $i<=7; $i++) <?php
                              $Day = "T" . $Date->dayOfWeek+1;
                              if ($Day == "T1") {
                                $Day = "CN";
                              }
                              ?> 
        <li class="nav-item">
        <h3><a class="nav-link day" id=<?php echo "ngay" . $i; ?>><?php echo $Date->day . "/" . $Date->month . " " . $Day; ?></a></h3>
        </li>
        <?php $Date->addDay(); ?>
        @endfor
        <?php $Date->subDays(7); ?>
    </ul>
  </div>
  <!--Gio chieu-->
   <?php $count = 1; $dataDay = $LC->where('Ngay_chieu', '=', $Date->toDateString()); ?>
  @for($i=1; $i<=7; $i++)
    <?php  $dataDay = $LC->where('Ngay_chieu', '=', $Date->toDateString()); $Date->addDay();?>
    <div class="container mt-3" id=<?php echo "gio" . $i; ?> style="display: none;">
      <div class="row">
        @foreach($dataDay as $dataTime)
        <div class="col-lg-2 col-md-2 col-sm-2 text-center me-2 ms-2" style="background-color: rgb(171, 165, 147);color: rgb(168, 141, 50); display:flex; justify-content:center; align-items:center; width:150px; border-radius:5px; cursor:pointer;">
          <h4 class="pt-2"><?php $s = $dataTime->Gio_chieu; echo substr_replace($s,"",strlen($s)-3); ?></h4>
        </div>
        @endforeach
      </div>
    </div>
  @endfor
</div>
<!-- End Product Section -->

<!--Trailer-->
<div class="row bg-secondary" style="margin-bottom:20px">
  <div class="col-md-9" style="margin-left: 12.5%; margin-bottom:35px;">
    <h2 class="text-center" style="color: rgb(227, 216, 186); text-decoration:underline;margin:20px 0px;">TRAILER</h2>
    <iframe style="width:100%; height: 70vh;" src="{{ $DataCT->Trailer }}" allowfullscreen></iframe>
  </div>
</div>
<hr>


@endsection