using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

namespace BW_User
{
    public class WebMail
    {
        public static string SendMail(string To = "Contact@BanjaraWorld.com", string Subject = "Banjaraworld Care", string Message = "<b>Thanks for contacting us, we will get in touch with you very soon.</b>")
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create("http://banjaraworld.com/Mail/mail.php?To=" + To + "&Subject=" + Subject + "&Message=" + Message);
            request.GetResponse();
            return "Sent";
        }
    }
}

//string result = "";
            //try
            //{
            //    MailMessage mail = new MailMessage();
            //    SmtpClient SmtpServer = new SmtpClient("108.163.224.173");

            //    mail.From = new MailAddress("banjaraworld@banjaraworld.com");
            //    mail.To.Add(to);
            //    mail.Subject = subject;
            //    mail.Body = body;

            //    SmtpServer.Port = 25;
            //    SmtpServer.Credentials = new System.Net.NetworkCredential("banjaraworld@banjaraworld.com", "1tsNwPass#1");
            //    SmtpServer.EnableSsl = false;

            //    SmtpServer.Send(mail);
            //    result = "Mail Sent";
            //}
            //catch (Exception ex)
            //{
            //    result = ex.ToString(); ;
            //}
            //return result;