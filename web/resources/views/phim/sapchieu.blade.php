
@extends('layouts.admin')

@section('title')
<title>Phim</title>
@endsection

@section('content')
    <div class="container mt-3">
      <ul class="nav nav-tabs justify-content-center">
        <li class="nav-item">
          <h3><a href="{{ route('phim.sapchieu') }}" class="nav-link active" id="sapchieu">PHIM SẮP CHIẾU</a></h3>
        </li>
        <li class="nav-item">
          <h3><a href="{{ route('phim.dangchieu') }}" class="nav-link" id="dangchieu">PHIM ĐANG CHIẾU</a></h3>
        </li>
        <li class="nav-item">
          <h3><a href="{{ route('phim.dacbiet') }}" class="nav-link" id="dacbiet">SUẤT CHIẾU ĐẶC BIỆT</a></h3>
        </li>
      </ul>

      <div class="product-section-sapchieu">
        <div class="row">
          <!-- Start Column 1 -->
          <div class="col-12 col-md-4 col-lg-3 mb-5">
            <a class="product-item" href="#">
              <img
                src="{{ asset('Fe/images/batman.png') }}"
                class="img-fluid product-thumbnail"
                style="border-radius: 20px;"
              />
              <h2 class="product-title">Người Dơi Bắt Đầu </h2>
              <p class="product-price" style="margin-bottom: 2px;">Thể loại: Hành động</p>
              <p class="product-price" style="margin-bottom: 2px;">Thời lượng: 140 phút</p>

              <span class="icon-cross">
                <img src="{{ asset('Fe/images/cross.svg') }}" class="img-fluid" />
              </span>
            </a>
          </div>
          <!-- End Column 1 -->
          <!-- Start Column 2-->
          <div class="col-12 col-md-4 col-lg-3 mb-5">
            <a class="product-item" href="#">
              <img
                src="{{ asset('Fe/images/kekientao.jpg') }}"
                class="img-fluid product-thumbnail"
                style="border-radius: 20px;"
              />
              <h2 class="product-title">Kẻ Kiến Tạo</h2>
              <p class="product-price" style="margin-bottom: 2px;">Thể loại: Hành động, Phiêu lưu</p>
              <p class="product-price" style="margin-bottom: 2px;">Thời lượng: 133 phút</p>

              <span class="icon-cross">
                <img src="{{ asset('Fe/images/cross.svg') }}" class="img-fluid" />
              </span>
            </a>
          </div>
          <!-- End Column 2 -->
        </div>
      </div>
@endsection

