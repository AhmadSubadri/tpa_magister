<?php
include("public_html/inc/koneksi.php");
session_start();
koneksi_buka();



$username = "albert01";
$pasword = "123";
$servernamedb = "localhost";
$database = "birolaya_db";
$usernamedb = "birolaya_birolayananpsiko";
$passworddb = "L4nxG2iH%W#)";



//$conn = mysqli_connect($servernamedb, $usernamedb, $passworddb, $database);
//if (!$conn) {
//    die("Koneksi gagal: " . mysqli_connect_error());
//}
//echo "Koneksi berhasil";
//mysqli_close($conn);   

$conn = mysqli_connect($servernamedb, $usernamedb, $passworddb, $database);
$sql = "SELECT * FROM user WHERE username= 'albert' and password= '202cb962ac59075b964b07152d234b70'";
$result = mysql_query('SHOW DATABASES',$conn);
$count = mysql_num_rows($result);
echo $count;
//echo 1;


// username and password sent from Form
//$username=mysql_real_escape_string($_POST['username']); 
//$ps=md5(mysql_real_escape_string($_POST['password']));
$username = "avataraang";
$ps = "Release211";
$acv = "kuiol9skdsmdwrewrq99908765rftyu7";
$dacv= md5($acv . md5($ps) . $acv );
//$sql = "SELECT * FROM usergarap WHERE username= '$username' and password='$dacv'";
//$result=mysql_query($conn,"SELECT * FROM usergarap") or die(mysql_error());
//$result = mysql_query($conn,$sql);
//$count=mysql_num_rows($result);
//echo "<br>";
//echo $count;

//$row=mysql_fetch_array($result);
// If result matched $myusername and $mypassword, table row must be 1 row
//if($count>0)
//{
//$_SESSION['namauser']=$row['username'];
//$_SESSION['passuser']=$row['password'];
//$_SESSION['iduser']=$row['id_userk'];
//echo $row['username'];
//echo $row['password'];
//}
//echo $count;
//echo $username;


?>