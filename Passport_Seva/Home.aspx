<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Passport_Seva.Home" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600&family=Playfair:wght@300;500&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lobster&family=Ysabeau+SC:wght@100;300&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Kalam:wght@700&family=Lobster&family=Ysabeau+SC:wght@100;300&display=swap" rel="stylesheet">
<link rel="icon" href="https://imports.gov.in/MEITY/img/logo-national-emblem.png" type="png">
  <style>
    .hd{
        font-family: 'Playfair', serif;
font-family: 'Playfair Display', serif;
    }
    body{
        background-color: #879ea8;
    }
    .logo {
      width: 5%;
      height: 35px;
    }

    .carousel-caption {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
    }

    .text-center {
      position: absolute;
      top: 60%;
      left: 50%;
      transform: translate(-50%, -50%);
    }

    img {
      vertical-align: middle;
      border-style: none;
      width: 100%;
      height: 534px;
    }

    .res {
      border: none;
    }

    .res:hover {
      cursor: pointer;
      background-color: #328de2;
      color: black;
    }

    .abt {
      text-align: center;
      margin-bottom: 3%;
      font-family: 'Lobster', cursive;
font-family: 'Ysabeau SC', sans-serif;
    }

    #about {
      transition-delay: 12s;
      transition-duration: 1s;
      font-family: 'Lobster', cursive;
font-family: 'Ysabeau SC', sans-serif;
    }

    .cnt {
      text-align: center;
      font-family: 'Kalam', cursive;
font-family: 'Lobster', cursive;
font-family: 'Ysabeau SC', sans-serif;
    }
    .about-card{
      background-color: #c7d5e2;
      border-radius: 10px;
      padding: 20px;
    }    
    .contact-card {
      background-color: #bdcedf;
      border-radius: 10px;
      padding: 20px;
      font-family: 'Kalam', cursive;
font-family: 'Lobster', cursive;
font-family: 'Ysabeau SC', sans-serif;
    }

    .contact-card h4 {
      margin-bottom: 10px;
    }

    .contact-card p {
      margin-bottom: 20px;
    }

    .contact-card a {
      color: #007bff;
      text-decoration: none;
    }

    .contact-card a:hover {
      text-decoration: underline;
    }
    .c1{
        margin-top: 10%;
        font-size: 18px;
        font-family: 'Playfair', serif;
font-family: 'Playfair Display', serif;
font-family: 'Rubik Dirt', cursive;
    }
    .c2{
        margin-top: 10%;
        font-size: 18px;
        font-family: 'Tangerine', serif;
    }
    .c3{
        margin-top: 10%;
        font-size: 18px;
        font-family: 'Playfair Display', serif;
    }
    .about-card,.contact-card {
  box-sizing: border-box;
}

.about-card,.contact-card {
  padding: 50px;
  transition: transform .2s;
  margin: 0 auto;
}

.contact-card:hover {
  -ms-transform: scale(1.1); /* IE 9 */
  -webkit-transform: scale(1.1); /* Safari 3-8 */
  transform: scale(1.1); 
}
  </style>
  <title>Passport Seva</title>
</head>

