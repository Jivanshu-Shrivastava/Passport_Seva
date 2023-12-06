<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Apply_Passport.aspx.cs" Inherits="Passport_Seva.Apply_Passport" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Two Cards Example</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="icon" href="https://imports.gov.in/MEITY/img/logo-national-emblem.png" type="png">
    <style>
      body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
      }

      .header {
        background-color: #bdc5cb;
        padding: 20px;
        text-align: center;
      }

      .container {
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 26px;
        background-color: #d4dbef;
      }

      .card {
        width: 80%;
        margin-bottom: 20px;
        padding: 20px;
        background-color: #d4dbef;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
      }
      .card3 {
        width: 90%;
        margin-bottom: 20px;
        padding: 20px;
        background-color: #d4dbef;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
      }
    </style>
  </head>
  <body>
    <div class="header">
      <h1>Apply for Fresh Passport Passport</h1>
      <p>
        You can apply for a fresh passport or Re-issue of a passport using two
        alternatives:
      </p>
    </div>
    <div class="container">
      <div class="card">
        <h2>Alternative 1</h2>
        <p>
          * &nbsp;You can fill the application form online (internet connection
          is required to fill the form online). <br> <a href="Registration_Passport.aspx"> Click here to fill the
          application form online</a>
        </p>
      </div>
      <div class="card">
        <h2>Alternative 2</h2>
        <p>
          * &nbsp;You can download the soft copy of the form. <a href="PassportApplicationForm_Main_English_V4.0.pdf"> Click here to
          download the soft copy of the form</a><br />
          * &nbsp; Fill it offline (internet connection is not required to fill
          the form offline)<br />
          <!-- * &nbsp; Upload the filled form. Click here to upload the filled form -->
        </p>
      </div>
      <br><hr>
      <div class="card3">
      <p style="font-weight: 600;">Note:</p>
      <p>While applying under Fresh Issuance category - please make sure you never held a Passport of the applied category (i.e. Ordinary Passport, Diplomatic Passport or Official Passport) in the past.
  <br><br>
          For instance, if you ever held an Ordinary passport (Deep Blue colour) in the past but never held any Diplomatic (maroon colour) or Official (white colour) passport - you need to apply under Reissue category if applying for an Ordinary Passport while choose the Fresh category if applying for a Diplomatic or Official passport. Similarly, if you have/held a Diplomatic (or Official) Passport but do not have/held an Ordinary Passport - you need to apply for Ordinary Passport under Fresh category while choose the Reissue category if applying for Diplomatic (or Official) passport.</p>
    </div>
</div>
    
  </body>
</html>
