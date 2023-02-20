using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;


public partial class FeedBack : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DonorConnectionStringa"].ConnectionString);
    string id, name, mobilenumber, city;
    protected void Page_Load(object sender, EventArgs e)
    {

        Label1.Text = Session["fed"]as String;
         
        try
        {
            conn.Open();
            string selectinfo = "select ID ,Name ,Gender ,BloodGroup ,MobileNumber ,City ,Address ,DateofBirth from DonorInfo where EmailAddress='" + Label1.Text.Trim() + "'";
            SqlCommand com = new SqlCommand(selectinfo, conn);
            SqlDataReader reader = com.ExecuteReader();
            if (reader.Read())
            {
                id = reader["ID"].ToString();
                TextBox1.Text = reader["Name"].ToString();
                TextBox3.Text = reader["MobileNumber"].ToString();
                TextBox2.Text = reader["City"].ToString();
               
                reader.Close();
                conn.Close();
            }
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
        
      /*   = name.ToString();
        TextBox2.Text = city.ToString();
        TextBox3.Text = mobilenumber.ToString();
       */



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
       string insertQuerry = "insert into feedbackk (username,city,mobileno,emailid,feedback) values (@un ,@ct ,@mob ,@em ,@fd )";
        SqlCommand com = new SqlCommand(insertQuerry, conn);

        com.Parameters.AddWithValue("@un", TextBox1.Text);
        com.Parameters.AddWithValue("@ct", TextBox2.Text);
        com.Parameters.AddWithValue("@mob", TextBox3.Text);
        com.Parameters.AddWithValue("@em", Label1.Text);
        com.Parameters.AddWithValue("@fd", TextBox6.Text);
        com.ExecuteNonQuery();
        conn.Close();


        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential(TextBox4.Text,TextBox5.Text);
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = TextBox7.Text;
        msg.Body = TextBox6.Text;
        string toaddress = "pratiksha942000@gmail.com";
        msg.To.Add(toaddress);
        string fromaddress = TextBox1.Text + "<" + Label1.Text + ">";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);
        }
        catch
        {
            throw;
        }
        Response.Write("<script>alert('your feedback have been submitted successfully')</script>");
        Server.Transfer("ChoosedonoORreq.aspx");


    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
}
    
    
   