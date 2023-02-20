using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;

public partial class Registration : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DonorConnectionStringa"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Text = DateTime.Now.ToString();
    }
    public void ButtonPublic_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        conn.Open();
        string checkuser = "select count(*) from DonorInfo where EmailAddress='" + TextBox2.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkpasswordQuery = "select Password from DonorINfo where EmailAddress='" + TextBox2.Text + "'";
            SqlCommand passComm = new SqlCommand(checkpasswordQuery, conn);
            string password = passComm.ExecuteScalar().ToString().Replace(" ", "");

            string checkemailQuery = "select EmailAddress from DonorINfo where EmailAddress='" + TextBox2.Text + "'";
            SqlCommand emComm = new SqlCommand(checkemailQuery, conn);
            string email = emComm.ExecuteScalar().ToString().Replace(" ", "");
            if (password == TextBoxPassed.Text && password != "madhu" && email == TextBox2.Text)
            {
                
                Response.Write("Password is correct");
                Response.Redirect("ChangePassword.aspx");
            }
            else
            {
                Response.Write("Username is not correct");
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
       
        conn.Open();
        string checkuser = "select count(*) from DonorInfo where EmailAddress='" + TextBox2.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkpasswordQuery = "select Password from DonorINfo where EmailAddress='" + TextBox2.Text + "'";
            SqlCommand passComm = new SqlCommand(checkpasswordQuery, conn);
            string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
            string checkemailQuery = "select EmailAddress from DonorINfo where EmailAddress='" + TextBox2.Text + "'";
            SqlCommand emComm = new SqlCommand(checkemailQuery, conn);
            string email = emComm.ExecuteScalar().ToString().Replace(" ", "");
            if (password == "madhu" && email == TextBox2.Text)
            {
               
                Response.Write("Password is correct");
                Response.Redirect("AdminLog.aspx");

            }
            else
            {
                Response.Write("Username is not correct");
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
        conn.Open();
        string checkuser = "select count(*) from DonorInfo where EmailAddress='" + TextBox2.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkpasswordQuery = "select Password from DonorInfo where EmailAddress='" + TextBox2.Text + "'";
            SqlCommand passComm = new SqlCommand(checkpasswordQuery, conn);
            string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
            string checkemailQuery = "select EmailAddress from DonorINfo where EmailAddress='" + TextBox2.Text + "'";
            SqlCommand emComm = new SqlCommand(checkemailQuery, conn);
            string email = emComm.ExecuteScalar().ToString().Replace(" ", "");

            if (password == TextBoxPassed.Text && password != "madhu" && email == TextBox2.Text)
            {
                string checknameQuery = "select Name from DonorINfo where Password='" + TextBoxPassed.Text + "'";
                SqlCommand nmComm = new SqlCommand(checkemailQuery, conn);
                string name = nmComm.ExecuteScalar().ToString().Replace(" ", "");


                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("pratiksha942000@gmail.com", "6oct1999");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                msg.Subject = "Access To Account";
                msg.Body = "Hi,THANK YOU to login our ARPIT BLOOD ORGANISATION .We will provide latest updates.Thanks";
                string toaddress = email;
                msg.To.Add(toaddress);
                string fromaddress = "Pratiksha Hanmant Deshmukh <pratiksha942000@gmail.com>";
                msg.From = new MailAddress(fromaddress);
                try
                {
                    smtp.Send(msg);

                }
                catch
                {
                    throw;
                }



                Session["New"] = TextBox2.Text;
                Response.Write("Password is correct");
                Response.Redirect("ChoosedonoORreq.aspx");
            }


        }
        else
        {
            Response.Write("Username is not correct");
        }
        conn.Close();
    }
}