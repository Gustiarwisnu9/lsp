<?php

require 'proses.php';

if(isset($_POST["register"])){
    if(tambahUser($_POST) > 0){
        echo "
        <script type='text/javascript'>
        alert('Register berhasil silahkan login')
        window.location= '../login/index.php'
        </script>
        ";
    }else{
        echo "
        <script type='text/javascript'>
        alert('Mohon maaf, Pendaftaran gagal')
        window.location = 'index.php';
        </script>
        ";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrasi</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h2 class="judul">Daftar</h2> <hr>
        <form action="" method="post">
            <label>Username</label>
            <input type="text" name="username" class="form-control" placeholder="username"><br><br>

            <label>Nama Lengkap</label>
            <input type="text" name="name" class="form-control" placeholder="nama lengkap"><br><br>

            <label>Password</label>
            <input type="password" name="password" class="form-control" placeholder="password"><br><br>

            <label>Roles</label>
            <select name="roles" class="form-control">
                <option value="customer" class="option">Customer</option>
            </select><br><br>

            <button type="submit" name="register">Register</button>
        </form>
        <div class="login">
                <small>Sudah Punya Akun? <a href="../login/index.php">Silahkan Masuk</a></small>
            </div>
    </div>
</body>
</html>