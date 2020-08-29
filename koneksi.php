<?php

$servernamedb = "localhost";
$database = "birolaya_db";
$usernamedb = "birolaya_birolayananpsiko";
$passworddb = "L4nxG2iH%W#)";



//function koneksibuka(){
$conn = mysqli_connect($servernamedb, $usernamedb, $passworddb, $database);
if (!$conn) {
    die("Koneksi gagal: " . mysqli_connect_error());
}
echo "Koneksi berhasil";
mysqli_close($conn);    
//}



//koneksibuka();
//echo "abc";
?>