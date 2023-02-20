<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 26px;
        }
        .style2
        {
            width: 180px;
        }
        .style3
        {
            width: 297px;
        }
        .style4
        {
            height: 29px;
            width: 256px;
        }
        .style5
        {
            height: 32px;
            width: 282px;
        }
        .style6
        {
            height: 38px;
            width: 282px;
        }
        .style7
        {
            height: 73px;
        }
        .style8
        {
            height: 57px;
            width: 256px;
        }
        .style9
        {
            width: 297px;
            height: 57px;
        }
        .style10
        {
            height: 57px;
            width: 282px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div style="height: 730px; width: 1530px; background-image: url('images/d.jpg');">
    <br/>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br/><br/><br/>
        <table align="center" class="style1" style="border: thin solid #008080">
            <tr>
                <td colspan="3" 
                    style="border-bottom: thin solid #008080; font-weight: 700; text-align: center;">
                    Change Password Form</td>
            </tr>
            <tr>
                <td class="style5">
                    <strong>
                    <asp:Label ID="Label4" runat="server" BorderColor="#FF33CC" BorderStyle="Solid" 
                        Font-Bold="True" Font-Size="Large" ForeColor="#66FFFF" Height="34px" 
                        Text="Email Address :"></asp:Label>
                    </strong>
                </td>
                <td class="style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="email" runat="server" Height="34px" Width="188px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="email" ErrorMessage="!!" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp; <strong>
                    <br />
                    <asp:Label ID="Label2" runat="server" BorderColor="#FF33CC" BorderStyle="Solid" 
                        Font-Bold="True" Font-Size="Large" ForeColor="#66FFFF" Height="34px" 
                        Text="Enter Current Password:"></asp:Label>
                    <br />
                    </strong>
                </td>
                <td class="style8">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtcurrentpass" runat="server" Width="177px" Height="32px"></asp:TextBox>
                </td>
                <td class="style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtcurrentpass" ErrorMessage="!!" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <br />
                    <asp:Label ID="Label1" runat="server" BorderColor="Fuchsia" BorderStyle="Solid" 
                        Font-Bold="True" Font-Size="Large" ForeColor="#66FFFF" Height="33px" 
                        Text="Enter New Password:" Width="291px"></asp:Label>
                    <br />
                </td>
                <td class="style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtnewpass" runat="server" TextMode="Password" Width="186px" 
                        Height="27px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtnewpass" ErrorMessage="!!" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <br />
                    <asp:Label ID="Label3" runat="server" BorderColor="Fuchsia" BorderStyle="Solid" 
                        Font-Bold="True" Font-Size="Large" ForeColor="#66FFFF" Height="35px" 
                        Text="Confirm Password:" Width="279px"></asp:Label>
                    <br />
                </td>
                <td class="style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtconfirmpass" runat="server" TextMode="Password" 
                        Width="195px" Height="35px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtconfirmpass" ErrorMessage="!!" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtnewpass" ControlToValidate="txtconfirmpass" 
                        ErrorMessage="password not same !!" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="btnchangepass" runat="server" onclick="btnchangepass_Click" 
                        Text="Change Password" />
                </td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style2" colspan="2">
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3" class="style7">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Go to Login page</asp:HyperLink>
                </td>
            </tr>
        </table>
    </div>
   
    
    </form>
    
</body>
</html>
