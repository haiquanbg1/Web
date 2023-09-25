
@extends('layouts.admin')

@section('title')
<title>Royal Cinema</title>
@endsection

@section('content')

    <!-- Carousel -->
    <div id="demo" class="carousel slide" data-bs-ride="carousel">
      <!-- Indicators/dots -->
      <div class="carousel-indicators">
        <button
          type="button"
          data-bs-target="#demo"
          data-bs-slide-to="0"
          class="active"
        ></button>
        <button
          type="button"
          data-bs-target="#demo"
          data-bs-slide-to="1"
        ></button>
        <button
          type="button"
          data-bs-target="#demo"
          data-bs-slide-to="2"
        ></button>
      </div>

      <!-- The slideshow/carousel -->
      <div
        class="carousel-inner"
        style="padding: 0% 10% 0% 10%; height: 350px; background-color: black"
      >
        <div class="carousel-item active">
          <img
            src="{{ asset('Fe/images/carousel1.png') }}"
            alt="Background"
            class="d-block w-100 carousel-img"
          />
        </div>
        <div class="carousel-item">
          <img
            src="{{ asset('Fe/images/nun.jpg') }}"
            alt="The Nun"
            class="d-block w-100 carousel-img imgHeight"
          />
        </div>
        <div class="carousel-item">
          <img
            src="{{ asset('Fe/images/shinn.jpeg') }}"
            alt="Shin"
            class="d-block w-100 carousel-img imgHeight"
          />
        </div>
      </div>

      <!-- Left and right controls/icons -->
      <button
        class="carousel-control-prev"
        type="button"
        data-bs-target="#demo"
        data-bs-slide="prev"
      >
        <span class="carousel-control-prev-icon"></span>
      </button>
      <button
        class="carousel-control-next"
        type="button"
        data-bs-target="#demo"
        data-bs-slide="next"
      >
        <span class="carousel-control-next-icon"></span>
      </button>
    </div>

    <div class="product-section">
      <div class="container">
        <div class="row">
          <!-- Start Column 1 -->
          <div class="col-md-12 col-lg-3 mb-5 mb-lg-0">
            <h2 class="mb-4 section-title">Những bộ phim bom tấn</h2>
            <p class="mb-4">
              Những bộ phim trên toàn thế giới sẽ được cập nhật liên tục để phục
              vụ khán giả. Ngoài ra còn có những ưu đãi đặc biệt chỉ xuất hiện
              tại Royal Cinema.
            </p>
            <p><a href="{{ route('phim.dangchieu') }}" class="btn">Explore</a></p>
          </div>
          <!-- End Column 1 -->

          <!-- Start Column 2 -->
          <div class="col-12 col-md-4 col-lg-3 mb-5 mb-md-0">
            <a class="product-item" href="cart.html">
              <img
                src="{{ asset('Fe/images/the_nun_film.jpg') }}"
                class="img-fluid product-thumbnail"
                style="border-radius: 20px;"
              />
              <h2 class="product-title">Ác quỷ ma sơ II</h2>
              <p class="product-price">Thể loại: Kinh dị, Hồi Hộp</p>
              <p class="product-price">Thời lượng: 110 phút</p>

              <span class="icon-cross">
                <img src="{{ asset('Fe/images/cross.svg') }}" class="img-fluid" />
              </span>
            </a>
          </div>
          <!-- End Column 2 -->

          <!-- Start Column 3 -->
          <div class="col-12 col-md-4 col-lg-3 mb-5 mb-md-0">
            <a class="product-item" href="cart.html">
              <img
                src="{{ asset('Fe/images/an_mang_o_venice.jpg') }}"
                class="img-fluid product-thumbnail"
                style="border-radius: 20px;"
              />
              <h2 class="product-title">Án mạng ở venice</h2>
              <p class="product-price">Thể loại: Tội Phạm, Tâm lý</p>
              <p class="product-price">Thời lượng: 103 phút</p>

              <span class="icon-cross">
                <img src="{{ asset('Fe/images/cross.svg') }}" class="img-fluid" />
              </span>
            </a>
          </div>
          <!-- End Column 3 -->

          <!-- Start Column 4 -->
          <div class="col-12 col-md-4 col-lg-3 mb-5 mb-md-0">
            <a class="product-item" href="cart.html">
              <img
                src="{{ asset('Fe/images/shin_film.jpg') }}"
                class="img-fluid product-thumbnail"
                style="border-radius: 20px;"
              />
              <h2 class="product-title">Shin - Đại chiến siêu năng lực</h2>
              <p class="product-price">Thể loại: Hoạt hình, Phiêu lưu</p>
              <p class="product-price">Thời lượng: 94 phút</p>

              <span class="icon-cross">
                <img src="{{ asset('Fe/images/cross.svg') }}" class="img-fluid" />
              </span>
            </a>
          </div>
          <!-- End Column 4 -->
        </div>
      </div>
    </div>
    <!-- End Product Section -->
    <hr />

    <!-- Start Review Slider -->
    <div class="testimonial-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-7 mx-auto text-center">
            <h2 class="section-title">Nhận xét từ khán giả</h2>
          </div>
        </div>

        <div class="row justify-content-center">
          <div class="col-lg-12">
            <div class="testimonial-slider-wrap text-center">
              <div class="testimonial-slider">
                <div class="item">
                  <div class="row justify-content-center">
                    <div class="col-lg-8 mx-auto">
                      <div class="testimonial-block text-center">
                        <blockquote class="mb-5">
                          <p>
                            &ldquo;Những ai muốn tìm địa điểm rạp chiếu phim đêm
                            ở Hà Nội chắc chắn không thể bỏ qua Royal Cinema.
                            Nơi đây được xem là hệ thống cụm rạp chất lượng tốt
                            nhất tại khu vực này. Bên cạnh đó, đây còn là địa
                            điểm chiếu phim đầu tiên tại Việt Nam đạt tiêu chuẩn
                            100% quốc tế. &rdquo;
                          </p>
                        </blockquote>

                        <div class="author-info">
                          <div class="author-pic">
                            <img
                              src="{{ asset('Fe/images/Bill_Gates.jpg') }}"
                              alt="Bill Gates"
                              class="img-fluid"
                            />
                          </div>
                          <h3 class="font-weight-bold">Bill Gates</h3>
                          <span class="position d-block mb-3"
                            >Tỷ phú người Mỹ</span
                          >
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- END item -->

                <div class="item">
                  <div class="row justify-content-center">
                    <div class="col-lg-8 mx-auto">
                      <div class="testimonial-block text-center">
                        <blockquote class="mb-5">
                          <p>
                            &ldquo;Phim hay, giá cả phải chăng, dịch vụ đỉnh của
                            chóp là những gì Royal Cinema mang lại. 10 điểm
                            không có nhưng.&rdquo;
                          </p>
                        </blockquote>

                        <div class="author-info">
                          <div class="author-pic">
                            <img
                              src="{{ asset('Fe/images/ronaldo.jpg') }}"
                              alt="Cristiano Ronaldo"
                              class="img-fluid"
                            />
                          </div>
                          <h3 class="font-weight-bold">Cristiano Ronaldo</h3>
                          <span class="position d-block mb-3"
                            >Huyền thoại bóng đá người Bồ Đào Nha</span
                          >
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- END item -->

                <div class="item">
                  <div class="row justify-content-center">
                    <div class="col-lg-8 mx-auto">
                      <div class="testimonial-block text-center">
                        <blockquote class="mb-5">
                          <p>
                            &ldquo;Có thể nói, đây là lựa chọn "số 1" của rất
                            nhiều người bởi Royal là đơn vị phát hành của rất
                            nhiều bộ phim nổi tiếng cả trong và ngoài nước. Hệ
                            thống với nhiều rạp, giá hạt dẻ cũng là 1 lợi thế mà
                            không phải rạp nào cũng có. &rdquo;
                          </p>
                        </blockquote>

                        <div class="author-info">
                          <div class="author-pic">
                            <img
                              src="{{ asset('Fe/images/messi.jpg') }}"
                              alt="Lionel Messi"
                              class="img-fluid"
                            />
                          </div>
                          <h3 class="font-weight-bold">Lionel Messi</h3>
                          <span class="position d-block mb-3"
                            >Huyền thoại bóng đá người Argentina</span
                          >
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- END item -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- End Review Slider -->
    <hr />

@endsection

