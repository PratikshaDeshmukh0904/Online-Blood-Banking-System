using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ThnxDono : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label7.Text = DateTime.Now.ToString();

        Label1.Text = Session["name"] as String;
        Label2.Text = Session["RequestedBlood"] as String;
        Label3.Text = Session["amount"] as String;
        Label4.Text = Session["Date"] as String;
        Label5.Text = Session["contact"] as String;
        Label6.Text = Session["emailad"] as String;
        Label8.Text = Session["id"] as String;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      //  Session.Remove("name");
        Session.Remove("RequestedBlood");
        Session.Remove("amount");
        Session.Remove("Date");
      //  Session.Remove("contact");
       // Session.Remove("address");
        Response.Redirect("ChoosedonoORreq.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
         Session.Remove("name");
        Session.Remove("RequestedBlood");
        Session.Remove("amount");
        Session.Remove("Date");
        Session.Remove("contact");
        Session.Remove("address");
        Session.Remove("New");
        Session.Remove("Dono");
        Session.Remove("Req");
        Response.Redirect("HomePage.aspx");
    }
}