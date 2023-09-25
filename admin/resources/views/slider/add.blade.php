@extends('layouts.admin')

@section('title')
<title>Trang chủ</title>

@endsection

@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    @include('partials.content_header', ["name" => "Thêm slider"])

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <form action="{{ route('slider.store') }}" method="post" enctype="multipart-form-data">
                @csrf
                    <div class="mb-5 ml-1 mr-1 col-4">
                        <!-- <div class="mb-3"> -->
                        <!-- </div> -->
                        <label class="form-label">Ảnh</label>
                        <input type="text" class="form-control" name="Image">
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