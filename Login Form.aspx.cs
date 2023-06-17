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
    public partial class Login_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string q = "select Email from mail where Email = '" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "'";
            SqlConnection cn = new SqlConnection(@"Data Source=DEV;Initial Catalog=mail;Integrated Security=True");
            cn.Open();
            SqlCommand cmd = new SqlCommand(q, cn);
            SqlDataReader dr = cmd.ExecuteReader();

            if(dr.Read())
            {
                // Response.Write("Login Successfully....");
                Response.Redirect("User Page.aspx");
            }
            else
            {
                Response.Write("Invalid User Name and Pasword...");

            }

        }
    }
}