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

  <div class="product-section">
    <div class="row">
      @foreach($DataDS as $data)
      <div class="col-12 col-md-4 col-lg-3 mb-5">
        <a class="product-item" href="{{ route('details', ['Ma_phim' => $data->Ma_phim]) }}">
          <img src="{{ $DataCT->find($data->Ma_phim)->Image }}" class="img-fluid product-thumbnail" style="border-radius: 20px;" />
          <h2 class="product-title"><?php echo $data->Ten_phim; ?></h2>
          <p class="product-price" style="margin-bottom: 2px;"><?php echo "Thể Loại: " . $data->The_loai; ?></p>
          <p class="product-price" style="margin-bottom: 2px;"><?php echo "Thời lượng: " . $data->Thoi_luong . " phút"; ?></p>
          <p class="product-price" style="margin-bottom: 2px;"><?php echo "Ngày khởi chiếu: " . $data->Ngay_khoi_chieu; ?></p>

          <span class="icon-cross">
            <img href="{{ route('details', ['Ma_phim' => $data->Ma_phim]) }}" src="{{ asset('Fe/images/cross.svg') }}" class="img-fluid" />
          </span>
        </a>
      </div>
      @endforeach
    </div>
  </div>
  @endsection