<?php
session_start();

// Cek apakah sesi 'loggedin' ada dan benar
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
    // Redirect ke halaman login jika belum login
    header("Location: ../login");
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Travelgo</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css'>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Sofia+Sans:wght@400;700&display=swap">
  <style>
    body {
      font-family: 'Sofia Sans', sans-serif;
    }

    .navigation-wrap {
      background-color: #f8f9fa;
    }

    .navbar-nav .nav-link {
      font-weight: bold;
      color: #000000;
      transition: color 0.3s;
      font-size: 18px;
    }

    .navbar-nav .nav-link:hover {
      color: #333333;
    }

    .navbar-nav .login-button {
      color: #ffffff !important;
      background-color: #007bff;
      padding: 5px 15px;
      border-radius: 10px;
      font-weight: bold;
      transition: background-color 0.3s, color 0.3s;
      margin-top: 4px;
    }

    .navbar-nav .login-button:hover {
      background-color: #0056b3;
    }

    .hero-section {
      padding: 40px 0;
      background-color: #f8f9fa;
    }

    .hero-text {
      font-size: 32px;
      font-weight: bold;
      margin-top: 0;
    }

    .hero-subtext {
      font-size: 18px;
      color: #6c757d;
      margin-top: 5px;
    }

    .info-box {
    display: flex;
    align-items: center;
    background-color: #ffffff;
    padding: 10px 20px;
    border-radius: 50px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    margin-top: 20px;
    font-size: 16px;
    margin-bottom: 20px;
    max-width: fit-content; /* Adjusts the width to fit content */
    }

    .info-box i {
    font-size: 20px;
    margin-right: 10px;
    color: #007bff;
    }

    .info-box p {
    margin: 0;
    color: #343a40;
    }

    .info-item {
    display: flex;
    align-items: center;
    }

    .services-section {
      padding: 60px 0;
      background-color: #f0f0f0;
      text-align: center; /* Center the text in the section */
    }

    .service-box {
      background-color: white;
      padding: 30px;
      text-align: center;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s ease-in-out;
      margin: 20px; /* Add margin for spacing */
      display: flex;
      flex-direction: column; /* Arrange items vertically */
      align-items: center; /* Center items horizontally */
      justify-content: center; /* Center items vertically */
    }

    .service-icon {
      width: 80px; /* Increase size for better visibility */
      height: 80px; /* Increase size for better visibility */
      border-radius: 50%;
      background-color: #007bff;
      display: flex;
      justify-content: center;
      align-items: center;
      margin-bottom: 15px;
    }

    .service-icon img {
      width: 70%;
      height: auto;
      border-radius: 50%;
    }

    .service-title {
      font-size: 18px;
      font-weight: bold;
    }

    .service-description {
      font-size: 17px;
      color: #6c757d;
      margin-top: 10px; /* Add margin for spacing */
    }

    .footer {
      background-color: #007bff;
      color: white;
      text-align: center;
      padding: 15px 0;
      position: relative;
      bottom: 0;
      width: 100%;
    }

    .footer .contact-info {
      margin-bottom: 10px;
    }

    @media (max-width: 768px) {
      .hero-text {
        font-size: 24px;
      }

      .hero-subtext {
        font-size: 16px;
      }

      .info-box p {
        font-size: 14px;
      }

      .service-title {
        font-size: 16px;
      }

      .service-icon {
        font-size: 30px;
      }
    }
    .service-button {
    text-decoration: none;
    color: inherit;
    transition: transform 0.3s ease;
  }

  .service-button:hover {
    transform: scale(1.05);
  }

  .service-box {
    text-align: center;
    padding: 25px;
    border: 1px solid #ddd;
    border-radius: 8px;
    background-color: #f9f9f9;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: box-shadow 0.3s ease;
  }

  .service-button:hover .service-box {
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
  }

  .service-icon img {
    max-width: 50px; /* Adjust icon size */
    margin-bottom: 10px;
  }

  .service-title {
    font-weight: bold;
    margin-top: 10px;
  }

  .no-underline {
    text-decoration: none; /* Remove underline */
  }

  .no-underline:hover {
    text-decoration: none; /* Ensure no underline on hover */
  }

  </style>
</head>

