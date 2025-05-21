<?php
  include "koneksi.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Halaman Tambah data</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

</head>
<body>

  <section class="row">
    <div class="col-md-6 offset-md-3 align-self-center"> 
      <h1 class="text-center mt-4">Form Tambah Data Pengeluaran</h1>
      <form method="POST">
        <div class="mb-3">
          <label for="inputPengeluaran" class="form-label">Pengeluaran</label>
          <input type="text" class="form-control" id="inputPengeluaran" name="pengeluaran" placeholder="Masukkan Pengeluaran">
        </div>
        <div class="mb-3">
          <label for="inputJumlahPengeluaran" class="form-label">Jumlah Pengeluaran</label>
          <input type="text" class="form-control" id="inputJumlahPengeluaran" name="jumlah_pengeluaran" placeholder="Masukkan Jumlah Pengeluaran" onkeypress="return hanyaAngka(event);">
          <script type="text/javascript">
					  function hanyaAngka(evt){
						var charCode = (evt.which) ? evt.which : event.keyCode
						if (charCode > 31 && (charCode < 48 || charCode >57)) {
						return false;
						return true;				
						}
						}
					</script>
        </div>
        <input name="daftar" type="submit" class="btn btn-primary" value="Tambah">
        <a href="../../../../index.php?page=pengeluaran" type="button" class="btn btn-info text-white">Kembali</a>
      </form>
    </div>
  </section>

  <?php
    
    // Buat kondisi jika tombol data di klik
    if(isset($_POST['daftar'])){
      // Membuat variable setiap field inputan agar kodingan lebih rapi.
      $pengeluaran = $_POST['pengeluaran'];
      $jumlah_pengeluaran = $_POST['jumlah_pengeluaran'];

      // Membuat Query
      $query = "INSERT INTO data_pengeluaran (pengeluaran, jumlah_pengeluaran) VALUES('".$pengeluaran."', '".$jumlah_pengeluaran."')";

      $result = mysqli_query($koneksi, $query);

      if($result){
        header("location: ../../../../index.php?page=pengeluaran");
      } else {
        echo "<script>alert('Data Gagal di tambahkan!')</script>";
      }

    }    

  ?>

</body>
</html>