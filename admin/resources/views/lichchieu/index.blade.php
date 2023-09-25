@extends('layouts.admin')
@section('title')
<title>Trang chủ</title>

@endsection

@section('content')

<style>
  .pagination a {
    font-size: 14px;
    padding: 5px 10px;
  }

  .hidden {
    display: none;
  }
</style>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

  @include('partials.content_header', ["name" => "Lịch chiếu phim"])

  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          <a href="{{ route('lichchieu.create') }}" class="btn btn-success float-right m-2">Thêm</a>
        </div>
        <div class="col-md-12 mb-3">
          <table class="table">
            <thead>
              <tr>
                <th scope="col">###</th>
                <th scope="col">Tên phim</th>
                <th scope="col">Phòng</th>
                <th scope="col">Ngày chiếu</th>
                <th scope="col">Giờ chiếu</th>
                <th scope="col">Thao tác</th>
              </tr>
            </thead>
            <tbody>
              <div class="col-md-12">
                @foreach($DataLichChieu as $data)
                <tr>
                  <th scope="row">{{ $data->Ma_lich_chieu }}</th>
                  <td class="text-break" style="width: 600px;"><?php
                        foreach($DataPhim as $datas)
                        {
                            if($datas->Ma_phim == $data->Ma_phim)
                            {
                                echo $datas->Ten_phim;
                                break;
                            }
                        }

                  ?></td>
                  <td scope="col">{{ $data->Ma_phong }}</td>
                  <td scope="col">{{ $data->Ngay_chieu }}</td>
                  <td scope="col">{{ $data->Gio_chieu }}</td>
                  <td>
                    <a href="{{ route('lichchieu.delete', ['Ma_lich_chieu' => $data->Ma_lich_chieu]) }}" class="btn btn-danger">Xoá</a>
                  </td>

                </tr>
                @endforeach


              </div>

            </tbody>

          </table>
          <div class="pagination">
            {{ $DataLichChieu->links() }}
          </div>
        </div>
      </div>
      <!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->

@endsection