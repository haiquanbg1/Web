@extends('layouts.admin')

@section('title')
<title>Trang chủ</title>

@endsection

@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    @include('partials.content_header', ["name" => "Thông tin phim"])

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <form action="{{ route('danhsachphim.update', ['Ma_phim' => $XemDanhsachphim->Ma_phim]) }}" method="post">
                @csrf
                <div class="row">
                    <div class="mb-5 ml-1 mr-1 col-3">
                        <!-- <div class="mb-3"> -->
                        <!-- /.Tên -->
                        <label class="form-label">Tên phim</label>
                        <input type="text" class="form-control" value="{{ $XemDanhsachphim->Ten_phim }}" name="Ten_phim" disabled>
                        <!-- </div> -->

                        <!-- <div class="mb-3"> -->
                        <!-- /.Thể Loại -->
                        <label class="form-label">Thể loại phim</label>
                        <input type="text" class="form-control" value="{{ $XemDanhsachphim->The_loai }}" name="The_loai" disabled>
                        <!-- </div> -->
                        <!-- <div class="mb-3"> -->
                        <!-- /.Ngôn ngữ -->
                        <label class="form-label">Ngôn ngữ</label>
                        <input type="text" class="form-control" value="{{ $XemChitietphim->Ngon_ngu }}" name="Ngon_ngu" disabled>
                        <!-- </div> -->

                        <!-- <div class="mb-3"> -->
                        <!-- /.Thời Lượng -->
                        <label>Độ dài phim </label>
                        <input type="number" class="form-control" value="{{ $XemDanhsachphim->Thoi_luong }}" name="Thoi_luong" style="width:50%" disabled>
                        <!-- </div> -->
                        <!-- /.Ngày chiếu -->
                        <label class="form-label">Ngày chiếu</label>
                        <input type="date" class="form-control" name="Ngay_khoi_chieu" style="width:50%" value="{{ $XemDanhsachphim->Ngay_khoi_chieu }}" disabled>
                        <!-- /.Tuổi giới hạn -->
                        <label class="form-label">Tuổi giới hạn</label>
                        <input type="number" class="form-control" name="Tuoi_gioi_han" style="width:50%" value="{{ $XemChitietphim->Tuoi_gioi_han }}" disabled>

                    </div>
                    <div class="mb-5 ml-3 col-4">
                        <!-- <div class="mb-3 ml-5"> -->
                        <!-- /.Tên đạo diễn -->
                        <label class="form_label">Tên đạo diễn</label>
                        <input type="text" class="form-control" placeholder="Nhập tên đạo diễn" name="Dao_dien" value="{{ $XemChitietphim->Dao_dien }}" disabled>
                        <!-- </div> -->
                        <!-- <div class="mb-3 ml-5"> -->
                        <!-- /.Tên diễn viên -->
                        <label class="form_label">Tên các diễn viên</label>
                        <textarea type="text" class="form-control" name="Dien_vien" disabled><?php echo $XemChitietphim->Dien_vien; ?></textarea>
                        <!-- /.Tóm tắt -->
                        <label class="form_label">Tóm tắt</label>
                        <textarea type="text" class="form-control" rows="5px" name="Tom_tat" disabled><?php echo $XemChitietphim->Tom_tat; ?>
                            </textarea>
                        <!-- </div> -->
                    </div>
                    <div class="mb-5 ml-3 col-4">
                        <!-- /.Trailer -->
                        <label class="form_label">Trailer</label>
                        <textarea type="text" class="form-control" name="Trailer" style="width:75%" disabled><?php echo $XemChitietphim->Trailer; ?></textarea>
                        <label class="form_label">Ảnh</label><br>
                        <img src="{{ $XemChitietphim->Image }}" class="img-fluid" width="200">
                    </div>
                    
                </div>
        </div>
    </div>
    </form>
</div><!-- /.container-fluid -->
</div>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->

@endsection