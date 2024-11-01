<?php
session_start();
if( empty( $_SESSION['id_user'] ) ){
  //session_destroy();
  $_SESSION['err'] = '<strong>ERROR!</strong> Anda harus login terlebih dahulu.';
  header('Location: ./');
  die();
} else {
  include "koneksi.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Aviation Security</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <link href="Style.css" rel="stylesheet" type="text/css"/>
  <script src="bootstrap/js/jquery-3.2.1.min.js"></script>
  <script src="bootstrap/js/bootstrap.min.js"></script>

</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a href = "home.php" class="navbar-brand">
        <img src="logo/logo.png" >
      </a>
         &nbsp;&nbsp;&nbsp;
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
    </div>
<br>
    <div class="navbar-collapse collapse" id="myNavbar">
      <ul class="nav navbar-nav">
       
    <li class="dropdown">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Laporan<span class="caret"></span></a>
    <ul class="dropdown-menu">
    <li><a href="txr1.php">TXR</a></li>
    <li><a href="wtmd1.php">WTMD</a></li>
    <li><a href="body.php">Body Scanner</a></li>
    <li><a href="xray.php">X ray HBS</a></li>
    </ul>

    </li>

     <li class="dropdown">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Data Laporan <span class="caret"></span></a>
    <ul class="dropdown-menu">
    <li><a href="laporanTxr1.php">Laporan TXR</a></li>
    <li><a href="LaporanWtmdT1.php">Laporan WTMD</a></li>
    <li><a href="laporanBodyScanner.php">Laporan Body Scanner</a></li>
    <li><a href="laporanXrayHBS.php">Laporan Xray HBS</a></li>
    </ul>

    </li>


    <?php
        if( $_SESSION['level'] == 2 ){
    ?>
    <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Data Master <b class="caret"></b></a>
      <ul class="dropdown-menu">
      <li><a href="data_user.php">Data User</a></li>
      <li><a href="data_txr.php">Data TXR</a></li>
      <li><a href="data_wtmd.php">Data WTMD</a></li>
      <li><a href="data_body.php">Data Body Scanner</a></li>
      <li><a href="data_xray.php">Data X-Ray HBS</a></li>
      <?php
      }
      ?>
      </ul>
    </li>



     <?php
        if( $_SESSION['level'] == 2 ){
    ?>
    <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Hapus Data Laporan <b class="caret"></b></a>
      <ul class="dropdown-menu">
      <li ><a href="table_data_laporan_txr.php">Hapus Laporan TXR</a></li>
      <li><a href="table_data_laporan_wtmd.php">Hapus Laporan WTDM</a></li>
      <li><a href="table_data_laporan_xrayhbs.php">Hapus Laporan Xray HBS</a></li>
      <li><a href="table_data_laporan_body.php">Hapus Laporan Body Scanner</a></li>
      <?php
      }
      ?>
      </ul>
    </li>
    
      </ul>

<ul class="nav navbar-nav navbar-right">
    <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        <span class="glyphicon glyphicon-user"> </span> &nbsp;
      <?php echo $_SESSION['nama']; ?> <b class="caret"></b>
      </a>
      <ul class="dropdown-menu">
      <li><a href="logout.php">Logout</a></li>
      </ul>
    </li>
    </ul>

      </div>
  </div>

</nav>

<div class="container-fluid">
      <div class="jumbotron">
        <img src="logo/logo.png" >
        <h2>Selamat Datang di Aplikasi Aviation Security</h2>

        <p>Halo <strong><?php echo $_SESSION['nama']; ?></strong><!-- Anda login sebagai
      <strong>
      <?php
        if($_SESSION['level'] == 2){
          echo 'Admin.';
        } else {
            echo 'Petugas';
        }
      ?> -->
      </strong>
    </p>
      </div>
  <?php
  }
  ?>
</div>


<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Wrapper for slides -->
    </div>
    <!-- Left and right controls -->
</div>

<div class="container text text-center">    
</br></div>

<div class="footer-section">
          <div class="container">
            <div class="footer-top new">
              <p style="font-weight: bold">&copy; 2019 <a style="text-decoration: none; font-weight: bold" href="index.html">Angkasa Pura 1</a></p>
            </div>            
          </div>
        </div>

			</body></html>