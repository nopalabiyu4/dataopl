<?php 
    include 'Koneksi.php';
    
    $idx = $_POST['idx'];
    $nama_mesin = $_POST['nama_mesin'];
    $department_id = $_POST['department_id'];
    $lokasi_id = $_POST['lokasi_id'];
    $namaFile = $_FILES['berkas']['name'];
    $x = explode('.', $namaFile);
    $ekstensiFile = strtolower(end($x));
    $ukuranFile    = $_FILES['berkas']['size'];
    $file_tmp = $_FILES['berkas']['tmp_name'];

    // Lokasi Penempatan file
    $dirUpload = "../file/";
    $linkBerkas = $dirUpload.$namaFile;

    // Menyimpan file
    $terupload = move_uploaded_file($file_tmp, $linkBerkas);

    $dataArr = array(
        'idx' => $idx,
        'nama_mesin' => $nama_mesin,
        'department_id' => $department_id,
        'lokasi_id' => $lokasi_id,
        'title' => $namaFile, 
        'size' => $ukuranFile, 
        'ekstensi' => $ekstensiFile, 
        'berkas' => $linkBerkas, 
    );

    if ($terupload && (insertData($dataArr) == 1)) {
        echo "Upload berhasil!";
        header("Location: dataopl.php", true, 301);
        exit();
    } else {
        echo "Upload Gagal!";
        header("Location: dataopl.php", true, 301);
        exit();
    }

 ?>