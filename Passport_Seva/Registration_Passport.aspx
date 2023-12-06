<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration_Passport.aspx.cs" Inherits="Passport_Seva.Registration_Passport" %>
<!DOCTYPE html>




<html xmlns="http://www.w3.org/1999/xhtml">

  <head runat="server">

    <title>Registration Page</title>

    <link

      rel="stylesheet"

      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"

    />




    <link

      rel="stylesheet"

      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"

    />




    <link

      rel="icon"

      href="https://imports.gov.in/MEITY/img/logo-national-emblem.png"

      type="png"

    />




    <style>

      /*#Button1 {

        margin-left: 100px;

      }

      #Button2 {

        margin-left: 100px;

      }*/

      body {

        background-color: #e9eaf5;

        background-image: url("https://www.chaibasa.org/wp-content/uploads/2019/03/images-1-1.jpeg");

        background-size: cover;

        background-position: center;

        /* opacity: 0.8;*/

      }

      .card {

        position: relative;

        display: -ms-flexbox;

        display: flex;

        -ms-flex-direction: column;

        flex-direction: column;

        min-width: 0;

        word-wrap: break-word;

        background-color: #d4dbef;

        background-clip: border-box;

        border: 1px solid rgba(0, 0, 0, 0.125);

        border-radius: 1.25rem;

      }

      /*input::-webkit-outer-spin-button,

      input::-webkit-inner-spin-button {

        -webkit-appearance: none;

        margin: 0;
*/
      /*}*/

      /*  */




     

      /*  */

    </style>

  </head>

  <body>

    <form id="form1" runat="server">

      <div class="container">

        <div class="row justify-content-center mt-5">

          <div class="col-md-6">

            <div class="card">

              <div class="card-header">

                <h5 class="text-center">Passport Registration Form</h5>

              </div>

              <div class="card-body">

                

                  <div class="form-group">

                    <label for="name">Enter Name:</label>

                    <input

                      type="text"

                      required

                      runat="server"

                      class="form-control"

                      id="name"

                      placeholder="Enter your name"

                    />

                  </div>

                  <div class="form-group">

                    <label for="gender">Select Gender:</label>

                    <select

                      required

                      class="form-control"

                      runat="server"

                      id="gender"

                    >

                      <option value="" selected disabled>Select Gender</option>

                      <option value="Male">Male</option>

                      <option value="Female">Female</option>

                      <option value="Intersex">Intersex</option>

                    </select>

                  </div>




                  <div class="form-group">

                    <label for="email">Email:</label>

                    <input

                      type="email"

                      required="required"

                      runat="server"

                      class="form-control"

                      id="email"

                      placeholder="Enter your email"

                    />

                  </div>




                  <div class="form-group">

                    <label for="phone">Phone:</label>

                    <%--<input

                      type="tel"

                      id="phone"

                      maxlength="12"

                      runat="server"

                      class="form-control"

                      placeholder="0123-45-6789"

                      required

                    />--%>

                    <input

                      type="number"

                      required="required"

                      runat="server"

                      class="form-control"

                      id="phone"

                      placeholder="0123-45-6789"

                    />

                  </div>

                  <div class="form-group">

                    <label for="dob">Date of Birth:</label>

                    <input

                      type="date"

                      required="required"

                      class="form-control"

                      runat="server"

                      id="dob"

                    />

                  </div>

                  <div class="form-group">

                    <label for="adharno">Enter Adhar No:</label>

                    <%--<input

                      type="tel"

                      id="adharno"

                      maxlength="12"

                      runat="server"

                      class="form-control"

                      placeholder="0000-0000-0000"

                      required

                    />--%>

                    <input

                      type="text"

                      required="required"

                      maxlength="12"

                      class="form-control"

                      runat="server"

                      id="adharno"

                      placeholder="0000-0000-0000"

                    />

                  </div>

                  <div class="form-group">

                    <label for="adharno">Enter Pan No:</label>

                    <%--<input

                      type="tel"

                      id="adharno"

                      maxlength="12"

                      runat="server"

                      class="form-control"

                      placeholder="0000-0000-0000"

                      required

                    />--%>

                    <input

                      type="Text"

                      required="required"

                      maxlength="12"

                      style="text-transform: uppercase"

                      class="form-control"

                      runat="server"

                      id="pannumber"

                      placeholder="Pan Number"

                    />

                  </div>

                  <div class="form-group">

                    <label for="fname">Enter Father's Name:</label>

                    <input

                      type="text"

                      required

                      class="form-control"

                      id="fname"

                      runat="server"

                      placeholder="Enter your father's name"

                    />

                  </div>

                  <div class="form-group">

                    <label for="address">Address:</label>

                    <input

                      type="text"

                      required

                      class="form-control"

                      id="address"

                      runat="server"

                      placeholder="Enter your address"

                    />

                  </div>

                  <div class="form-group">

                    <label for="state">State:</label>

                    <select

                      runat="server"

                      required

                      class="form-control"

                      id="state"

                    >

                      <option value="" selected disabled>Select State</option>

                      <option value="Madhya Pradesh">Madhya Pradesh</option>

                      <option value="Uttar Pradesh">Uttar Pradesh</option>

                      <option value="Assam">Assam</option>

                      <option value="Bihar">Bihar</option>

                      <option value="Maharashtra">Maharashtra</option>

                      <option value="Jharkhand">Jharkhand</option>

                      <option value="Punjab">Punjab</option>

                      <option value="Rajasthan">Rajasthan</option>

                      <option value="Tamil Nadu">Tamil Nadu</option>

                      <option value="Kerala">Kerala</option>

                    </select>

                  </div>


                  <div class="text-center">
      <asp:Button ID="Registration1" class="btn btn-primary" OnClick="Registration_Click1"  runat="server" Text="Submit" />
                    

                  </div>

                

              </div>

            </div>

          </div>

        </div>

      </div>

    </form>

  </body>

</html>
