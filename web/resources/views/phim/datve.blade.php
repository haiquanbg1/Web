@extends('layouts.admin')

@section('title')
<title>Đặt vé</title>
@endsection

@section('content')

<div class="container">
  <div class="row">
    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
      <!-- <div style="margin: 35px 0px;">
          <span style="font-size:23px"><a style="color: #03599d; text-decoration:none" href="index.html">Trang
              chủ</a></span>
          >
          <span style="font-size:23px"><a style="color: #03599d; text-decoration:none" href="#">Đặt vé</a></span>
          >
          <span style="font-size:23px"><a style="color: #03599d; text-decoration:none" href="filmDetails.html">Ác quỷ ma
              sơ II</a></span>
        </div> -->


      <!--Ghe ngoi-->
      <div id="screen_form">
        <div class="seat-status pb-3" style="margin-bottom:10px; align-items:center; justify-content:center; display:flex">
          <div class="col-lg-3 col-md-3 col-xl-3">
            <img width="35" height="35" src="{{ asset('Fe/images/seat-unselect-normal.png') }}">
            <span>Ghế trống</span>
          </div>
          <div class="col-lg-3 col-md-3 col-xl-3">
            <img width="35" height="35" src="{{ asset('Fe/images/seat-select-normal.png') }}">
            <span>Ghế đang chọn</span>
          </div>
          <div class="col-lg-3 col-md-3 col-xl-3">
            <img width="35" height="35" src="{{ asset('Fe/images/seat-buy-normal.png') }}">
            <span>Ghế đã bán</span>
          </div>
        </div>

        <div style="margin-top:20px;">
          <div class="row">
            <div style="float: left;">
              <img class="img-responsive" src="{{ asset('Fe/images/ic-screen.png') }}">
            </div>
          </div>
          <!-- Ghe Thuong -->
          @for($j=0; $j <= 1; $j++) 
          <div style="width: 100%; display:flex">
            @for($i=1; $i<=2; $i++) 
            <div style="margin:10px;">
              <img style="display: none;" class="seat-cell" src="{{ asset('Fe/images/seat-unselect-normal.png') }}" alt="Description of the image">
            </div>
            @endfor

            <?php $GheThuong = $DataGhe->where('Loai_ghe', '=', "Ghế thường");
            $count = 0;
            foreach ($GheThuong as $data) {
              $count = $data->Ma_ghe + $j * 10-1;
              break;
            }
            ?>

            @for($i = $count; $i <= $count+9; $i++ )
            @if($GheThuong[$i]->Trang_thai == 0)
            <form method="post" action="{{ route('themghe', ['Ma_ghe' => $GheThuong[$i]->Ma_ghe, 'Ma_lich_chieu' => $LC->Ma_lich_chieu]) }}">
            {{ csrf_field() }}
              <button type="submit" style="margin:10px; position:relative; cursor:pointer; border: none; background:none;">
                @if($GheThuong[$i]->Trang_thai == 0)
                  <img class="seat-cell" src="{{ asset('Fe/images/seat-unselect-normal.png') }}" alt="Description of the image">
                @elseif($GheThuong[$i]->Trang_thai == 1)
                  <img class="seat-cell" src="{{ asset('Fe/images/seat-select-normal.png') }}" alt="Description of the image">
                @endif
                <div style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); color:black" ><?php echo $GheThuong[$i]->Ten_ghe ?>
                </div>
              </button>
            </form>
            @elseif($GheThuong[$i]->Trang_thai == 1)
            <form method="post" action="{{ route('xoaghe', ['Ma_ghe' => $GheThuong[$i]->Ma_ghe, 'Ma_lich_chieu' => $LC->Ma_lich_chieu]) }}">
            {{ csrf_field() }}
              <button type="submit" style="margin:10px; position:relative; cursor:pointer; border: none; background:none;">
                @if($GheThuong[$i]->Trang_thai == 0)
                  <img class="seat-cell" src="{{ asset('Fe/images/seat-unselect-normal.png') }}" alt="Description of the image">
                @elseif($GheThuong[$i]->Trang_thai == 1)
                  <img class="seat-cell" src="{{ asset('Fe/images/seat-select-normal.png') }}" alt="Description of the image">
                @endif
                <div style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); color:black" ><?php echo $GheThuong[$i]->Ten_ghe ?>
                </div>
              </button>
            </form>
            @else
            <div style="margin:10px; position:relative;">
                <img class="seat-cell" src="{{ asset('Fe/images/seat--normal.png') }}" alt="Description of the image">
                <div style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); color:black" ><?php echo $GheThuong[$i]->Ten_ghe ?>
                </div>
          </div>
            @endif
            @endfor
          </div>
          @endfor
        
          <!-- Ghe Vip -->
          @for($j=0; $j <= 6; $j++) 
          <div style="width: 100%; display:flex">
            @for($i=1; $i<=2; $i++) 
            <div style="margin:10px;">
              <img style="display: none;" class="seat-cell" src="{{ asset('Fe/images/vip.png') }}" alt="Description of the image">
            </div>
            @endfor

            <?php $GheVip = $DataGhe->where('Loai_ghe', '=', "Ghế vip");
            $count = 0;
            foreach ($GheVip as $data) {
              $count = $data->Ma_ghe + $j * 10-1;
              break;
            }
            ?>

            @for($i = $count; $i <= $count+9; $i++ ) 
            @if($GheVip[$i]->Trang_thai == 0)
            <form method="post" action="{{ route('themghe', ['Ma_ghe' => $GheVip[$i]->Ma_ghe, 'Ma_lich_chieu' => $LC->Ma_lich_chieu]) }}">
            {{ csrf_field() }}
              <button type="submit" style="margin:10px; position:relative; cursor:pointer; border: none; background:none;">
                <img class="seat-cell" src="{{ asset('Fe/images/vip.png') }}" alt="Description of the image">
                <div style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); color:black" ><?php echo $GheVip[$i]->Ten_ghe ?>
                </div>
              </button>
            </form>
            @endif
            
            @endfor
          </div>
          @endfor
          <?php $demo = asset('Fe/images/vip.png'); ?>
    <!-- Ghe Doi -->
    <div style="width: 100%; display:flex">
      @for($i=1; $i<=9; $i++) <div style="margin:10px; position:relative;">
        <img class="double-seat" style="display: none;" src="{{ asset('Fe/images/seat-unselect-double.png') }}" alt="Description of the image">
    </div>
    @endfor
    <?php $GheDoi = $DataGhe->where('Loai_ghe', '=', "Ghế đôi") ?>
    @foreach($GheDoi as $data)
    <form method="post" action="{{ route('themghe', ['Ma_ghe' => $data->Ma_ghe, 'Ma_lich_chieu' => $LC->Ma_lich_chieu]) }}">
            {{ csrf_field() }}
              <button type="submit" style="margin:10px; position:relative; cursor:pointer; border: none; background:none;">
                <img class="double-seat" src="{{ asset('Fe/images/seat-unselect-double.png') }}" alt="Description of the image">
                <div style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); color:black" >{{ $data->Ten_ghe }}
                </div>
              </button>
            </form>
    @endforeach
  </div>
