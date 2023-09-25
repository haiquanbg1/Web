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

  .table {
    width: 100%;
  }
  .Count {
    width: 10%;
  }
  .Image {
    width: 70%;
  }
  .Button {
    width: 20%;
  }
</style>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

  @include('partials.content_header', ["name" => "Slider"])

  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          <a href="{{ route('slider.create') }}" class="btn btn-success float-right m-2">Thêm</a>
        </div>
        <div class="col-md-12 mb-3">
          <table class="table">
            <thead>
              <tr>
                <th scope="col" class="Count">###</th>
                <th scope="col" class="Image">Ảnh</th>
                <th scope="col" class="Button">Thao tác</th>
              </tr>
            </thead>
            <tbody>
              <div class="col-md-12">
                @foreach($Dataslider as $data)
                <tr>
                  <th scope="row">{{ $data->id }}</th>
                  <td scope="col">
                    <img src="{{ $data->Image }}" class="img-fluid" width="600">
                  </td>
                  <td>
                    <a href="{{ route('slider.delete', ['id' => $data->id]) }}" class="btn btn-danger">Xoá</a>
                  </td>

                </tr>
                @endforeach


              </div>

            </tbody>

          </table>
          <div class="pagination">
            {{ $Dataslider->links() }}
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