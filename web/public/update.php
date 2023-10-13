<?php
  session_start();
  
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "booking";
  $dbport = 3307;
  
  $conn = new mysqli($servername, $username, $password, $dbname, $dbport);
  
  // Kiểm tra kết nối
  if ($conn->connect_error) {
      die("Kết nối đến cơ sở dữ liệu thất bại: " . $conn->connect_error);
  }

  $data = json_decode(file_get_contents("php://input"));

  $sql = "INSERT INTO ves (Ma_ghe, Ma_phong, Ma_lich_chieu, Ma_hoa_don, Gia) VALUES ('$data->Ma_ghe', '$data->Ma_phong', '$data->Ma_lich_chieu', '$data->Ma_hoa_don', '$data->Gia)";
  
  if ($conn->query($sql) === TRUE) {
      $response = "Dữ liệu đã được lưu vào cơ sở dữ liệu thành công";
  } else {
      $response = "Lỗi khi lưu dữ liệu vào cơ sở dữ liệu: " . $conn->error;
  }

  $conn->close();

  echo json_encode($response);
  ?>