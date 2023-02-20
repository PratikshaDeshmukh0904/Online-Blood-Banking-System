using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class EditInfo : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DonorConnectionStringa"].ConnectionString);
    String email ,name, gender, bloodgroup,mobilenumber, city, address, dateofbirth;
    protected void Page_Load(object sender, EventArgs e)
    {
        /*Label12.Text = DateTime.Today.ToString("dd-MM-yyyy");
        email = Session["edit"] as String;
        Label13.Text = Session["edit"] as String;
        try
        {
            conn.Open();
            string selectinfo = "select Name ,Gender ,BloodGroup ,MobileNumber ,City ,Address ,DateofBirth from DonorInfo where EmailAddress='" + email + "'";
            SqlCommand com = new SqlCommand(selectinfo, conn);
            SqlDataReader reader = com.ExecuteReader();
            if (reader.Read())
            {
                
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
        DN.Text = name;
        G.Text = gender;
       
        MN.Text = mobilenumber;
        C.Text = city;
        ADD.Text = address;
        DOB.Text = dateofbirth;
        */
    }
   /* protected void Button1_Click(object sender, EventArgs e)
    { 
        
        conn.Open();
        string str = "update DonorInfo Set Name='" + DN.Text + "', Gender='" + G.Text + "',MobileNumber='"+MN.Text+"',City='"+C.Text+"',Address='"+ADD.Text+"',DateofBirth='"+DOB.Text+"' where EmailAddress ='" + email + "' AND BloodGroup='"+ bloodgroup +"'";
        SqlCommand cmd = new SqlCommand(str, conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("ChoosedonoORreq.aspx");
       
    }
    */
}