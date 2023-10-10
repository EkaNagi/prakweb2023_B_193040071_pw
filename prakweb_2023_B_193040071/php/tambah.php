<?php
session_start();

if (!isset($_SESSION["username"])) {
  header("Location: login.php");
  exit;
}

require 'function.php';

if (isset($_POST['tambah'])) {
  if (tambah($_POST) > 0) {
    echo "<script>
              alert('Data berhasil ditambahkan!');
              document.location.href = 'admin.php';
          </script>";
  } else {
    echo "<script>
              alert('Data gagal ditambahkan!');
              document.location.href = 'admin.php';
          </script>";
  }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tambah Data</title>
  <link rel="stylesheet" href="../css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>

<body>
  <div class="container">
    <div class="card mx-auto mt-5 mb-5">
      <h5 class="card-header">Form Tambah Data Buku</h5>
      <div class="card-body">
        <form action="" method="POST" enctype="multipart/form-data">

          <div class="form-group">
            <label for="nama_laptop">Nama Buku</label>
            <input type="text" name="nama_laptop" class="form-control" id="nama_laptop" placeholder="Nama Laptop" required>
          </div>
          <div class="form-group">
            <label for="harga_laptop">Harga Buku</label>
            <input type="text" name="harga_laptop" class="form-control" id="harga_laptop" placeholder="Harga Laptop" required>
          </div>
          <div class="form-group">
            <label for="stock_laptop">Stock Buku</label>
            <input type="text" name="stock_laptop" class="form-control" id="stock_laptop" placeholder="Stock Laptop" required>
          </div>
          <div class="form-group">
            <label for="monitor">Jenis Kertas</label>
            <input type="text" name="monitor" class="form-control" id="monitor" placeholder="Monitor" required>
          </div>
          <div class="form-group">
            <label for="processor">Banyak Halaman</label>
            <input type="text" name="processor" class="form-control" id="processor" placeholder="Processor" required>
          </div>
          <div class="form-group">
            <label for="graphic_card">Genre</label>
            <input type="text" name="graphic_card" class="form-control" id="graphic_card" placeholder="Graphic Card" required>
          </div>
          <div class="form-group">
            <label for="ram">Jenis Buku</label>
            <select name="ram" class="form-control" id="ram" required>
              <option>------------------- Jenis Buku -------------------</option>
              <option value="2GB">Novel</option>
              <option value="4GB">Pelajaran</option>
              <option value="8GB">Komik</option>
              <option value="16GB">Anak-anak</option>
              <option value="32GB">Biografi</option>
            </select>
          </div>
          <div class="form-group">
            <label for="storage">Besar Buku</label>
            <select name="storage" class="form-control" id="storage" required>
              <option>------------------- Besar Buku -------------------</option>
              <option value="320GB">Kecil</option>
              <option value="512GB">Sedang</option>
              <option value="1TB">Besar</option>
            </select>
          </div>
          <div class="form-group">
            <label for="konektivitas">Penulis</label>
            <input type="text" name="konektivitas" class="form-control" id="konektivitas" placeholder="Konektivitas" required>
          </div>
          <div class="form-group">
            <label for="port">Penerbit</label>
            <input type="text" name="port" class="form-control" id="port" placeholder="Port" required>
          </div>
          <div class="form-group">
            <label for="baterai">Tahun Terbit</label>
            <input type="text" name="baterai" class="form-control" id="baterai" placeholder="Baterai" required>
          </div>
          <div class="form-group">
            <label for="foto_laptop">Gambar</label>
            <input type="text" name="foto_laptop" class="form-control" id="foto_laptop" aria-describedby="" placeholder="Gambar Laptop" autofocus required>
          </div>
          <button type="submit" name="tambah" class="btn btn-dark">Tambah Data</button>
          <button type="submit" name="" class="btn btn-dark">
            <a href="admin.php" style="text-decoration: none; color: white;">Kembali</a>
          </button>
        </form>
      </div>
    </div>
  </div>
</body>

</html>