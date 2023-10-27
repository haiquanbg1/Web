@extends('layouts.admin')

@section('title')
<title>Trang chủ</title>

@endsection

@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    @include('partials.content_header', ["name" => "Thêm lịch chiếu"])

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <form action="{{ route('lichchieu.store') }}" method="post" enctype="multipart-form-data">
            {{ csrf_field() }}
                <div class="row">
                    <div class="mb-5 ml-1 mr-1 col-4">
                        <!-- <div class="mb-3"> -->
                        <!-- /.Tên -->
                        <label class="form-label">Mã phim</label>
                        <input type="number" class="form-control" name="Ma_phim">
                        <!-- </div> -->
                        <!-- <div class="mb-3"> -->
                        <!-- /.Thể Loại -->
                        <label class="form-label">Mã phòng</label>
                        <input type="number" class="form-control" name="Ma_phong">
                        <!-- </div> -->

                    </div>
                    <div class="mb-5 ml-3 col-4">
                        <label class="form-label">Ngày chiếu</label>
                        <input type="date" class="form-control" name="Ngay_chieu">
                        <label class="form-label">Giờ chiếu</label>
                        <input type="time" class="form-control" name="Gio_chieu">
                        <!-- </div> -->
                    </div>
                </div>

                <button type="submit" class="btn btn-primary">Thêm</button>
                <label class="form_label ml-3" style="color:red">*(Lưu ý: Mọi thông tin phải được nhập đầy đủ)</label>
            </form>
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

@endsection