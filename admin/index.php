<!doctype html>
<html class="no-js" lang="en">

<?php 
    include '../dbconnect.php';
    session_start();
    if (!isset($_SESSION['sebagai'])) {
    header("Location: ../index.php");
    }

    if (isset($_SESSION['sebagai'])) {
    if ($_SESSION['sebagai'] == 'user') {
        header('Location: user.php');
    }
    }
	?>

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Safety | Admin Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="../assets/images/icon/cii-icon.png">
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/css/themify-icons.css">
    <link rel="stylesheet" href="../assets/css/metisMenu.css">
    <link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../assets/css/slicknav.min.css">
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-144808195-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-144808195-1');
	</script>
    <!-- amchart css -->
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
    <!-- others css -->
    <link rel="stylesheet" href="../assets/css/typography.css">
    <link rel="stylesheet" href="../assets/css/default-css.css">
    <link rel="stylesheet" href="../assets/css/styles.css">
    <link rel="stylesheet" href="../assets/css/responsive.css">
    <!-- modernizr css -->
    <script src="../assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- preloader area start -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- preloader area end -->
    <!-- page container area start -->
    <div class="page-container">
        <!-- sidebar menu area start -->
        <div class="sidebar-menu">
            <div class="sidebar-header">
                    <a href="index.php"><img src="../assets/images/icon/ciilogo.png" alt="logo" width="100%"></a>
            </div>
            <div class="sidebar-header container-fluid px-3">
                <div class="user-panel mt-0 pb-0 mb-0 d-flex" style="float: center;">
                    <div class="image">
                    <?php
                    $id = $_SESSION["sebagai"];
                    $data = query("SELECT * FROM login WHERE id = '$id'");
                    ?>
                    <img src="../assets/img/user.png" class="m-2 img-circle" alt="User Image" width="40">
                    </div>
                    <div class="info">
                        <a class="d-block m-1 font-weight-bold text-white" style="cursor: default; margin-top:-12px;"><?= $_SESSION["nama"] ?></a>
                        <a class="m-1 font-weight-bold text-white badge badge-success" style="cursor: default;"><?= $_SESSION["sebagai"] ?></a>
                    </div>
                </div>
            </div>
            <div class="main-menu">
                <div class="menu-inner">
                    <nav>
                        <ul class="metismenu" id="menu">
							<li class="active">
                                <a href="index.php"><i class="ti-dashboard"></i><span>Dashboard</span></a>
                            </li>
                            <li>
                                <a href="dataopl.php"><i class="ti-server"></i><span>Data OPL</span></a>
                            </li>
                            <li>
                                <a href="javascript:void(0)" aria-expanded="true"><i class="ti-map-alt"></i><span>Area
                                    </span></a>
                                <ul class="collapse">
                                    <li><a href="department.php"><i class="ti-map"></i><span>Department</span></a></li>
                                </ul>
                                <ul class="collapse">
                                    <li><a href="lokasi.php"><i class="ti-location-pin"></i><span>Lokasi</span></a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="akun.php"><i class="ti-user"></i><span>Kelola Pengguna</span></a>
                            </li>
                            <li>
                                <a href="../logout.php" onclick="return confirm('Apakah anda yakin ingin logout?')"><i class="ti-shift-left"></i><span>Logout</span></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <!-- sidebar menu area end -->
        <!-- main content area start -->
        <div class="main-content">
            <!-- header area start -->
            <div class="header-area">
                <div class="row align-items-center">
                    
                    <!-- nav and search button -->
                    <div class="col-md-6 col-sm-8 clearfix">
                        <div class="nav-btn pull-left">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </div>
                    <!-- profile info & task notification -->
                    <div class="col-md-6 col-sm-4 clearfix">
                        <ul class="notification-area pull-right">
                            <li><h3><div class="date">
								<script type='text/javascript'>
						<!--
						var months = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];
						var myDays = ['Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'];
						var date = new Date();
						var day = date.getDate();
						var month = date.getMonth();
						var thisDay = date.getDay(),
							thisDay = myDays[thisDay];
						var yy = date.getYear();
						var year = (yy < 1000) ? yy + 1900 : yy;
						document.write(thisDay + ', ' + day + ' ' + months[month] + ' ' + year);		
						//-->
						</script></b></div></h3>

						</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- header area end -->
			
            <?php
     
        // All Factory
    $l = 0;
    $query  = "SELECT count(idx) AS jml FROM dataopl where lokasi_id = '10'";
    $sql    = mysqli_query($conn, $query);
    if(mysqli_num_rows($sql)>0){
    $data = mysqli_fetch_assoc($sql);
    $l  = $data['jml'];
    }       
        // FA
    $p = 0;
    $query  = "SELECT count(idx) AS ttl FROM dataopl where lokasi_id = '1'";
    $sql    = mysqli_query($conn, $query);
    if(mysqli_num_rows($sql)>0){
      $data = mysqli_fetch_assoc($sql);
      $p  = $data['ttl'];
    }
        // FB
    $b = 0;
    $query  = "SELECT count(idx) AS jml FROM dataopl where lokasi_id = '2'";
    $sql    = mysqli_query($conn, $query);
    if(mysqli_num_rows($sql)>0){
    $data = mysqli_fetch_assoc($sql);
    $b  = $data['jml'];
    }

        // FC
    $m = 0;
    $query  = "SELECT count(idx) AS ttl FROM dataopl where lokasi_id = '3'";
    $sql    = mysqli_query($conn, $query);
    if(mysqli_num_rows($sql)>0){
    $data = mysqli_fetch_assoc($sql);
    $m  = $data['ttl'];
    }

        // MTC
    $k = 0;
    $query  = "SELECT count(idx) AS jml FROM dataopl where lokasi_id = '4'";
    $sql    = mysqli_query($conn, $query);
    if(mysqli_num_rows($sql)>0){
    $data = mysqli_fetch_assoc($sql);
    $k  = $data['jml'];
    }

            ?>
            <!-- page title area start -->
            <div class="page-title-area">
                <div class="footer-area">
                    <?php echo "<h4>Selamat Datang, <span class='badge badge-warning'>".$_SESSION['nama']."</span> Anda Login Sebagai <span class='badge badge-success'>Admin</span>"."!"."</h4>";?>
                </div>
            </div>
            <!-- page title area end -->

            <div class="main-content-inner">
                <!-- market value area start -->
                <div class="row mt-3 mb-3">
                    <div class="col-12">
                        <div class="card">
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Dashboard</h1>
                            <ol class="breadcrumb mb-4">
                                <ul class="breadcrumbs pull-left">
                                    <li><a href="index.php">Home</a></li>
                                    <li><span>Dashboard</span></li>
                                </ul>
                            </ol>
                                <div class="row">
                                    <div class="col-xl-3 col-md-6">
                                        <div class="card bg-info text-white mb-4">
                                            <div class="h5 card-body d-flex align-items-center justify-content-between">All Factory
                                                <a class="small text-white"><?= number_format($l); ?></a>
                                            </div>
                                            <div class="card-footer d-flex align-items-center justify-content-between">
                                                <a class="small text-white stretched-link" href="dataopl.php">View Details</a>
                                                <div class="small text-white"><i class="ti-angle-right"></i></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-6">
                                        <div class="card bg-primary text-white mb-4">
                                            <div class="h5 card-body d-flex align-items-center justify-content-between">Factory A
                                                <a class="small text-white"><?= number_format($p); ?></a>
                                            </div>
                                            <div class="card-footer d-flex align-items-center justify-content-between">
                                                <a class="small text-white stretched-link" href="dataopl.php">View Details</a>
                                                <div class="small text-white"><i class="ti-angle-right"></i></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-6">
                                        <div class="card bg-warning text-white mb-4">
                                            <div class="h5 card-body d-flex align-items-center justify-content-between">Factory B
                                                <a class="small text-white"><?= number_format($b); ?></a>
                                            </div>
                                            <div class="card-footer d-flex align-items-center justify-content-between">
                                                <a class="small text-white stretched-link" href="dataopl.php">View Details</a>
                                                <div class="small text-white"><i class="ti-angle-right"></i></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-6">
                                        <div class="card bg-success text-white mb-4">
                                            <div class="h5 card-body d-flex align-items-center justify-content-between">Factory C
                                                <a class="small text-white"><?= number_format($m); ?></a>
                                            </div>
                                            <div class="card-footer d-flex align-items-center justify-content-between">
                                                <a class="small text-white stretched-link" href="dataopl.php">View Details</a>
                                                <div class="small text-white"><i class="ti-angle-right"></i></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-6">
                                        <div class="card bg-danger text-white mb-4">
                                            <div class="h5 card-body d-flex align-items-center justify-content-between">Maintenance
                                                <a class="small text-white"><?= number_format($k); ?></a>
                                            </div>
                                            <div class="card-footer d-flex align-items-center justify-content-between">
                                                <a class="small text-white stretched-link" href="dataopl.php">View Details</a>
                                                <div class="small text-white"><i class="ti-angle-right"></i></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>

                <!-- row area start-->
            </div>
        </div>
        <!-- main content area end -->
        <!-- footer area start-->
        <footer>
            <div class="footer-area">
                <p>PT.Corinthian Industries Indonesia</p>
            </div>
        </footer>
        <!-- footer area end-->
    </div>
    <!-- page container area end -->
	
	<!-- modal input -->
    <!-- jquery latest version -->
    <script src="../assets/js/vendor/jquery-2.2.4.min.js"></script>
    <!-- bootstrap 4 js -->
    <script src="../assets/js/popper.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/owl.carousel.min.js"></script>
    <script src="../assets/js/metisMenu.min.js"></script>
    <script src="../assets/js/jquery.slimscroll.min.js"></script>
    <script src="../assets/js/jquery.slicknav.min.js"></script>

    <!-- start chart js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
    <!-- start highcharts js -->
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <!-- start zingchart js -->
    <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
    <script>
    zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/";
    ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"];
    </script>
    <!-- all line chart activation -->
    <script src="../assets/js/line-chart.js"></script>
    <!-- all pie chart -->
    <script src="../assets/js/pie-chart.js"></script>
    <!-- others plugins -->
    <script src="../assets/js/plugins.js"></script>
    <script src="../assets/js/scripts.js"></script>
</body>

</html>
