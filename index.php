<?php include 'layout/navbar.php'; ?>
<?php
$data = query("SELECT * FROM produk WHERE stok_produk > 0");
?>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
<div class="hero">
    <div class="hero-text">
        <?php if (isset($_SESSION["username"])) : ?>
            <h1 style="font-size:50px; font-family:'Segoe UI', serif;">Halo <?= $_SESSION["name"]; ?></h1>
            <h3 style="font-family:roboto;"> - Selamat Datang di iLaptop -</34>

        <?php endif; ?>
        <?php if (!isset($_SESSION["username"])) : ?>
            <h1 style="font-weight:bolder;font-family:Segoe UI;font-size:50px;padding-bottom:20px;">iLaptop.</h1>
            <h4 style="font-family:arial;font-size:20px;"> -Temukan Laptop Impian Anda -</h4>
            </ul>
        <?php endif; ?>
    </div>
</div>

<div class="container">
    <div class="text-produk">
        <h2 style="font-weight:bolder;font-family:Arial;">Produk Tersedia di iLaptop.</h2>
        <hr>
    </div>
    <div class="wrapper-produk">
        <?php foreach ($data as $produk) : ?>
            <div class="produk">
                <a href="detail.php?id=<?= $produk["id_produk"]; ?> ">
                    <img src="foto/<?= $produk["foto_produk"]; ?>">
                    <h2><?= $produk["nama_produk"]; ?></h2>
                    <p>Rp. <?= number_format($produk["harga_produk"]); ?></p><br>
                    <p> Stok Tersedia :<?= $produk["stok_produk"]; ?></p>
                </a>
            </div>
        <?php endforeach; ?>
    </div>
</div>
<?php require "layout/footer.php"; ?>