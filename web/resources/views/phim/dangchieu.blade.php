@extends('layouts.admin')

@section('title')
<title>Phim</title>
@endsection

@section('content')

    <div class="container mt-3">
      <ul class="nav nav-tabs justify-content-center">
        <li class="nav-item">
          <h3><a href="{{ route('phim.sapchieu') }}" class="nav-link" id="sapchieu">PHIM SẮP CHIẾU</a></h3>
        </li>
        <li class="nav-item">
          <h3><a href="{{ route('phim.dangchieu') }}" class="nav-link active" id="dangchieu">PHIM ĐANG CHIẾU</a></h3>
        </li>
        <li class="nav-item">
          <h3><a href="{{ route('phim.dacbiet') }}" class="nav-link" id="dacbiet">SUẤT CHIẾU ĐẶC BIỆT</a></h3>
        </li>
      </ul>

      <div class="product-section">
        <div class="row">
          <!-- Start Column 1 -->
          <div class="col-12 col-md-4 col-lg-3 mb-5">
            <a class="product-item" href="{{ asset('Fe/filmDetails.html') }}">
              <img
                src="{{ asset('Fe/images/the_nun_film.jpg') }}"
                class="img-fluid product-thumbnail"
                style="border-radius: 20px;"
              />
              <h2 class="product-title">Ác quỷ ma sơ II</h2>
              <p class="product-price" style="margin-bottom: 2px;">Thể loại: Kinh dị, Hồi Hộp</p>
              <p class="product-price" style="margin-bottom: 2px;">Thời lượng: 110 phút</p>

              <span class="icon-cross">
                <img src="{{ asset('Fe/images/cross.svg') }}" class="img-fluid" />
              </span>
            </a>
          </div>
          <!-- End Column 1 -->

          <!-- Start Column 1 -->
          <div class="col-12 col-md-4 col-lg-3 mb-5">
            <a class="product-item" href="#">
              <img
                src="{{ asset('Fe/images/an_mang_o_venice.jpg') }}"
                class="img-fluid product-thumbnail"
                style="border-radius: 20px;"
              />
              <h2 class="product-title">Án mạng ở venice</h2>
              <p class="product-price" style="margin-bottom: 2px;">Thể loại: Tội Phạm, Tâm lý</p>
              <p class="product-price" style="margin-bottom: 2px;">Thời lượng: 103 phút</p>

              <span class="icon-cross">
                <img src="{{ asset('Fe/images/cross.svg') }}" class="img-fluid" />
              </span>
            </a>
          </div>
          <!-- End Column 1 -->

          <!-- Start Column 1 -->
          <div class="col-12 col-md-4 col-lg-3 mb-5">
            <a class="product-item" href="#">
              <img
                src="{{ asset('Fe/images/shin_film.jpg') }}"
                class="img-fluid product-thumbnail"
                style="border-radius: 20px;"
              />
              <h2 class="product-title">Shin - Đại chiến siêu năng lực</h2>
              <p class="product-price" style="margin-bottom: 2px;">Thể loại: Hoạt hình, Phiêu lưu</p>
              <p class="product-price" style="margin-bottom: 2px;">Thời lượng: 94 phút</p>

              <span class="icon-cross">
                <img src="{{ asset('Fe/images/cross.svg') }}" class="img-fluid" />
              </span>
            </a>
          </div>
          <!-- End Column 1 -->

          <!-- Start Column 1 -->
          <div class="col-12 col-md-4 col-lg-3 mb-5">
            <a class="product-item" href="#">
              <img
                src="{{ asset('Fe/images/bietdoidanhthue.png') }}"
                class="img-fluid product-thumbnail"
                style="border-radius: 20px;"
              />
              <h2 class="product-title">Biệt Đội Đánh Thuê 4</h2>
              <p class="product-price" style="margin-bottom: 2px;">Thể loại: Hành động, Phiêu lưu</p>
              <p class="product-price" style="margin-bottom: 2px;">Thời lượng: 103 phút</p>

              <span class="icon-cross">
                <img src="{{ asset('Fe/images/cross.svg') }}" class="img-fluid" />
              </span>
            </a>
          </div>
          <!-- End Column 1 -->

          <!-- Start Column 1 -->
          <div class="col-12 col-md-4 col-lg-3 mb-5">
            <a class="product-item" href="#">
              <img
                src="{{ asset('Fe/images/live.png') }}"
                class="img-fluid product-thumbnail"
                style="border-radius: 20px;"
              />
              <h2 class="product-title">Live - Phát Trực Tiếp</h2>
              <p class="product-price" style="margin-bottom: 2px;">Thể loại: Tâm lý, Kinh dị</p>
              <p class="product-price" style="margin-bottom: 2px;">Thời lượng: 91 phút</p>

              <span class="icon-cross">
                <img src="{{ asset('Fe/images/cross.svg') }}" class="img-fluid" />
              </span>
            </a>
          </div>
          <!-- End Column 1 -->

          <!-- Start Column 1 -->
          <div class="col-12 col-md-4 col-lg-3 mb-5">
            <a class="product-item" href="#">
              <img
                src="{{ asset('Fe/images/nhanduyentiendinh.jpg') }}"
                class="img-fluid product-thumbnail"
                style="border-radius: 20px;"
              />
              <h2 class="product-title">Nhân Duyên Tiền Đình</h2>
              <p class="product-price" style="margin-bottom: 2px;">Thể loại: Hài hước</p>
              <p class="product-price" style="margin-bottom: 2px;">Thời lượng: 118 phút</p>

              <span class="icon-cross">
                <img src="{{ asset('Fe/images/cross.svg') }}" class="img-fluid" />
              </span>
            </a>
          </div>
          <!-- End Column 1 -->
        </div>
    </div>
@endsection

