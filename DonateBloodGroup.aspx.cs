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



public partial class DonoateBloodGroup : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DonorConnectionStringa"].ConnectionString);
    int newvalue ,final;
    string  BDate, BUnit ,insertQuerry,currentdate,email,name,gender,bloodgroup,mobilenumber,city,address,dateofbirth,id;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label13.Text = DateTime.Today.ToString("dd-MM-yyyy");
        currentdate = DateTime.Today.ToString("dd-MM-yyyy");
        email = Session["email"] as String;
        try
        {
            conn.Open();
            string selectinfo = "select ID ,Name ,Gender ,BloodGroup ,MobileNumber ,City ,Address ,DateofBirth from DonorInfo where EmailAddress='" + email.Trim() + "'";
            SqlCommand com = new SqlCommand(selectinfo, conn);
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
        conn.Open();
        string checkuser = "select count(*) from DONATION where EmailAddress='" + email.Trim() + "' AND DBG='" + bloodgroup + "'";

        SqlCommand comM = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(comM.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {

            conn.Open();
            checkuser = "select DD ,DBU from DONATION where EmailAddress='" + email.Trim() + "' AND DBG='" + bloodgroup + "'";
            SqlCommand sqlcom = new SqlCommand(checkuser, conn);
            SqlDataReader read = sqlcom.ExecuteReader();
            if (read.Read())
            {
                BUnit = read["DBU"].ToString();
                BDate = read["DD"].ToString();
                Label14.Text = "Last Time Donation " + BDate;
                Label15.Text = "Total amount of Blood Donated Last Time " + BUnit;
                Label14.ForeColor = System.Drawing.Color.Green;
                read.Close();
                conn.Close();
               
                DateTime dt2 = DateTime.ParseExact(currentdate, "dd-mm-yyyy", null);
                DateTime dt1 = DateTime.ParseExact(BDate, "dd-mm-yyyy", null);
                TimeSpan ts = dt2.Subtract(dt1);
                int month = Convert.ToInt16(Math.Round((double)(ts.Days) / 30.0));
                if (month < 2)
                {
                    Label15.Text = "you have donated blood recently more donation can be injurious to health";
                    Label15.ForeColor = System.Drawing.Color.Red;

                }
                else if (month > 2)
                {
                    Label15.Text = "you are eligible for donation";
                    Label15.ForeColor = System.Drawing.Color.Green;
                }
            }
        }       
         else
            {
                Response.Write("no donation");
                Label14.Text = "User Never Donated ";
                Label15.Text = "No Last Donation";
                Label14.ForeColor = System.Drawing.Color.Red;
             }
        Label5.Text = id;
        Label6.Text =name;
        Label4.Text =email;
        Label9.Text =mobilenumber;
        Label8.Text =bloodgroup;
        Label13.Text =currentdate;
        Label18.Text =gender;
        
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
       

if (Label14.ForeColor == System.Drawing.Color.Red && Label14.Text == "User Never Donated ")
        {
            conn.Open();
            insertQuerry = "insert into DONATION (ID ,UN , DBG ,DBU ,DD , MN , EmailAddress) values (@id ,@un ,@dbg ,@dbu ,@dd ,@mn ,@em)";   
            SqlCommand com = new SqlCommand(insertQuerry, conn);

            com.Parameters.AddWithValue("@id", int.Parse(id));
            com.Parameters.AddWithValue("@un", name);
            com.Parameters.AddWithValue("@dbg", bloodgroup);
            com.Parameters.AddWithValue("@dbu", int.Parse(TextBox1.Text));
            com.Parameters.AddWithValue("@dd",  currentdate);
            com.Parameters.AddWithValue("@mn",  mobilenumber);
            com.Parameters.AddWithValue("@em ", email);
            com.ExecuteNonQuery();
            conn.Close();
            

           conn.Open();
            string checkuser = "select count(*) from availableblooduni where Bloodgroup='" + bloodgroup + "'";

            SqlCommand coma = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(coma.ExecuteScalar().ToString());
            conn.Close();
            if (temp <= 0)
            {
                conn.Open();
               string insertQuerryt = "insert into availableblooduni (Bloodgroup ,bloodunit) values (@bg ,@bu)";
                SqlCommand comaa = new SqlCommand(insertQuerryt, conn);

                
                comaa.Parameters.AddWithValue("@bg", bloodgroup);
                comaa.Parameters.AddWithValue("@bu", int.Parse(TextBox1.Text));
                
                comaa.ExecuteNonQuery();
                conn.Close();
            }



            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("pratiksha942000@gmail.com", "6oct1999");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Hello " + name + "  Thanks for Donation at Arpit Online Blood Bank Organisation";
            msg.Body = "Hi, Thanks For Donating Blood to Arpit Blood Donation Organisation.We will provide facilities.We thank you for your continued co-operation in connection with the blood donation drive.We hope to see you again next time. Thanks";
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




            Session["id"] = id;
            Session["name"] = name;
            Session["RequestedBlood"] = bloodgroup;
            Session["amount"] = TextBox1.Text;
            Session["Date"] = currentdate;
            Session["contact"] = mobilenumber;
            Session["emailad"] = email;



          




            Response.Redirect("ThnxDono.aspx");
            
         }
else if (Label15.Text == "you are eligible for donation" && Label15.ForeColor == System.Drawing.Color.Green)
         {

             newvalue = int.Parse(TextBox1.Text);
             final = int.Parse(BUnit) + newvalue;
             conn.Open();
             string str = "update DONATION Set DBU='" + final + "', DD='" + currentdate + "' where EmailAddress ='" + email + "' AND DBG='"+ bloodgroup +"'";
             SqlCommand cmd = new SqlCommand(str, conn);
             cmd.ExecuteNonQuery();
             conn.Close();

             conn.Open();
             string checkuser = "select count(*) from availableblooduni where Bloodgroup='" + bloodgroup + "'";

             SqlCommand coma = new SqlCommand(checkuser, conn);
             int temp = Convert.ToInt32(coma.ExecuteScalar().ToString());
             conn.Close();

             if (temp >= 1)
             {
                 conn.Open();
                string insertQuerryn = "update availableblooduni Set bloodunit='" + final + "' where Bloodgroup='" + bloodgroup + "'";
                 SqlCommand comaa = new SqlCommand(insertQuerryn, conn);
                 comaa.ExecuteNonQuery();
                 conn.Close();
             }



             SmtpClient smtp = new SmtpClient();
             smtp.Host = "smtp.gmail.com";
             smtp.Port = 587;
             smtp.Credentials = new System.Net.NetworkCredential("pratiksha942000@gmail.com", "6oct1999");
             smtp.EnableSsl = true;
             MailMessage msg = new MailMessage();
             msg.Subject = "Hello " + name + "  Thanks for Donation at Arpit Online Blood Bank Organisation";
             msg.Body = "Hi, Thanks For Your donation at Arpit  online Blood Bank organisation, We will Provide You The Latest Update.Please ensure that you should not donate blood to any other organisation before 3 months of duration because Donating more blood can be harmfull your health ";
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








             Session["id"] = id;
             Session["name"] = name;
             Session["RequestedBlood"] = bloodgroup;
             Session["amount"] = TextBox1.Text;
             Session["Date"] = currentdate;
             Session["contact"] = mobilenumber;
             Session["emailad"] = email;
             Response.Redirect("ThnxDono.aspx");
              }
else if (Label15.Text == "you have donated blood recently more donation can be injurious to health" && Label15.ForeColor == System.Drawing.Color.Red)
              {
                  Response.Write("can't donate come back later");
              }
        }
    }
