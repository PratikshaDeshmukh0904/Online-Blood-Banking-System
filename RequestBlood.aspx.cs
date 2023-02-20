using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class RequestBlood : System.Web.UI.Page
{
   
    float value, num1, num2;
    string email,currentdate, insertQuerry, id, name, gender, bloodgroup, mobilenumber,city, address, dateofbirth;
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DonorConnectionStringa"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        currentdate = DateTime.Today.ToString("dd-MM-yyyy");
        Label13.Text = DateTime.Today.ToString("dd-MM-yyyy");
        Label14.Text = DateTime.Today.ToString("dd-MM-yyyy");
        Label18.Text = Session["Req"] as String;
        email = Session["Req"] as String;
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
        conn.Close();
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      
       if(Label19.Text != "Click On Check Amount")
       {
        try
        {

            conn.Open();
            string insertQuerry = "insert into REQUEST (UN ,RBG ,RBU ,RD ,MN ,EA ,P) values (@un ,@rgb ,@rbu ,@rd ,@mn ,@ea ,@p)";
            SqlCommand coma = new SqlCommand(insertQuerry, conn);
            coma.Parameters.AddWithValue("@un", (name).ToString());
            coma.Parameters.AddWithValue("@rgb", (DropDownList1.Text).ToString());
            coma.Parameters.AddWithValue("@rbu", float.Parse(TextBox1.Text));
            coma.Parameters.AddWithValue("@rd", currentdate.ToString());
            coma.Parameters.AddWithValue("@mn", mobilenumber.ToString());
            coma.Parameters.AddWithValue("@ea", email.ToString());
            coma.Parameters.AddWithValue("@p", float.Parse(Label19.Text));
            coma.ExecuteNonQuery();
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }

 conn.Open();
        string checkuser = "select count(*) from TotalBloodReuest where Bloodgroup='" + DropDownList1.Text + "'";

        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp < 1)
        {
            try
            {

                conn.Open();
                string insertQuerry = "insert into TotalBloodRequest (Bloodgroup,bloodunit) values (@bloodgroup ,@bloodunit)";
                SqlCommand coma = new SqlCommand(insertQuerry, conn);
                coma.Parameters.AddWithValue("@bloodgroup", (DropDownList1.Text).ToString());
                coma.Parameters.AddWithValue("@bloodunit", int.Parse(TextBox1.Text));
                coma.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
        else if (temp == 1)
        {
            conn.Open();
            string insertQuerryn = "update bloodunit Set bloodunit='" + int.Parse(TextBox1.Text) + "' where Bloodgroup='" + DropDownList1.Text + "'";
            SqlCommand comaa = new SqlCommand(insertQuerryn, conn);
            comaa.ExecuteNonQuery();
            conn.Close();
        }




        Response.Write("<script>alert('Request')</script>");
        Server.Transfer("ChoosedonoORreq.aspx");
       }
       else
       {
           Response.Write("Check Price First by clicking on check amount");
       }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
         
        
        if(DropDownList1.Text == "A+" || DropDownList1.Text == "A-" || DropDownList1.Text == "B+" || DropDownList1.Text == "B-" || DropDownList1.Text == "AB+" || DropDownList1.Text == "AB-" || DropDownList1.Text == "O+" || DropDownList1.Text == "O-")
        {

             value = float.Parse(TextBox1.Text);
             num1 = value * 1;
             Label19.Text = num1.ToString();
        }
        else if (DropDownList1.Text == "O-")
        {
            value = float.Parse(TextBox1.Text);
            num2 = value * (float)1.2;
            Label19.Text = num2.ToString();
        }
    }
}