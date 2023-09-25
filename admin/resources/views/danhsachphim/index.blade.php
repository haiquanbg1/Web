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

  @include('partials.content_header', ["name" => "Danh sách phim"])

  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          <a href="{{ route('danhsachphim.create') }}" class="btn btn-success float-right m-2">Thêm</a>
        </div>
        <div class="col-md-12 mb-3">
          <table class="table">
            <thead>
              <tr>
                <th scope="col">###</th>
                <th scope="col">Tên phim</th>
                <th scope="col">Thông tin</th>
                <th scope="col">Thao tác</th>
              </tr>
            </thead>
            <tbody>
              <div class="col-md-12">
                @foreach($DataDanhsachphim as $data)
                <tr>
                  <th scope="row">{{ $data->Ma_phim }}</th>
                  <td class="text-break" style="width: 600px;">{{ $data->Ten_phim }}</td>
                  <td>
                    <a href="{{ route('danhsachphim.info', ['Ma_phim' => $data->Ma_phim]) }}" class="btn btn-info">Xem</a>
                  </td>
                  <td>
                    <a href="{{ route('danhsachphim.edit', ['Ma_phim' => $data->Ma_phim]) }}" class="btn btn-default">Chỉnh sửa</a>
                    <a href="{{ route('danhsachphim.delete', ['Ma_phim' => $data->Ma_phim]) }}" class="btn btn-danger">Xoá</a>
                  </td>

                </tr>
                @endforeach


              </div>

            </tbody>

          </table>
          <div class="pagination">
            {{ $DataDanhsachphim->links() }}
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