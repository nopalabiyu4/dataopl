<?php 

function koneksiDB() {
    
    $host = "localhost";
    $username = "root";
    $password = "";
    $db = "dataopl";

    $conn = mysqli_connect($host, $username, $password, $db);
    
    if(!$conn) {
        die("Koneksi Database Gagal : " .mysqli_connect_error());
    } else {
        return $conn;
    }
}

function selectData() {
    $berkas = $_GET['url'];
    
    $query = "SELECT * FROM dataopl WHERE berkas = '$berkas'";
    $result = mysqli_query(koneksiDB(), $query);
    return $result;
}

function selectAllData() {
    $query = "SELECT * FROM dataopl order by department_id";
    $result = mysqli_query(koneksiDB(), $query);
    return $result;
}

function insertData($data) {
    $query = "INSERT INTO dataopl VALUES ('" . $data['no'] . "','" . $data['nama_mesin'] . "','" . $data['department_id'] . "','" . $data['lokasi_id'] . "','" . $data['title'] . "','" . $data['size'] . "','" . $data['ekstensi'] . "','" . $data['berkas'] . "') ";

    $result = mysqli_query(koneksiDB(), $query);

    if (!$result) {
        return 0;
    } else {
        return 1;
    }
}
 ?>