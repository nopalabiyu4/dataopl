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

    if(isset($_POST['update'])){
        $lokasi_id = $_POST['idbrg'];
        $lokasi_nama = $_POST['lokasi_nama'];

        $updatedata = mysqli_query($conn,"update tbl_lokasi set lokasi_nama='$lokasi_nama' where lokasi_id='$lokasi_id'");
   
        //cek apakah berhasil
        if ($updatedata){

            echo " <div class='alert alert-success'>
                <strong>Success!</strong> Redirecting you back in 1 seconds.
              </div>
            <meta http-equiv='refresh' content='1; url= lokasi.php'/>  ";
            } else { echo "<div class='alert alert-warning'>
                <strong>Failed!</strong> Redirecting you back in 1 seconds.
              </div>
             <meta http-equiv='refresh' content='1; url= lokasi.php'/> ";
            }
    };

    if(isset($_POST['hapus'])){
        $lokasi_id = $_POST['idbrg'];

        $delete = mysqli_query($conn,"delete from tbl_lokasi where lokasi_id='$lokasi_id'");
    };
	?>
    
<head>
    <meta charset="utf-8">
	<link rel="icon" 
      type="image/png" 
      href="../cii-icon.png">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Safety | Input Data OPL</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="../assets/images/icon/cii-icon.png">
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/css/themify-icons.css">
    <link rel="stylesheet" href="../assets/css/metisMenu.css">
    <link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../assets/css/slicknav.min.css">
    <!-- amchart css -->
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
	<!-- Start datatable css -->
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.jqueryui.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-144808195-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-144808195-1');
	</script>
	
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
							<li>
                                <a href="index.php"><i class="ti-dashboard"></i><span>Dashboard</span></a>
                            </li>
                            <li>
                                <a href="dataopl.php"><i class="ti-server"></i><span>Data OPL</span></a>
                            </li>
                            <li class="active">
                                <a href="javascript:void(0)" aria-expanded="true"><i class="ti-map-alt"></i><span>Area
                                    </span></a>
                                <ul class="collapse">
                                    <li><a href="department.php"><i class="ti-map"></i><span>Department</span></a></li>
                                </ul>
                                <ul class="collapse">
                                    <li class="active"><a href="lokasi.php"><i class="ti-location-pin"></i><span>Lokasi</span></a></li>
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

            <div class="main-content-inner">
                <!-- market value area start -->
                <div class="row mt-3 mb-3">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-sm-flex justify-content-between align-items-center">
									<h2>Lokasi</h2>
									<button style="margin-bottom:20px" data-toggle="modal" data-target="#myModal" class="btn btn-info col-md-2"><span class="glyphicon glyphicon-plus"></span>Tambah Lokasi</button>
                                </div>
                                <ol class="breadcrumb mb-4">
                                    <ul class="breadcrumbs pull-left">
                                        <li><a href="index.php">Home</a></li>
                                        <li><span>Lokasi</span></li>
                                    </ul>
                                </ol>
                                <div class="data-tables datatable-dark">
									<table id="dataTable3" class="display" style="width:100%"><thead class="thead-dark">
                                        <tr align="center">
                                            <th>No</th>
                                            <th>Lokasi</th>
                                            
                                            <th>Opsi</th>
                                        </tr></thead><tbody>
                                        <?php 
                                        $brgs=mysqli_query($conn,"SELECT * from tbl_lokasi order by lokasi_nama");
                                        $no=1;
                                        while($p=mysqli_fetch_array($brgs)){
                                            $idb = $p['lokasi_id'];
                                        ?>
                                            
                                        <tr>
                                            <td align="center"><?php echo $no++ ?></td>
                                            <td><?php echo $p['lokasi_nama'] ?></td>
                                            <td align="center"><button data-toggle="modal" data-target="#del<?=$idb;?>" class="btn btn-danger" title="Hapus"><i class="ti-trash"></i></button></td>
                                        </tr>

                                        <!-- The Modal -->
                                        <div class="modal fade" id="del<?=$idb;?>">
                                            <div class="modal-dialog">
                                            <div class="modal-content">
                                            <form method="post">
                                                <!-- Modal Header -->
                                                <div class="modal-header">
                                                <h4 class="modal-title">Hapus Data Lokasi <?php echo $p['lokasi_nama']?></h4>
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                
                                                <!-- Modal body -->
                                                <div class="modal-body">
                                                Apakah Anda yakin ingin menghapus lokasi ini dari area lokasi?
                                                <input type="hidden" name="idbrg" value="<?=$idb;?>">
                                                </div>
                                                
                                                <!-- Modal footer -->
                                                <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                                                <button type="submit" class="btn btn-success" name="hapus">Hapus</button>
                                                </div>
                                                </form>
                                            </div>
                                            </div>
                                        </div>
									<?php 
                                    }
                                    
                                    if(isset($_POST['lokasibaru'])){
                                        $lokasi_nama=$_POST['lokasi_nama'];
                                              
                                        $query = mysqli_query($conn,"insert into tbl_lokasi values('','$lokasi_nama')");
                                        if ($query){
                                        
                                        echo " <div class='alert alert-success'>
                                            <strong>Success!</strong> Redirecting you back in 1 seconds.
                                          </div>
                                        <meta http-equiv='refresh' content='1; url= lokasi.php'/>  ";
                                        } else { echo "<div class='alert alert-warning'>
                                            <strong>Failed!</strong> Redirecting you back in 1 seconds.
                                          </div>
                                         <meta http-equiv='refresh' content='1; url= lokasi.php'/> ";
                                        }
                                    };
                                
                                    if(isset($_POST['hapus'])){
                                        $lokasi_id = $_POST['idbrg'];
                                
                                        $delete = mysqli_query($conn,"delete from tbl_lokasi where lokasi_id='$lokasi_id'");
                                        if ($delete){

                                        echo " <div class='alert alert-success'>
                                            <strong>Success!</strong> Redirecting you back in 1 seconds.
                                        </div>
                                        <meta http-equiv='refresh' content='1; url= ../admin/lokasi.php'/>  ";
                                        } else { echo "<div class='alert alert-warning'>
                                            <strong>Failed!</strong> Redirecting you back in 1 seconds.
                                        </div>
                                        <meta http-equiv='refresh' content='1; url= ../admin/lokasi.php'/> ";
                                        }
                                    };
                                    
                                    ?>
								</tbody>
							</table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<!-- modal input -->
    <div id="myModal" class="modal fade">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">Masukkan Area Lokasi</h4>
						</div>
						<div class="modal-body">
							<form method="post">
								<div class="form-group">
									<label>Lokasi</label>
									<input name="lokasi_nama" type="text" class="form-control" placeholder="Lokasi" required>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
								<input type="submit" class="btn btn-primary" value="Simpan" name="lokasibaru">
							</div>
						</form>
					</div>
				</div>
			</div>
	           
    <script>
		$(document).ready(function() {
		$('input').on('keydown', function(event) {
			if (this.selectionStart == 0 && event.keyCode >= 65 && event.keyCode <= 90 && !(event.shiftKey) && !(event.ctrlKey) && !(event.metaKey) && !(event.altKey)) {
			   var $t = $(this);
			   event.preventDefault();
			   var char = String.fromCharCode(event.keyCode);
			   $t.val(char + $t.val().slice(this.selectionEnd));
			   this.setSelectionRange(1,1);
			}
		})});
	
	
	$(document).ready(function() {
    $('#dataTable3').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            'print'
        ]
    } );
	} );
	</script>
	
    <!-- jquery latest version -->
    <script src="../assets/js/vendor/jquery-2.2.4.min.js"></script>
    <!-- bootstrap 4 js -->
    <script src="../assets/js/popper.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/owl.carousel.min.js"></script>
    <script src="../assets/js/metisMenu.min.js"></script>
    <script src="../assets/js/jquery.slimscroll.min.js"></script>
    <script src="../assets/js/jquery.slicknav.min.js"></script>
	<!-- Start datatable js -->
	 <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
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
	<script language="JavaScript" type="text/javascript"> function del(idx){ if (confirm("yakin akan menghapus data ini?")){ window.location.href = 'hapus.php?idx=' + idx; }} </script>

	<script>
		$(document).ready(function() {
		$('input').on('keydown', function(event) {
			if (this.selectionStart == 0 && event.keyCode >= 65 && event.keyCode <= 90 && !(event.shiftKey) && !(event.ctrlKey) && !(event.metaKey) && !(event.altKey)) {
			   var $t = $(this);
			   event.preventDefault();
			   var char = String.fromCharCode(event.keyCode);
			   $t.val(char + $t.val().slice(this.selectionEnd));
			   this.setSelectionRange(1,1);
			}
		});
	});
	</script>
</body>
</html>