using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ChangePassword : System.Web.UI.Page
{
    SqlConnection SQLConn = new SqlConnection(ConfigurationManager.ConnectionStrings["DonorConnectionStringa"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnchangepass_Click(object sender, EventArgs e)
    {
        SQLConn.Open();
        lblmsg.Text = "";
        
        SqlDataAdapter SQLAdaptera = new SqlDataAdapter("select EmailAddress from DonorInfo where EmailAddress='" + email.Text + "' ", SQLConn);
        DataTable DTa = new DataTable();
        SQLAdaptera.Fill(DTa);
        SqlDataAdapter SQLAdapter = new SqlDataAdapter("select Password from DonorInfo where Password='" + txtcurrentpass.Text + "' ", SQLConn);
        DataTable DT = new DataTable();
        SQLAdapter.Fill(DT);
        lblmsg.Text = "";
        if (DTa.Rows.Count == 0)
        {
            lblmsg.Text = "No email Exist with such a address";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
        else if (DT.Rows.Count == 0)
        {
            lblmsg.Text = "Invalid current password";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
             SQLAdapter = new SqlDataAdapter("update DonorInfo set Password='" + txtnewpass.Text + "' where Password = '" + txtcurrentpass.Text + "'", SQLConn);
                SQLAdapter.Fill(DT);
                lblmsg.Text = "Password changed successfully";
                lblmsg.ForeColor = System.Drawing.Color.Green;
        }
        SQLConn.Close();
     }
 }
