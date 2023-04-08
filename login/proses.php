<?php

include '../koneksi.php';

$username = $_POST["username"];
$password = $_POST["password"];


$query = mysqli_query($conn, "SELECT * FROM user WHERE username = '$username' AND password ='$password'");
mysqli_num_rows($query);
$cek=mysqli_num_rows($query);

if($cek > 0 ){
    $data =mysqli_fetch_array($query);
    if($data["roles"]== "Admin"){
        session_start();
        $_SESSION["username"]= $data ["username"];
        $_SESSION["name"]= $data ["name"];
        $_SESSION["roles"]= $data ["roles"];
        header("Location:../admin/index.php");
        
    }elseif($data["roles"]== "Customer"){
        session_start();
        $_SESSION["username"]= $data ["username"];
        $_SESSION["name"]= $data ["name"];
        $_SESSION["roles"]= $data ["roles"];
        header("Location:../index.php");
        
    }
}else{
    echo"
    <script type='text/javascript'>
    alert('Mohon maaf, username atau password salah')
    window.location = 'index.php';
    </script>
    ";
}
?>