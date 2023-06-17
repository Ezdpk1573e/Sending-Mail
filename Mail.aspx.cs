using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

namespace Sending_Mail
{
    public partial class Mail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SmtpClient obj = new SmtpClient();
            obj.Credentials = new NetworkCredential(TextBox1.Text, TextBox2.Text);
            obj.Host = "smtp.gmail.com";
            obj.Port = 587;
            obj.EnableSsl = true;

            MailMessage msg = new MailMessage(TextBox1.Text, TextBox3.Text, TextBox4.Text,TextBox5.Text);
            obj.Send(msg);

            Label1.Text = "sending......";


        }
    }
}