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
    public partial class Sending_mail_from_sms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Random pwd = new Random();
            int pwd1 = pwd.Next();
            string q = "insert into mail values('"+ TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "',"+pwd1+")";
            SqlConnection cn = new SqlConnection("Data Source=DEV;Initial Catalog=mail;Integrated Security=True");
            cn.Open();
            SqlCommand cmd = new SqlCommand(q, cn);
            int i = cmd.ExecuteNonQuery();
            if(i>0)
            {
                SmtpClient obj = new SmtpClient();
                obj.Credentials = new NetworkCredential("vinayakyadav4131@gmail.com", "tznbssmrflmijlfo");
                obj.Host = "smtp.gmail.com";
                obj.Port = 587;
                obj.EnableSsl = true;

                string q1 = "select Email,Password from mail";
                SqlConnection cn1 = new SqlConnection("Data Source=DEV;Initial Catalog=mail;Integrated Security=True");
                cn1.Open();
                SqlCommand cmd1 = new SqlCommand(q1, cn1);
                SqlDataReader ra = cmd1.ExecuteReader();
                obj.Send("vinayakyadav4131@gmail.com", TextBox2.Text, " user is and password ", "User Id is '" + TextBox2.Text + "' and Password is "+pwd1);

            }
            else
            {
                Response.Redirect("Invalid Data");

            }


            Label1.Text = "sending......";



        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login Form.aspx");

        }
    }
}