<body>
<div class="navigation-wrap bg-light start-header start-style">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <nav class="navbar navbar-expand-md navbar-light">
            <a class="navbar-brand" href="#" style="font-size: 24px; font-weight: bold; color: #000;">Travelgo</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
              aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Tentang</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Pelayanan</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Kontak</a></li>
                <li class="nav-item"><a class="nav-link login-button" href="../login/logout.php">Logout</a></li>
              </ul>
            </div>
          </nav>
        </div>
      </div>
    </div>
</div>

  <div class="hero-section">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-md-6">
        <h1 class="hero-text">Jelajahi tujuan anda bersama Travelgo</h1>
        <p class="hero-subtext">Memberi anda banyak tempat untuk dikunjungi, kami akan memastikan anda puas dengan tujuan Anda.</p>
        <div class="info-box">
          <div class="info-item">
            <i class="fa fa-map-marker-alt"></i>
            <p>Semarang, Indonesia</p>
          </div>
          <div class="info-item ml-4">
            <i class="fa fa-calendar"></i>
            <p>11 September 2023</p>
          </div>
        </div>
      </div>
      <div class="col-md-6 text-center">
        <img src="rec1.png" alt="Building Image" class="img-fluid" style="max-width: 100%; height: auto; border-radius: 20px;">
      </div>
    </div>
  </div>
</div>


