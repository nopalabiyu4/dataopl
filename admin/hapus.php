<?php
session_start();
include 'Koneksi.php'; // masukan konekasi DB
// ambil variable ID dari URL
$idx = $_GET['idx'];
//Proses query hapus data
$del=mysqli_query(koneksiDB(),"DELETE FROM dataopl WHERE idx='$idx'");
if($del){$_SESSION['pesan'] = '<font color=green>OK, 1 data berhasil dihapus.</font>';
header("location:dataopl.php");
// kembali ke tampil data
}else{
echo "Gagal hapus data!";
}
?>