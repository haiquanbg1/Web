<!--navbar control-->
    <nav
      class="navbar navbar-expand-sm navbar-dark bg-dark"
      aria-label="Cinema navigation bar"
    >
      <div class="container">
        <a class="navbar-brand" href="{{ route('home.index') }}">
          <img
            src="{{ asset('Fe/images/cinema.png') }}"
            alt="Logo"
            style="width: 40px"
            class="rounded-pill"
          />
        </a>
        <a class="navbar-brand" href="{{ route('home.index') }}">
          <h4>Royal Cinema</h4>
        </a>

        <div class="collapse navbar-collapse" id="navBarsCinema">
          <ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
            <li class="nav-item active">
              <a class="nav-link" href="{{ route('phim.dangchieu') }}">Phim</a>
            </li>
            <li><a class="nav-link" href="{{ asset('Fe/schedule.html') }}">Lịch chiếu</a></li>
            <li><a class="nav-link" href="{{ asset('Fe/ticket.html') }}">Giá vé</a></li>
            <li><a class="nav-link" href="{{ asset('Fe/news.html') }}">Tin tức và ưu đãi</a></li>
            @if(Auth::check())
              <li><a class="nav-link" href="">{{Auth::User()->name}}</a></li>
              <li><a class="nav-link" href="{{ route('logout') }}">Đăng xuất</a></li>
            @else
              <li><a class="nav-link" href="{{ route('login') }}">Đăng nhập</a></li>
            @endif
          </ul>
          <ul class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-5">
            <li>
              <a class="nav-link" href="{{ asset('Fe/cart.html') }}"
                ><img src="{{ asset('Fe/images/cart.svg') }}" alt="cart"
              /></a>
            </li>
          </ul>
        </div>
      </div>
    </nav>