</div>
</div>



<!--Thong tin mua ve-->
<div class="seat-type-panel" style="display: flex; width:100%;">
  <div class="seat-status mb-4" style="display:flex; padding:20px; align-items:center; justify-content:center;" style="width:60%;">
    <div style="margin-right:30px;">
      <img width="40" height="40" src="{{ asset('Fe/images/seat-unselect-normal.png') }}">
      <span>Ghế thường</span>
    </div>
    <div style="margin-right:30px;">
      <img width="40" height="40" src="{{ asset('Fe/images/vip.png') }}">
      <span>Ghế vip</span>
    </div>
    <div style="margin-right:30px;">
      <img width="75" height="40" src="{{ asset('Fe/images/seat-unselect-double.png') }}">
      <span>Ghế đôi</span>
    </div>
  </div>
  <div class="total-money seat-status" style="width:50%;">
    <div class="row">
      <div class="total-money-label">
        <h4> Tổng tiền </h4>
      </div>
      <div class="total-money-label">
        <h4 id="totalMoney"></h4>
      </div>
    </div>
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
    </ul>

    <div style="justify-content: center; align-items:center; display:flex">
      <button class="btn btn-primary">
        <a href="{{ route('phim.xacnhan') }}" class="buy" style="padding:20px; text-decoration:none">Xác nhận</a>
      </button>
    </div>
    <hr>
  </div>
</div>
</div>
</div>

<!-- <script>
  
function asset(path){
    return window.myConfig.baseURL + path;
}

var money = 0;
var seats = [];
var totalMoney = document.getElementById("totalMoney");
var image = document.querySelectorAll(".myImage");
image.forEach(image=>{
    image.addEventListener("click", function() {
        if (image.children[0].getAttribute("src") === asset('Fe/images/seat-unselect-normal.png')) {
            image.children[0].setAttribute("src", asset('Fe/images/seat-select-normal.png'));
            money += 50000;
        } else {
            image.children[0].setAttribute("src", asset('Fe/images/seat-unselect-normal.png'));
            money -= 50000;
        }
        console.log(money);
        totalMoney.innerHTML = money + " vnd ";
    });
});


var imageVip = document.querySelectorAll(".myImageVip");
imageVip.forEach(imageVip=>{
    imageVip.addEventListener("click", function() {
        if (imageVip.children[0].getAttribute("src") === asset('Fe/images/vip.png')) {
            imageVip.children[0].setAttribute("src", asset('Fe/images/seat-select-vip.png'));
            money += 55000;
        } else {
            imageVip.children[0].setAttribute("src", asset('Fe/images/vip.png'));
            money -= 55000;
        }
        console.log(money);
        totalMoney.innerHTML = money + " vnd ";
    });
});

var imageDouble = document.querySelectorAll(".myImageDouble");
imageDouble.forEach(imageDouble=>{
    imageDouble.addEventListener("click", function() {
        if (imageDouble.children[0].getAttribute("src") === asset('Fe/images/seat-unselect-double.png')) {
            imageDouble.children[0].setAttribute("src", asset('Fe/images/seat-select-double.png'));
            money += 110000;
        } else {
            imageDouble.children[0].setAttribute("src", asset('Fe/images/seat-unselect-double.png'));
            money -= 110000;
        }
        console.log(money);
        totalMoney.innerHTML = money + " vnd ";
    });
});
    var creatBtn = document.querySelector('.buy');

    creatBtn.onclick = function() {
      
        var maLichChieu = "{{ $LC->Ma_lich_chieu }}";
        // var productId = document.querySelector('#product-id').innerHTML;
        // var name = document.querySelector('#product-name').innerHTML;
        // var image = document.getElementById('product-image').src;
        // console.log(name, image, productId);
        var formProduct = {
            Ma_ghe: 1,
            Ma_khach_hang: 1,
            Ma_lich_chieu: maLichChieu,
            Gia: 1
        }
        console.log(formProduct);
        var demo = document.cookie;
        console.log(demo);
        // document.cookie = "web=1;path=\phim\xacnhan";
    }
  

</script> -->


@endsection