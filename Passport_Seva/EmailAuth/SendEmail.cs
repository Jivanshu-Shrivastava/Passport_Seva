using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Windows.Forms;
using System.Xml.Linq;

namespace Passport_Seva.EmailAuth
{
    public class SendEmail
    {
        static string z;
        public void emailsend(string EmailId,string Name,string otp)
        {
            string senderEmail = "indianpassportorg@gmail.com";
            string senderPassword = "ssptcyagoxrglxwt";

            string recipientEmail = EmailId;
            MailMessage message = new MailMessage(senderEmail, recipientEmail);

            message.Subject = "One Time Password ";
            message.Body = "Dear " + Name + ",\r\n\r\n As requested, here is your One-Time Password (OTP) for authentication:\r\n\r\nOTP: " + otp + "\r\n\r\nPlease use this OTP within [Validity Period] minutes to complete your transaction or login process. Do not share this OTP with anyone for security reasons.\r\n\r\nIf you did not request this OTP or have any concerns, please contact our support team immediately.\r\n\r\nThank you,\r\n[Jivanshu Shrivastava]\r\n[Jivanshu PassportSeva]";
            //message.Subject = "Passport Dispatch Intimation";
            //message.Body = "Dear " + Name + ",\r\n\r\nYour passport has been dispatched on 14-10-2022 through speed post.\r\n\r\nYour passport details are given below:\r\n\r\nPassport No.: W1234567\r\n\r\nFile No.: BP1066976381422\r\n\r\nTracking No.: PP819373037IN\r\n\r\nThank You!!\r\n\r\nDisclaimer:- This is a system generated email. Please do not reply to this email.\r\n\r\n*** This message is intended only for the person or entity to which it is addressed and may contain confidential and/or privileged information. If you have received this message in error, please notify the sender immediately and delete this message from your system ***";

            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);

            smtpClient.Credentials = new NetworkCredential(senderEmail, senderPassword);

            smtpClient.EnableSsl = true;

            try
            {
                smtpClient.Send(message);
                z = otp;
                MessageBox.Show("Send");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }
        public string chekotp()
        {
            
            return z;

        }
    }
}