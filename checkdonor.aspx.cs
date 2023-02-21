using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class checkdonor : System.Web.UI.Page
{
    string id, emailaddress, gender, username, currentdate;
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DonorConnectionStringa"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        currentdate = DateTime.Today.ToString("dd-MM-yyyy");
        emailaddress = Session["NEW"] as String;
        try
        {

            conn.Open();
            string selectinfo = "select ID ,Name ,Gender from DonorInfo where EmailAddress='" + emailaddress + "'";
            SqlCommand com = new SqlCommand(selectinfo, conn);
            SqlDataReader reader = com.ExecuteReader();
            if (reader.Read())
            {
                id = reader["ID"].ToString();
                username = reader["Name"].ToString();
                gender = reader["Gender"].ToString();
                reader.Close();
                conn.Close();

            }
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        float a = float.Parse(TextBox1.Text);

        if (gender == "Male" && a <= 20.0 && a >= 13.0)
        {
            Label26.ForeColor = System.Drawing.Color.Green;
        }
        else if (gender == "Female" && a <= 20.0 && a >= 12.5)
        {
            Label26.ForeColor = System.Drawing.Color.Green;
        }
        else
        {
            Response.Write("your Haemoglobin is not in range");
            Label26.ForeColor = System.Drawing.Color.Red;
        }


         conn.Open();
        string checkuser = "select count(*) from DonorCurrentState where EmailAddress='" + emailaddress.Trim() + "'";

        SqlCommand comM = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(comM.ExecuteScalar().ToString());
        conn.Close();
        if (Label26.ForeColor == System.Drawing.Color.Green && temp <1)
        {
            try
            {

                conn.Open();
                string insertQuerry = "insert into DonorCurrentState (ID,UserName,Gender,EmailAddress,Haemoglobin,Weight,Height,Pulse,BloodPressureSystolic,BloodPressureDiastolic,Age,Date,last4,sleepwell,aspirin,medicine,fever,JorT,Malaria,closeJorT,NightSweats,Surgery,Transfusion,Rabies,Immunoglobulins,Convusions,Tattoo,Immunization,Alcohol,Suffer) values (@id,@username,@gender,@emailaddress,@haemoglobin,@weight,@height,@pulse,@bloodpressures,@bloodpressured,@age,@date,@last4,@sleepwell,@aspirin,@medicine,@fever,@jort,@malaria,@closejort,@nightsweats,@surgery,@transfusion,@rabies,@immunoglobulins,@convusions,@tattoo,@immunization,@alcohol,@suffer)";
                SqlCommand coma = new SqlCommand(insertQuerry, conn);
                coma.Parameters.AddWithValue("@id", int.Parse(id));
                coma.Parameters.AddWithValue("@username", username);
                coma.Parameters.AddWithValue("@gender", gender);
                coma.Parameters.AddWithValue("@emailaddress", emailaddress);
                coma.Parameters.AddWithValue("@haemoglobin", float.Parse(TextBox1.Text));
                coma.Parameters.AddWithValue("@weight", float.Parse(TextBox2.Text));
                coma.Parameters.AddWithValue("@height", float.Parse(TextBox3.Text));
                coma.Parameters.AddWithValue("@pulse", int.Parse(TextBox6.Text));
                coma.Parameters.AddWithValue("@bloodpressures", int.Parse(TextBox4.Text));
                coma.Parameters.AddWithValue("@bloodpressured", int.Parse(TextBox7.Text));
                coma.Parameters.AddWithValue("@age", int.Parse(TextBox5.Text));
                coma.Parameters.AddWithValue("@date", currentdate);
                coma.Parameters.AddWithValue("@last4", CheckBoxList1.Text);
                coma.Parameters.AddWithValue("@sleepwell", CheckBoxList2.Text);
                coma.Parameters.AddWithValue("@aspirin", CheckBoxList3.Text);
                coma.Parameters.AddWithValue("@medicine", CheckBoxList4.Text);
                coma.Parameters.AddWithValue("@fever", CheckBoxList5.Text);
                coma.Parameters.AddWithValue("@jort", CheckBoxList6.Text);
                coma.Parameters.AddWithValue("@malaria", CheckBoxList7.Text);
                coma.Parameters.AddWithValue("@closejort", CheckBoxList8.Text);
                coma.Parameters.AddWithValue("@nightsweats", CheckBoxList9.Text);
                coma.Parameters.AddWithValue("@surgery", CheckBoxList10.Text);
                coma.Parameters.AddWithValue("@transfusion", CheckBoxList11.Text);
                coma.Parameters.AddWithValue("@rabies", CheckBoxList12.Text);
                coma.Parameters.AddWithValue("@immunoglobulins", CheckBoxList13.Text);
                coma.Parameters.AddWithValue("@convusions", CheckBoxList14.Text);
                coma.Parameters.AddWithValue("@tattoo", CheckBoxList15.Text);
                coma.Parameters.AddWithValue("@immunization", CheckBoxList16.Text);
                coma.Parameters.AddWithValue("@alcohol", CheckBoxList17.Text);
                coma.Parameters.AddWithValue("@suffer", ListBox1.Text);
                coma.ExecuteNonQuery();
                conn.Close();
                Session["email"] = emailaddress;
                Response.Redirect("DonateBloodGroup.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
        else if (Label26.ForeColor == System.Drawing.Color.Green && temp == 1)
        {
            try
            {
            conn.Open();
            string str = "update DonorCurrentState Set ID='" + int.Parse(id) + "',UserName='" + username + "',Gender='" + gender + "',Haemoglobin='" + float.Parse(TextBox1.Text) + "',Weight='" + float.Parse(TextBox2.Text) + "',Height='" + float.Parse(TextBox3.Text) + "',Pulse='" + int.Parse(TextBox6.Text) + "',BloodPressureSystolic='" + int.Parse(TextBox4.Text) + "',BloodPressureDiastolic='" + int.Parse(TextBox7.Text) + "',Age='" + int.Parse(TextBox5.Text) + "',Date='" + currentdate + "',last4='" + CheckBoxList1 + "',sleepwell='" + CheckBoxList2 + "',aspirin='" + CheckBoxList3 + "',medicine='" + CheckBoxList4 + "',fever='" + CheckBoxList5 + "',JorT='" + CheckBoxList6 + "',Malaria='" + CheckBoxList7 + "',closeJorT='" + CheckBoxList8 + "',NightSweats='" + CheckBoxList9 + "',Surgery='" + CheckBoxList10 + "',Transfusion='" + CheckBoxList11 + "',Rabies='" + CheckBoxList12 + "',Immunoglobulins='" + CheckBoxList13 + "',Convusions='" + CheckBoxList14 + "',Tattoo='" + CheckBoxList15 + "',Immunization='" + CheckBoxList16 + "',Alcohol='" + CheckBoxList17 + "',Suffer='" + ListBox1 + "' where EmailAddress ='" + emailaddress + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Session["email"] = emailaddress;
            Response.Redirect("DonateBloodGroup.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
    }
}