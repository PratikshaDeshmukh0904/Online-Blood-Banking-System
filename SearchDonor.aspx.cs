using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;

public partial class RequestBloodGroup : System.Web.UI.Page
{
    string email,blood,currentdate,groupCheck, insertQuerry, myquery ,id,name,gender,bloodgroup,mobilenumber,amount,city,address,dateofbirth;

    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DonorConnectionStringa"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        currentdate= DateTime.Today.ToString("dd-MM-yyyy");
        Label27.Text = DateTime.Today.ToString("dd-MM-yyyy");
        
        email = Session["Search"] as String;
        try
        {
            conn.Open();
            string checkuser = "select ID ,Name ,Gender ,BloodGroup ,MobileNumber ,City ,Address ,DateofBirth from DonorInfo where EmailAddress='" + email + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            SqlDataReader reader = com.ExecuteReader();
            if (reader.Read())
            {
                id = reader["ID"].ToString();
                name = reader["Name"].ToString();
                gender = reader["Gender"].ToString();
                bloodgroup = reader["BloodGroup"].ToString();
                mobilenumber = reader["MobileNumber"].ToString();
                city = reader["City"].ToString();
                address = reader["Address"].ToString();
                dateofbirth = reader["DateofBirth"].ToString();
                reader.Close();
                conn.Close();
            }
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
        conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
            
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        try
        {
        blood = DropDownList2.Text;
        conn.Open();
        string str = "Select * from DONATION where DBG='"+ blood +"'";
        SqlDataAdapter sda = new SqlDataAdapter(str, conn);
        DataSet ds = new DataSet();
        sda.Fill(ds, "ser");
        GridView1.DataSource = ds.Tables["ser"];
        GridView1.DataBind();
        conn.Close();
       }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView1.SelectedRow;
        Label16.Text = gr.Cells[1].Text;
        Label17.Text = gr.Cells[2].Text;
        Label18.Text = gr.Cells[3].Text;
        Label19.Text = gr.Cells[4].Text;
        Label20.Text = gr.Cells[5].Text;
        Label21.Text = gr.Cells[6].Text;
        Label22.Text = gr.Cells[7].Text;
        TextBox2.Text = email;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential(TextBox2.Text , TextBox3.Text);
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = TextBox4.Text;
        msg.Body = TextBox5.Text;
        string toaddress = Label22.Text;
        msg.To.Add(toaddress);
        string fromaddress = Label17.Text + "<"+TextBox2.Text+">";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);

        }
        catch
        {
            throw;
        }
        Response.Write("<script>alert('Email Send Successfully')</script>");
        Server.Transfer("ChoosedonoORreq.aspx");
    }
}
   
