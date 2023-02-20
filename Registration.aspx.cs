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

public partial class Manager : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DonorConnectionStringa"].ConnectionString);
    

    protected void Page_Load(object sender, EventArgs e)
    {
        Label13.Visible = false;
        Label12.Text = DateTime.Now.ToString();
        if (IsPostBack)
        {
            
            conn.Open();
            string checkuser = "select count(*) from DonorInfo where EmailAddress='" + TextBoxEADD.Text + "'";

            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {

                Response.Write("User already Exists");
            }

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label7.Text = "Your Birth Date is " + DateTime.ParseExact(TextBoxDOB.Text, "dd-MM-yyyy", null).ToString("dd/MMM/yyyy");

        
        conn.Open();
        string checkuser = "select count(*) from DonorInfo where EmailAddress='" + TextBoxEADD.Text + "'";

        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            Response.Write("User already Exists");
        }
        else
        {

            try
            {
                // Guid newGuid = Guid.NewGuid();

                
                conn.Open();
                string insertQuerry = "insert into DonorInfo (Name,Gender,BloodGroup,EmailAddress,MobileNumber,City,Address,DateofBirth,Password) values (@Dname ,@gender,@bloodgroup ,@emailadd,@mobilenum,@city,@add,@dob ,@password ) ";
                SqlCommand coma = new SqlCommand(insertQuerry, conn);
                coma.Parameters.AddWithValue("@Dname", TextBoxDn.Text);
                coma.Parameters.AddWithValue("@gender", RadioButtonListG.Text);
                coma.Parameters.AddWithValue("@bloodgroup", DropDownListBG.Text);
                coma.Parameters.AddWithValue("@emailadd", TextBoxEADD.Text);
                coma.Parameters.AddWithValue("@mobilenum", TextBoxMN.Text);
                coma.Parameters.AddWithValue("@city", TextBoxC.Text);
                coma.Parameters.AddWithValue("@add", TextBoxADD.Text);
                coma.Parameters.AddWithValue("@dob", TextBoxDOB.Text);
                coma.Parameters.AddWithValue("@password ", TextBoxConPass.Text);


                coma.ExecuteNonQuery();

               
                conn.Close();
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("pratiksha942000@gmail.com", "6oct1999");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                msg.Subject = "Hello " + TextBoxDn.Text + "  Thanks for Register at Blood Donation";
                msg.Body = "Hi, Thanks For Your Registration at Blood Donation, We will Provide You The Latest Update. Thanks";
                string toaddress = TextBoxEADD.Text;
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
                
                Label13.Visible = true;
                Label13.ForeColor = System.Drawing.Color.Green;
                Label13.Text = "Registration Succesfull";
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
    }
   
}