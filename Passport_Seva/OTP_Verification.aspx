<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OTP_Verification.aspx.cs" Inherits="Passport_Seva.OTP_Verification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>OTP Verification</title>
     
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

     <link rel="icon" href="https://voterportal.eci.gov.in/nvsp/image/eci-logo.png" type="png">
  <style>
         body {
  background-color: #e9eaf5;
  background-image: url('https://media.istockphoto.com/id/1281690878/photo/passports.jpg?s=612x612&w=0&k=20&c=Hunq_xSvRdJwJqXBXM85AXC2_7EvV3SyEbxRElqkFoI=');
  background-size: cover;
  background-position: center;
  background-repeat:no-repeat;

  /*opacity: 0.8;*/
}

   .otp-container {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    border: none;
    border-radius: 20px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}
    
    .otp-heading {
      text-align: center;
      margin-bottom: 20px;
    }
    
    .otp-description {
    text-align: center;
    margin-bottom: 30px;
    color: white;
    font-weight: 400;
}
    
    .otp-input {
      display: flex;
      justify-content: center;
      margin-bottom: 30px;
    }
    
    .otp-input input {
      width: 50px;
      height: 50px;
      text-align: center;
      margin: 0 5px;
      font-size: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    
    .otp-input input:focus {
      outline: none;
      border-color: #80bdff;
      box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
    }
    
    .otp-submit-btn {
      width: 100%;
      padding: 10px 0;
      font-size: 18px;
      border-radius: 5px;
    }
    #mydiv{
        margin-top:150px;
    }
    .h2, h2 {
    font-size: 2rem;
    color: white;
}
  </style>
</head>
<body>
    <form id="form1" runat="server">
     <div id="mydiv" class="container">
    <div class="otp-container">
      <h2 class="otp-heading">OTP Verification</h2>
      <p class="otp-description">Please enter the OTP sent to your registered mail.</p>
      
      <div class="otp-input">
          <input type="text" runat="server" maxlength="1" pattern="\d" id="txt1">
        <input type="text" runat="server" maxlength="1" pattern="\d" id="txt2" >
        <input type="text" runat="server" maxlength="1" pattern="\d" id="txt3" >
        <input type="text" runat="server" maxlength="1" pattern="\d" id="txt4" >
      </div>
        <div class="text-center">
        <asp:Button class="btn btn-primary" ID="Verification" OnClick="Verification_Click" runat="server" Text="Verify" />
            </div>
      </div>      
  </div>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   
 </form>
</body>
</html>