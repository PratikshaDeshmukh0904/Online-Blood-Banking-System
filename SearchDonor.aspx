<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchDonor.aspx.cs" Inherits="RequestBloodGroup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 1144px;
        }
        .style4
        {
            height: 35px;
        }
        .style5
        {
            width: 1144px;
            height: 35px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 885px">
    
                <br />
        <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label27" runat="server"></asp:Label>
                <br />
                &nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" Height="35px" Width="117px">
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>AB+</asp:ListItem>
            <asp:ListItem>AB-</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
        </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click1" 
                    Text="Search" Width="269px" Height="39px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView 
                    ID="GridView1" runat="server" AutoGenerateSelectButton="True" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" Width="1567px">
                </asp:GridView>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label16" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label17" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label18" runat="server"></asp:Label>
&nbsp;&nbsp;
                <asp:Label ID="Label19" runat="server"></asp:Label>
&nbsp;
                <asp:Label ID="Label20" runat="server"></asp:Label>
&nbsp;&nbsp;
                <asp:Label ID="Label21" runat="server"></asp:Label>
&nbsp;
                <asp:Label ID="Label22" runat="server"></asp:Label>
                <br />
                <table class="style2">
                    <tr>
                        <td>
                            <asp:Label ID="Label23" runat="server" Text="Email Id"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="221px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" 
                                ValidationGroup="s"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            <asp:Label ID="Label24" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td class="style5">
                            <asp:TextBox ID="TextBox3" runat="server" Height="31px" Width="221px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" 
                                ValidationGroup="s"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label25" runat="server" Text="Subject"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="TextBox4" runat="server" Height="51px" Width="1140px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" 
                                ValidationGroup="s"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label26" runat="server" Text="Body of Email"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="TextBox5" runat="server" Height="50px" Width="1317px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator" 
                                ValidationGroup="s"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Height="47px" onclick="Button3_Click" 
                    Text="Send Mail" ValidationGroup="s" Width="221px" />
                <br />
                <br />
                <br />
                <br />
                <br />
    
    </div>
    </form>
</body>
</html>
