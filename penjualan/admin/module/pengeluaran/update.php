<?php
  include "koneksi.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Halaman Update data</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

</head>
<body>

  <?php

    // Ambil data dari patameter url browser
    $id = $_GET['id'];

    // Query ambil data dari param jika ada.
    $query = "SELECT * FROM data_pengeluaran WHERE id = $id";
    // Hasil Query
    $result = mysqli_query($koneksi, $query);
    foreach($result as $data) {
  ?>

  <section class="row">
    <div class="col-md-6 offset-md-3 align-self-center"> 
      <h1 class="text-center mt-4">Form Update Data</h1>
      <form method="POST">
        <!-- Inputan tersembunyi untuk menyimpan data id yang digunakan untuk mengupdate data, lebih aman di banding menggunakan id dari params -->
        <input type="hidden" value="<?= $data['id'] ?>" name="id">
        <div class="mb-3">
          <label for="inputPengeluaran" class="form-label">Pengeluaran</label>
          <input type="text" class="form-control" id="inputPengeluaran" value="<?= $data['pengeluaran'] ?>" name="pengeluaran" placeholder="Masukan Pengeluaran">
        </div>
        <div class="mb-3">
          <label for="inputJumlahPengeluaran" class="form-label">Jumlah Pengeluaran</label>
          <input type="number" class="form-control" id="inputJumlahPengeluaran" value="<?= $data['jumlah_pengeluaran'] ?>" name="jumlah_pengeluaran" placeholder="Masukan Jumlah Pengeluaran">
        </div>
        <input name="daftar" type="submit" class="btn btn-primary" value="Update">
        <a href="../../../index.php?page=pengeluaran" type="button" class="btn btn-info text-white">Kembali</a>
      </form>
    </div>
  </section>

  <?php } ?>

  <?php
    
    // Buat kondisi jika tombol data di klik
    if(isset($_POST['daftar'])){
      // Membuat variable setiap field inputan agar kodingan lebih rapi.
      $id = $_POST['id'];
      $pengeluaran = $_POST['pengeluaran'];
      $jumlah_pengeluaran = $_POST['jumlah_pengeluaran'];

      // Membuat Query
      $query = "UPDATE data_pengeluaran SET pengeluaran = '$pengeluaran', jumlah_pengeluaran = '$jumlah_pengeluaran' WHERE id = '$id'";

      $result = mysqli_query($koneksi, $query);

      if($result){
        header("location: ../../../index.php?page=pengeluaran");
      } else {
        echo "<script>alert('Data Gagal di update!')</script>";
      }

    }    

  ?>

</body>
</html>