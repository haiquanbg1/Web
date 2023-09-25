@extends('layouts.admin')

@section('title')
<title>Trang chủ</title>

@endsection

@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    @include('partials.content_header', ["name" => "Cập nhật phim"])

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <form action="{{ route('danhsachphim.update', ['Ma_phim' => $CapnhatDanhsachphim->Ma_phim]) }}" method="post">
                @csrf
                <div class="row">
                    <div class="mb-5 ml-1 mr-1 col-4">
                        <!-- <div class="mb-3"> -->
                        <!-- /.Tên -->
                        <label class="form-label">Tên phim</label>
                        <input type="text" class="form-control" value="{{ $CapnhatDanhsachphim->Ten_phim }}" name="Ten_phim">
                        <!-- </div> -->

                        <!-- <div class="mb-3"> -->
                        <!-- /.Thể Loại -->
                        <label class="form-label">Thể loại phim</label>
                        <input type="text" class="form-control" value="{{ $CapnhatDanhsachphim->The_loai }}" name="The_loai">
                        <!-- </div> -->
                        <!-- <div class="mb-3"> -->
                        <!-- /.Ngôn ngữ -->
                        <label class="form-label">Ngôn ngữ</label>
                        <input type="text" class="form-control" value="{{ $CapnhatChitietphim->Ngon_ngu }}" name="Ngon_ngu">
                        <!-- </div> -->

                        <!-- <div class="mb-3"> -->
                        <!-- /.Thời Lượng -->
                        <label>Độ dài phim </label>
                        <input type="number" class="form-control" value="{{ $CapnhatDanhsachphim->Thoi_luong }}" name="Thoi_luong" style="width:50%">
                        <!-- </div> -->
                        <!-- /.Ngày chiếu -->
                        <label class="form-label">Ngày chiếu</label>
                        <input type="date" class="form-control" name="Ngay_khoi_chieu" style="width:50%" value="{{ $CapnhatDanhsachphim->Ngay_khoi_chieu }}">
                        <!-- /.Tuổi giới hạn -->
                        <label class="form-label">Tuổi giới hạn</label>
                        <input type="number" class="form-control" name="Tuoi_gioi_han" style="width:50%" value="{{ $CapnhatChitietphim->Tuoi_gioi_han }}">

                    </div>
                    <div class="mb-5 ml-3 col-4">
                        <!-- <div class="mb-3 ml-5"> -->
                        <!-- /.Tên đạo diễn -->
                        <label class="form_label">Tên đạo diễn</label>
                        <input type="text" class="form-control" placeholder="Nhập tên đạo diễn" name="Dao_dien" style="width:75%" value="{{ $CapnhatChitietphim->Dao_dien }}">
                        <!-- </div> -->
                        <!-- <div class="mb-3 ml-5"> -->
                        <!-- /.Tên diễn viên -->
                        <label class="form_label">Tên các diễn viên</label>
                        <textarea type="text" class="form-control" name="Dien_vien"><?php echo $CapnhatChitietphim->Dien_vien; ?></textarea>
                        <!-- /.Trailer -->
                        <label class="form_label">Trailer</label>
                        <textarea type="text" class="form-control" name="Trailer"><?php echo $CapnhatChitietphim->Trailer; ?></textarea>
                        <label class="form_label">Ảnh</label>
                        <input type="text" class="form-control" name="Image" value="{{ $CapnhatChitietphim->Image }}"></input>
                        <!-- /.Tóm tắt -->
                        <label class="form_label">Tóm tắt</label>
                        <textarea type="text" class="form-control" rows="5px" name="Tom_tat"><?php echo $CapnhatChitietphim->Tom_tat; ?>
                            </textarea>
                        <!-- </div> -->
                    </div>
                </div>
                <div  class="pb-3">
                    <button type="submit" class="btn btn-primary">Cập nhật</button>
                    <label class="form_label ml-3" style="color:red">*(Lưu ý: Mọi thông tin phải được nhập đầy đủ)</label>
                </div>
            </form>
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

@endsection