<div class="services-section">
  <div class="container">
    <h2 class="text-center mb-2">Layanan Kami</h2>
    <p class="text-center no-underline">Travelgo siap membantu perjalanan Anda kapanpun dan dimanapun</p>
    <div class="row justify-content-center">
      <div class="col-md-4 d-flex justify-content-center">
        <a href="hotel.html" class="service-button">
          <div class="service-box">
            <div class="service-icon">
              <img src="img/hotel.png" alt="Hotel">
            </div>
            <h3 class="service-title">Hotel</h3>
            <p class="service-description">Travelgo menyediakan layanan untuk memesan hotel sesuai yang anda inginkan.</p>
          </div>
        </a>
      </div>
      <div class="col-md-4 d-flex justify-content-center">
        <a href="mobil.html" class="service-button">
          <div class="service-box">
            <div class="service-icon">
              <img src="img/mobil.png" alt="Mobil">
            </div>
            <h3 class="service-title">Mobil</h3>
            <p class="service-description">Travelgo menyediakan layanan untuk memesan mobil sesuai yang anda inginkan.</p>
          </div>
        </a>
      </div>
      <div class="col-md-4 d-flex justify-content-center">
        <a href="pesawat.html" class="service-button">
          <div class="service-box">
            <div class="service-icon">
              <img src="img/pesawat.png" alt="Pesawat">
            </div>
            <h3 class="service-title">Pesawat</h3>
            <p class="service-description">Travelgo menyediakan layanan untuk memesan pesawat sesuai yang anda inginkan.</p>
          </div>
        </a>
      </div>
      <div class="col-md-4 d-flex justify-content-center">
        <a href="apartemen.html" class="service-button">
          <div class="service-box">
            <div class="service-icon">
              <img src="img/apartemen.png" alt="Apartemen">
            </div>
            <h3 class="service-title">Apartemen</h3>
            <p class="service-description">Travelgo menyediakan layanan untuk memesan apartemen sesuai yang anda inginkan.</p>
          </div>
        </a>
      </div>
      <div class="col-md-4 d-flex justify-content-center">
        <a href="bus.html" class="service-button">
          <div class="service-box">
            <div class="service-icon">
              <img src="img/bus.png" alt="Bus">
            </div>
            <h3 class="service-title">Bus</h3>
            <p class="service-description">Travelgo menyediakan layanan untuk memesan bus sesuai yang anda inginkan.</p>
          </div>
        </a>
      </div>
      <div class="col-md-4 d-flex justify-content-center">
        <a href="kereta.html" class="service-button">
          <div class="service-box">
            <div class="service-icon">
              <img src="img/kereta.png" alt="Kereta">
            </div>
            <h3 class="service-title">Kereta</h3>
            <p class="service-description">Travelgo menyediakan layanan untuk memesan kereta sesuai yang anda inginkan.</p>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>

  <footer class="footer" style="padding: 0;">
  <div style="background: linear-gradient(to bottom, darkblue, #1E90FF); padding: 20px 0;">
    <div class="footer-columns" style="display: flex; flex-wrap: wrap; justify-content: space-between; margin: 0 20px;">
        <!-- Column 1: Logo or About Us Section -->
        <div class="footer-column" style="flex: 1; min-width: 200px; padding: 0 5px; text-align: center;">
            <h5 style="font-size: 24px; margin-bottom: 10px;">Travelgo</h5>
            <p style="font-size: 15px; margin-bottom: 5px; text-align: left;">Travelgo VR, 410-555 Hostings</p>
            <p style="font-size: 15px; margin-bottom: 5px; text-align: left;">St, Vancouver, BC WEB Indonesia</p>
            <p style="font-size: 15px; margin-bottom: 0; text-align: left;">admin@gmail.com</p>
        </div>
      <!-- Column 2: Quick Links -->
      <div class="footer-column" style="flex: 1; min-width: 150px; padding: 0 5px; text-align: left;">
        <h5 style="font-size: 16px; margin-left: 15px;">Travelgo</h5>
        <ul class="list-unstyled" style="margin-left: 15px;">
          <li><a href="#" style="color: white;">Home</a></li>
          <li><a href="#" style="color: white;">Tentang</a></li>
          <li><a href="#" style="color: white;">Pelayanan</a></li>
          <li><a href="#" style="color: white;">Kontak</a></li>
        </ul>
      </div>
      <!-- Column 3: Layanan Kami -->
      <div class="footer-column" style="flex: 1; min-width: 150px; padding: 0 5px; text-align: left;">
        <h5 style="font-size: 16px; margin-left: 15px;">Layanan Kami</h5>
        <ul class="list-unstyled" style="margin-left: 15px;">
          <li><a href="#" style="color: white;">Hotel</a></li>
          <li><a href="#" style="color: white;">Tiket Pesawat</a></li>
          <li><a href="#" style="color: white;">Mobil</a></li>
        </ul>
      </div>
      <!-- Column 4: Event -->
      <div class="footer-column" style="flex: 1; min-width: 150px; padding: 0 5px; text-align: left;">
        <h5 style="font-size: 16px; margin-left: 15px;">Event</h5>
        <ul class="list-unstyled" style="margin-left: 15px;">
          <li><a href="#" style="color: white;">TSF</a></li>
          <li><a href="#" style="color: white;">Game Koin</a></li>
        </ul>
      </div>
      <!-- Column 5: Follow Section -->
      <div class="footer-column" style="flex: 1; min-width: 150px; padding: 0 5px; text-align: left;">
        <h5 style="font-size: 16px; margin-left: 15px;">Follow</h5>
        <ul class="list-unstyled" style="margin-left: 15px;">
          <li><a href="#" style="color: white;">Instagram</a></li>
          <li><a href="#" style="color: white;">Facebook</a></li>
          <li><a href="#" style="color: white;">Twitter</a></li>
        </ul>
      </div>
    </div>
  </div>
  <div style="background-color: darkblue; padding: 20px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin: 0 20px;">
      <ul class="list-unstyled" style="display: flex; margin: 10px 0 0; padding: 0;">
        <li style="margin: 0 15px; font-size: 12px"><a href="#" style="color: white;">Terms and Conditions</a></li>
        <li style="margin: 0 15px; font-size: 12px"><a href="#" style="color: white;">Privacy Policy</a></li>
        <li style="margin: 0 15px; font-size: 12px"><a href="#" style="color: white;">Sitemap</a></li>
      </ul>
      <div style="text-align: right; margin: 10px 0;">
        <p style="color: white; margin: 0; font-size: 12px">&copy; Copyright 2022 Travelgo Website by</p>
        <p style="color: white; margin: 0; font-size: 12px">Achbar Wahyudhi of the web.</p>
      </div>
    </div>
  </div>
</footer>

<style>
  /* Styling for mobile view */
  @media (max-width: 768px) {
    .footer-columns {
      flex-direction: row; /* Change to row for side-by-side columns */
      flex-wrap: wrap; /* Allow wrapping for multiple rows */
    }
    .footer-column {
      flex: 1 1 45%; /* Set flex-basis to 45% for two columns */
      margin: 10px; /* Add margin to create space between columns */
      text-align: left; /* Ensure text alignment is consistent */
    }
    .footer-column h5 {
      font-size: 16px; /* Uniform heading size */
    }
    .footer-column p, .footer-column ul {
      font-size: 14px; /* Uniform text size */
    }
  }
</style>


  <script src='https://code.jquery.com/jquery-3.3.1.slim.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.min.js'></script>
</body>

</html>