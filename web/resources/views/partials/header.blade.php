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
            <li><a class="nav-link" href="{{ route('giave') }}">Giá vé</a></li>
            <li><a class="nav-link" href="{{ route('news') }}">Tin tức và ưu đãi</a></li>
            @if(Auth::check())
              <li><a class="nav-link" href="{{ route('thongtin') }}">{{Auth::User()->name}}</a></li>
              <li><a class="nav-link" href="{{ route('logout') }}">Đăng xuất</a></li>
            @else
              <li><a class="nav-link" href="{{ route('login') }}">Đăng nhập</a></li>
            @endif
          </ul>
        </div>
      </div>
    </nav>