<body>
  <!-- Top Navigation Bar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <img class="logo" src="logo-national-emblem.png" alt="logo-national-emblem">
    <a class="navbar-brand font-weight-bold hd" href="#">Passport Seva</a>
    <span id="datetime" class="navbar-text ml-auto font-weight-bolder"></span>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto font-weight-bolder">
        <li class="nav-item">
          <a class="nav-link" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="ti" href="#about">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="cnt" href="#contactus">Contact</a>
        <li class="nav-item">
          <a class="nav-link" href="#">Login</a>
        </li>
      </ul>
    </div>
  </nav>

  <!-- Carousel -->
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" style="height: 534px;">
      <div class="carousel-item active">
        <img src="https://www.udaipurblog.com/wp-content/uploads/2017/02/passport-office-udaipur-545x363.jpg"
          class="d-block w-100" alt="Image 1">
        <div class="carousel-caption d-md-block c1">
          <h3>PSP Division</h3>
          <p>Ministry of External Affairs, Government of India</p>
          <a class="res btn btn-primary" href="Apply_Passport.aspx"  >Apply For Passport</a>
          <!-- <button type="button" class="res btn btn-primary mr-2">Apply For Passport</button> -->
          <!-- <button type="button" class="res btn btn-primary">User Login</button> -->
        </div>
      </div>
      <div class="carousel-item">
        <img src="https://d96xf8nw30hcy.cloudfront.net/SFImage/Images/passportd49a0ce413a06dce84b1ff000062a8f2.jpg">
        <div class="carousel-caption  d-md-block c2">
          <h3>PSP Division</h3>
          <p>Ministry of External Affairs, Government of India</p>
          <a class="res btn btn-primary" href="Apply_Passport.aspx"  >Apply For Passport</a>
          <!-- <button type="button" class="res btn btn-primary mr-2">Apply For Passport</button> -->
          <!-- <button type="button" class="res btn btn-primary">User Login</button> -->
        </div>
      </div>
      <div class="carousel-item">
        <img src="https://sarkariyojanas.com/wp-content/uploads/2020/03/Passport-Seva-Project.jpg"
          class="d-block w-100" alt="Image 3">
        <div class="carousel-caption d-md-block c3">
          <h3>PSP Division</h3>
          <p>Ministry of External Affairs, Government of India</p>
          <a class="res btn btn-primary" href="Apply_Passport.aspx"  >Apply For Passport</a>
          <!-- <button type="button" class="res btn btn-primary mr-2">Apply For Passport</button> -->
          <!-- <button type="button" class="res btn btn-primary">User Login</button> -->
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div><br>
   <!-- "About" Section -->
   <div class="col-lg-12 col-sm-12" id="about">
   <section class="container mt-4" >
       <h2 class="text-uppercase abt">About</h2>
    <div class="about-card">
    <p>Passport Seva is a government initiative by the Ministry of External Affairs in India that aims to provide efficient and streamlined passport services to Indian citizens. It is responsible for the issuance of passports, re-issuance of passports, and related services.
      <br><br>
      Passport Seva centers are located throughout the country, offering a convenient and accessible platform for individuals to apply for passports. These centers provide a range of services, including new passport applications, passport renewal, changes or updates in passport details, and various miscellaneous services related to passports.
      <br><br>
      The Passport Seva system has modernized the passport application process, making it more convenient and user-friendly. With online registration and appointment booking, individuals can schedule appointments for passport applications and save time by avoiding long queues.
      <br><br>
      The system also provides online tracking of applications, enabling applicants to stay updated on the status of their passport applications.
      <br><br>
      Passport Seva ensures stringent security measures to maintain the integrity of the passport issuance process. Biometric data, including fingerprints and photographs, are captured during the application process to enhance the security features of the passport.
      <br><br>
      The Passport Seva system plays a crucial role in facilitating international travel for Indian citizens. The passport serves as an essential identification document and enables individuals to travel abroad for various purposes, such as tourism, education, employment, or business.
      <br><br>
      Passport Seva is committed to providing efficient and transparent services, ensuring the timely issuance of passports to eligible applicants. The initiative aims to enhance the overall experience of obtaining a passport and contribute to the ease of travel for Indian citizens.
      <br><br>
      Please note that the information provided here is a general overview, and for specific details and requirements, it is advisable to visit the official Passport Seva website or contact the relevant authorities.</p>
    </div>
  </section>
</div>
<br><br><br>
<!-- "Contact Us" Section -->
<div id="contactus">
  <section class="container mt-4">
    <h2 class="text-uppercase cnt">Contact Us</h2><br><br>
    <div class="row">
      <div class=" col-lg-6 col-sm-12">
        <div class="contact-card">
          <h4>Customer Support Helpline</h4>
          <p>If you have any questions or need assistance, please feel free to contact our customer support helpline:</p>
          <p><strong>Phone:</strong> +91-9876543210</p>
          <p>Our helpline operates [number of hours] on all working days (Monday to Friday) and [number of hours] on weekends and public holidays.</p>
        </div>
      </div>
      <div class="col-lg-6 col-sm-12">
        <div class="contact-card">
            <h4>Online Support Portal</h4>
          <p>For self-service options and access to frequently asked questions, you can visit our online support portal.You can access our support portal at the following web address:</p>
          <p><strong>Website:</strong> <a href="https://www.passportseva.com">www.passportseva.com</a></p>
          <p>If you cannot find the information you are looking for, feel free to contact our helpline or send us an email.</p>
        </div>
      </div>
    </div>
    <div class="row mt-4">
      <div class="col-lg-6 col-sm-12">
        <div class="contact-card">
            <h4>Email Support</h4>
          <p>If you prefer written communication, you can send us an email with your questions or concerns:</p>
          <p><strong>Email:</strong> passortseva@gmail.com</p>
          <p>Please provide a detailed description of your issue or question, along with your contact information, including your name, phone number, and any relevant reference numbers.</p>
        </div>
      </div>
    
      <div class="col-lg-6 col-sm-12">
        <div class="contact-card">
          <h4>Social Media</h4>
          <p>Stay connected with us through our official social media channels:</p>
          <ul>
            <li><a href="https://www.facebook.com/passportseva">Facebook</a></li>
            <li><a href="https://www.twitter.com/passportseva">Twitter</a></li>
            <li><a href="https://www.instagram.com/passportseva">Instagram</a></li>
          </ul>
          <p>We encourage you to follow our social media accounts to stay informed about any changes passport services.</p>
        </div>
      </div>
    </div>
    <div class="row mt-4">
      <div class="col-lg-12 col-sm-12">
        <div class="contact-card">
          <h4>Physical Address</h4>
          <p>If you prefer to visit our office in person, you can find us at the following location:</p>
          <p>[Passport Seva]</p>
          <p>[Street Address]</p>
          <p>[City, State/Province, Postal Code]</p>
          <p>[Country]</p>
          <p>Please note that visits to our office are by appointment only. To schedule an appointment, please contact our helpline or send us an email with your request.</p>
        </div>
      </div>
    </div>
  </section>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
  function updateDateTime() {
    var now = new Date();
    var datetimeElement = document.getElementById("datetime");
    datetimeElement.innerHTML = now.toLocaleString();
  }

  setInterval(updateDateTime, 1000);
</script>
</body>

</html>