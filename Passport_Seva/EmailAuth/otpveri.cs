using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Passport_Seva.EmailAuth
{
    public class otpveri
    {
        SendEmail send=new SendEmail();
        public void sendotp(string email,string Name)
        {
            Random random = new Random();
            int otp = random.Next(1000, 9999);
            
            send.emailsend(email, Name, otp.ToString());
        }
    }
}