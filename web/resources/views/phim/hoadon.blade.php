<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    @foreach($data as $ghe)
        <h5>{{ $ghe->Ma_ghe }}</h5>
    @endforeach
</body>
</html>