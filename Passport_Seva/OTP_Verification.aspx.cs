using Passport_Seva.EmailAuth;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using static System.Net.WebRequestMethods;

namespace Passport_Seva
{
    public partial class OTP_Verification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Verification_Click(object sender, EventArgs e)
        {
            SendEmail sendEmail = new SendEmail();
            string text1 = txt1.Value;
            string text2 = txt2.Value;
            string text3 = txt3.Value;
            string text4 = txt4.Value;
            //this will check whether the user has filled 4 digit otp or not
            if (String.IsNullOrEmpty(text1) == true || String.IsNullOrEmpty(text2) == true || String.IsNullOrEmpty(text3) == true || String.IsNullOrEmpty(text4) == true)
            {
                MessageBox.Show("Plz enter four digit valid OTP!!");
                return;
            }
            else
            {
                StringBuilder sb = new StringBuilder();
                sb.Append(text1).Append(text2).Append(text3).Append(text4);
                if (String.Equals(sendEmail.chekotp(), sb.ToString()))//here otp is matched with actual otp and user otp
                {
                    MessageBox.Show("Procced to Payment");
                    //if otp is valid then user will be redirected to voting page where vote will be casted
                    Response.Redirect("https://rzp.io/l/KhuqvrMC", false);
                }
                else
                {
                    MessageBox.Show("Wrong OTP!!");
                    return;
                }
            }
        }
    }
}