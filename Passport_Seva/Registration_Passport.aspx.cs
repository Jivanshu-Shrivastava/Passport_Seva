using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using Passport_Seva.DataBase;
using Passport_Seva.EmailAuth;

namespace Passport_Seva
{
    public partial class Registration_Passport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Registration_Click1(object sender, EventArgs e)
        {
            MainClass m = new MainClass();
            DataBas data = new DataBas();
            SendEmail send = new SendEmail();
            otpveri o=new otpveri();
            string Name = name.Value.Trim();
            string Gender = gender.Value.Trim();
            string EmailId = email.Value.Trim();
            string PhoneNo = phone.Value.Trim();
            string DOB = dob.Value.Trim();
            string Aadhar = adharno.Value.Trim();
            string Pan = pannumber.Value.Trim();
            string Fathername = fname.Value.Trim();
            string add = address.Value.Trim();
            string st = state.Value.Trim();

            if (m.validateVerhoeff(Aadhar) == false)
            {
                MessageBox.Show("Enter a vailed Aadhar Number");
            }
            else if (m.checkemailpresent(EmailId) == true)
            {
                MessageBox.Show("Email Already Present");
            }

            else
            {
                data.store_data(Name, Gender, EmailId, PhoneNo, DOB, Aadhar, Pan, Fathername, add);
                o.sendotp(EmailId, Name);
                Response.Redirect("OTP_Verification.aspx", false);
            }
        }
    }
}