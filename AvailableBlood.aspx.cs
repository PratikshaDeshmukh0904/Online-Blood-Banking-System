using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using System.Data.SqlClient;
using System.Configuration;

public partial class availableunit : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DonorConnectionStringa"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
       

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView1.SelectedRow;
        Label6.Text = gr.Cells[1].Text;
        Label7.Text = gr.Cells[2].Text;
        
        
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {

        conn.Open();
        DataTable dt = new DataTable();
        String myquery = "Select * from TotalBloodRequest";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = conn;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(dt);
        GridView2.DataSource = dt;
        GridView2.DataBind();
        conn.Close();


        conn.Open();
        DataTable dta = new DataTable();
        String myquerya = "Select * from availableblooduni";
        SqlCommand cmda = new SqlCommand();
        cmda.CommandText = myquerya;
        cmda.Connection = conn;
        SqlDataAdapter daa = new SqlDataAdapter();
        daa.SelectCommand = cmda;
        daa.Fill(dta);
        GridView1.DataSource = dta;
        GridView1.DataBind();
        conn.Close();
       
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView2.SelectedRow;
        Label8.Text = gr.Cells[1].Text;
        Label9.Text = gr.Cells[2].Text;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
       
        if(Label7.Text != "Not Selected" && Label6.Text == Label8.Text && Label9.Text != "Not Selected")
        {
            int ss = int.Parse(Label7.Text);
            int pd = int.Parse(Label9.Text);

            if(ss >= pd)
            {
              
                int c =ss-pd;

                
                conn.Open();
                string insertQuerry = "update availableblooduni Set bloodunit='" + c + "' Where Bloodgroup='" + Label6.Text + "'";
                SqlCommand comaa = new SqlCommand(insertQuerry, conn);
                comaa.ExecuteNonQuery();
                conn.Close();


            }
            else if (ss < pd)
            {
                Response.Write("No Blood Available");
            }
           

        }
       
    }
}