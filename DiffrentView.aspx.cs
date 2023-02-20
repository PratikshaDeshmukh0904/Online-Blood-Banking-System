using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

public partial class DiffrentView : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DonorConnectionStringa"].ConnectionString);
    string rblood, rdate, dblood, ddate;
    int req, don;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack )
        {
            Label25.Visible = false;
            Label26.Visible = false;
            Label27.Visible = false;
            Label28.Visible = false;
            Label29.Visible = false;
            Label30.Visible = false;
            Label31.Visible = false;
        }
         if (!IsPostBack)
        {

            Label33.Visible = false;
            Label34.Visible = false;
            Label35.Visible = false;
            Label36.Visible = false;
            Label37.Visible = false;
            Label38.Visible = false;
            Label39.Visible = false;
            Label40.Visible = false;
        }
       
    }
   

    protected void Button1_Click1(object sender, EventArgs e)
    {
       
        if (DropDownList1.Text != "None")
        {
            try
            {
                dblood = DropDownList1.Text;

                conn.Open();
                string checkuser = "Select count(*) from DONATION where DBG='" + dblood + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                conn.Close();
               
                if (temp > 0)
                {

                    dblood = DropDownList1.Text;
                    conn.Open();
                    DataTable dt = new DataTable();
                    String myquery = "Select * from DONATION where DBG='" + dblood + "'";
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = conn;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    conn.Close();
                    GridView1.FooterRow.Cells[0].Text = "Total amount";
                    GridView1.FooterRow.Cells[4].Text = dt.Compute("Sum(DBU)", "").ToString();

                    Label5.Text = dt.Compute("Sum(DBU)", "").ToString();

                }
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
        else if (TextBox1.Text != null)
        {
            try
            {
                ddate = TextBox1.Text;
                conn.Open();
                string str = "Select * from DONATION where DD='" + ddate + "'";
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
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
        if (DropDownList2.Text != "None")
        {
            try
            {
                rblood = DropDownList2.Text;

                conn.Open();
                string checkuser = "Select count(*) from REQUEST where RBG='" + rblood + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                conn.Close();
                
                if (temp > 0)
                {


                    conn.Open();
                    DataTable dt = new DataTable();
                    String myquery = "Select * from REQUEST where RBG='" + rblood + "'";
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = conn;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    da.Fill(dt);
                    GridView2.DataSource = dt;
                    GridView2.DataBind();
                    conn.Close();
                    GridView2.FooterRow.Cells[0].Text = "Total amount";
                    GridView2.FooterRow.Cells[4].Text = dt.Compute("Sum(RBU)", "").ToString();



                    Label6.Text = dt.Compute("Sum(RBU)", "").ToString();


                }
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
        else if (TextBox2.Text != null)
        {
            try
            {
                rdate = TextBox2.Text;
                conn.Open();
                string str = "Select * from REQUEST where RD='" + rdate + "'";
                SqlDataAdapter sda = new SqlDataAdapter(str, conn);
                DataSet ds = new DataSet();
                sda.Fill(ds, "ser");
                GridView2.DataSource = ds.Tables["ser"];
                GridView2.DataBind();

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int a, b;
        if (int.TryParse(Label5.Text, out a) && int.TryParse(Label6.Text, out b))
        {
            don = int.Parse(Label5.Text);
            req = int.Parse(Label6.Text);

            if (rblood == dblood)
            {
                if (req > don)
                {
                    int need = req - don;
                    Label7.Text = "Total Amount of " + rblood + " Blood in Need is :-";
                    Label8.Text = need.ToString();
                }
                else if (don > req)
                {
                    int extra = don - req;
                    Label7.Text = "Total Amount of " + rblood + " Extra Blood is :-";
                    Label8.Text = extra.ToString();
                }
            }
            
        }
        else
        {
            Label7.Text = null;
            Label8.Text = null;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView1.SelectedRow;

        Label25.Visible = true;
        Label26.Visible = true;
        Label27.Visible = true;
        Label28.Visible = true;
        Label29.Visible = true;
        Label30.Visible = true;
        Label31.Visible = true;
            

        Label10.Text = gr.Cells[3].Text;
        Label9.Text = gr.Cells[7].Text;
        Label11.Text = gr.Cells[1].Text;
        Label15.Text = gr.Cells[2].Text;
        Label16.Text = gr.Cells[4].Text;

        Label17.Text = gr.Cells[5].Text;
        Label18.Text = gr.Cells[6].Text;



        
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView2.SelectedRow;

        Label33.Visible = true;
        Label34.Visible = true;
        Label35.Visible = true;
        Label36.Visible = true;
        Label37.Visible = true;
        Label38.Visible = true;
        Label39.Visible = true;
        Label40.Visible = true;

        Label14.Text = gr.Cells[3].Text;
        Label22.Text = gr.Cells[7].Text;
        Label12.Text = gr.Cells[1].Text;
        Label13.Text = gr.Cells[2].Text;
        Label19.Text = gr.Cells[4].Text;

        Label20.Text = gr.Cells[5].Text;
        Label21.Text = gr.Cells[6].Text;
        Label24.Text = gr.Cells[8].Text;
       
    }
 /*   protected void Button4_Click(object sender, EventArgs e)
    {
        
        conn.Open();
        string str = "update DONATION Set DBU='" + TextBox3.Text + "', DD='" + TextBox4.Text + "' where EmailAddress ='" + Label9.Text.Trim() + "' AND DBG='" + Label10.Text.Trim() + "'";
        SqlCommand cmd = new SqlCommand(str, conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        Button1_Click1(sender, e);
        GridView1_SelectedIndexChanged(sender, e);
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        conn.Open();
        string str = "update REQUEST Set RBU='" + TextBox5.Text + "', RD='" + TextBox6.Text + "',P='" + TextBox7.Text + "' where ID='" + Label12.Text.Trim() + "'";
        SqlCommand cmd = new SqlCommand(str, conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        Button2_Click(sender, e);
        GridView2_SelectedIndexChanged(sender, e);
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        conn.Open();
        string str = "delete from DONATION  where EmailAddress ='" + Label9.Text.Trim() + "' AND DBG='" + Label10.Text.Trim() + "'";
        SqlCommand cmd = new SqlCommand(str, conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        Button1_Click1(sender, e);
      //  GridView1_SelectedIndexChanged(sender, e);
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        conn.Open();
        string str = "delete from REQUEST  where ID='" + Label12.Text.Trim() + "'";
        SqlCommand cmd = new SqlCommand(str, conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        Button2_Click(sender, e);
       // GridView2_SelectedIndexChanged(sender, e);
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
  * */
    protected void Button4_Click(object sender, EventArgs e)
    {
        if(Label31.Visible == true)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("pratiksha942000@gmail.com", "6oct1999");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = TextBox3.Text;
            msg.Body = TextBox4.Text;
            string toaddress = Label9.Text;
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
             
        
            Response.Write("Your E-Mail Send Successfully");
        }
        
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        if (Label39.Visible == true)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("pratiksha942000@gmail.com", "6oct1999");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = TextBox3.Text;
            msg.Body = TextBox4.Text;
            string toaddress = Label22.Text;
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
             
        
            Response.Write("Your E-Mail Send Successfully");
        }
        
    }
}