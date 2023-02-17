<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLog.aspx.cs" Inherits="AdminLog" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 47%;
            margin-left: 121px;
        }
        .style2
        {
            height: 26px;
        }
        .style3
        {
            width: 492px;
        }
        .style4
        {
            height: 26px;
            width: 492px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <br/><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div><br/>
    <div style="background-color: #FFCCFF; height: 620px;">
     <br />
    
                    <asp:HyperLink ID="HyperLink12" runat="server">.</asp:HyperLink>
    <br />
    <br />
    <br />
       
        <table class="style1">
            <tr>
                <td class="style3">
                    <asp:Label ID="Label2" runat="server" Text="Number OF People Joinned Camp" 
                        Font-Bold="True"></asp:Label>
                </td>
                <td>
    <asp:HyperLink ID="HyperLink3" runat="server" 
        NavigateUrl="~/TableofDonorInfo.aspx">LogInfo</asp:HyperLink>
                    </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" Text="Edit Donate And Request " 
                        Font-Bold="True"></asp:Label>
                </td>
                <td>
    
                    <br />
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DiffrentView.aspx">View Request and Dontion</asp:HyperLink>
    
    
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label4" runat="server" Text="Check Blood Health:" 
                        Font-Bold="True"></asp:Label>
                </td>
                <td>
    
    
                    &nbsp;
                    <br />
    
    
                    <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/donorhealth.aspx">Donor health</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label5" runat="server" Text="Available Blood Unit:" 
                        Font-Bold="True"></asp:Label>
                </td>
                <td class="style2">
                    <br />
                    <asp:HyperLink ID="HyperLink14" runat="server" 
                        NavigateUrl="~/AvailableBlood.aspx">Available Blood Unit:</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr><td class="style3">
                &nbsp;</td><td>
                    &nbsp;</td></tr>
        </table>
       
    <br />
    <br />
    <br />
        </div>
        <br /><br /><br /><br /><br /><br /><br />
    </form>
</body>
</html>
