using MySql.Data.MySqlClient;
using Org.BouncyCastle.Asn1.X509;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Windows.Forms;
using System.Xml.Linq;

namespace Passport_Seva.DataBase
{
    public class DataBas
    {
        string con = "server=LocalHost;user=root;password=jivanshu;database=passport_seva";
        public void store_data(string Name, string Gender, string EmailId, string PhoneNo, string DOB, string Aadhar, string Pan, string Fathername, string st)
        {
            MainClass mainClass = new MainClass();
            if (mainClass.validateVerhoeff(Aadhar) == false)
            {
                MessageBox.Show("Enter a vailed Aadhar Number");
            }
            else if (mainClass.checkemailpresent(EmailId) == true)
            {
                MessageBox.Show("Email Already Present");
            }

            else
            {
                try
                {
                    //con = "server=LocalHost;user=root;password=jivanshu;database=passport_seva";
                    MySqlConnection conn = new MySqlConnection(con);
                    conn.Open();

                    string qry = "CALL `details`(@Name, @Gender, @Email, @contact,@dob, @aadhar, @pan, @fname, @state);";
                    MySqlCommand cmd = new MySqlCommand(qry, conn);
                    cmd.Parameters.Add("@Name", MySqlDbType.VarChar, 50).Value = Name;
                    cmd.Parameters.Add("@Gender", MySqlDbType.VarChar, 50).Value = Gender;
                    cmd.Parameters.Add("@Email", MySqlDbType.VarChar, 50).Value = EmailId;
                    cmd.Parameters.Add("@contact", MySqlDbType.VarChar, 50).Value = PhoneNo;
                    cmd.Parameters.Add("@dob", MySqlDbType.VarChar, 50).Value = DOB;
                    cmd.Parameters.Add("@aadhar", MySqlDbType.VarChar, 50).Value = Aadhar;
                    cmd.Parameters.Add("@pan", MySqlDbType.VarChar, 50).Value = Pan;
                    cmd.Parameters.Add("@fname", MySqlDbType.VarChar, 50).Value = Fathername;
                    cmd.Parameters.Add("@state", MySqlDbType.VarChar, 50).Value = st;
                    int row = cmd.ExecuteNonQuery();
                    MessageBox.Show("Details Saved");
                    MessageBox.Show("OTP Send To Email");
                    conn.Close();

                    MessageBox.Show("Registration Successful");

                    //Response.Redirect("Login.aspx", false);



                }
                catch (Exception ex)
                {
                    MessageBox.Show("Not Saved");
                    MessageBox.Show(ex.StackTrace);
                }
            }
        }
    }
}