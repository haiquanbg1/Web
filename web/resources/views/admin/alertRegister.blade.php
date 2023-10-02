@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

@if (Session::has('error1'))
    <div class="alert alert-danger"> 
         {{Session::get('error1')}}
    </div>
@endif

@if (Session::has('error2'))
    <div class="alert alert-danger"> 
         {{Session::get('error2')}}
    </div>
@endif

@if (Session::has('success'))
    <div class="alert alert-success"> 
         {{Session::get('success')}}
    </div>
@endif