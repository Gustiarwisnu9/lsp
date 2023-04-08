<?php include 'layout/navbar.php'; ?>
<?php $data = query("SELECT * FROM transaksi WHERE name = '{$_SESSION['name']}'"); ?>
<?php if (!isset($_SESSION["username"])) :
    echo "<script>
           alert('Anda belum login, silahkan login dulu!');
           window.location = 'login/index.php';
           </script>";
endif; ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Customer</title>
    <link rel="stylesheet" href="style/style2.css">
</head>

<body>
    <div class="container">
        <div class="informasi">
            <center><h2>Selamat Datang <?= $_SESSION["name"]; ?>, ini adalah halaman dashboard belanjaan kamu</h2><br><br>
            <b style="font-family:Segoe UI;font-size: 35px;"> KETERANGAN </b>
            <p>Jika Status = <b> Proses</b> <br> Produk anda sedang di proses oleh admin</p>
            <p>Jika Status = <b>Dikirim </b><br> Mohon Ditunggu karena produk sedang dalam proses pengiriman ke tempat anda</p>
            <p>Jika Status = <b>Ditolak</b><br> Harap Diperiksa kembali data-data anda, Pastikan tidak ada data yang salah </p></center>
        </div>
        <div class="data-transaksi">
            <table>
                <tr>
                    <th>No</th>
                    <th>Nama Lengkap</th>
                    <th>Nama Produk</th>
                    <th>Alamat</th>
                    <th>Harga</th>
                    <th>Foto</th>
                    <th>Status</th>
                    <th>Aksi</th>
                </tr>
                <?php $i = 1; ?>
                <?php foreach ($data as $data) : ?>
                    <tr>
                        <td><?= $i; ?></td>
                        <td><?= $data["name"]; ?></td>
                        <td><?= $data["nama_produk"]; ?></td>
                        <td><?= $data["alamat"]; ?></td>
                        <td><?= number_format($data["harga_produk"]); ?></td>
                        <td><img src="foto/<?= $data['foto_produk']; ?>" width="100px" alt=""></td>
                        <td><?= $data["status"]; ?></td>
                        <td>
                            <a href="detail_transaksi.php?id=<?= $data["id_transaksi"]; ?>" class="detail">Detail →</a>
                        </td>
                    </tr>
                    <?php $i++; ?>
                <?php endforeach; ?>
            </table>
        </div>
    </div>
</body>

</html>