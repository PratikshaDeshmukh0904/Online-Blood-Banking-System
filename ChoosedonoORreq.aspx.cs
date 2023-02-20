using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChoosedonoORreq : System.Web.UI.Page
{
    string email;
    protected void Page_Load(object sender, EventArgs e)
    {
        email = Session["New"] as String;
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Search"] = email;
        Response.Redirect("SearchDonor.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["Dono"] = email;
        Response.Redirect("checkdonor.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
     
        Session["edit"] = email;
        Response.Redirect("EditInfo.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["Req"] = email;
        Response.Redirect("RequestBlood.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Session["fed"] = email;
        Response.Redirect("FeedBack.aspx");
    }
}