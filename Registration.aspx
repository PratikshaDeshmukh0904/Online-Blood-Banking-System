<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Manager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <style type="text/css">
        .style1
        {
            width: 116%;
            height: 592px;
            margin-left: 130px;
        }
        .style3
        {
            font-size: xx-large;
            color: #800080;
        }
        .style4
        {
            height: 26px;
            width: 343px;
        }
        .style5
        {
            width: 343px;
        }
        .style8
        {
            height: 26px;
            width: 441px;
        }
        .style9
        {
            width: 441px;
        }
        .style10
        {
            height: 26px;
            width: 336px;
        }
        .style11
        {
            width: 336px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 1530px; height: 789px; background-image: url('images/SAVE_20200113_183237%20-%20Copy.jpg');">
    <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="Label13" runat="server" Font-Bold="True" Font-Size="XX-Large" Height="49px" 
            Text="Label" Width="156px"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
        <br /><br />
    <div style="border: thick groove #800080; width: 874px; height: 51px; margin-left: 450px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><span class="style3"><asp:Label 
            ID="Label11" runat="server" Text="Create Account"></asp:Label>
        </span></strong></div>
        <br />
        <div style="width: 790px; margin-left: 317px; height: 602px;">
        <table class="style1">
            <tr>
                <td class="style4" style="border: medium solid #C0C0C0">
                    <asp:Label ID="Label1" runat="server" Text="User Name" BackColor="#093145" 
                        BorderColor="#0066FF" BorderStyle="Solid" Font-Bold="True" Font-Overline="True" 
                        Font-Size="Large" Font-Strikeout="False" Font-Underline="True" 
                        ForeColor="White" Height="23px" Width="130px"></asp:Label>
                </td>
                <td class="style10" style="border: medium solid #C0C0C0">
                    <asp:TextBox ID="TextBoxDn" runat="server" Height="30px" Width="200px"></asp:TextBox>
                </td>
                <td class="style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBoxDn" ErrorMessage="Name is Required" 
                        ForeColor="#003366"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td style="border: medium solid #C0C0C0" class="style5">
                    <asp:Label ID="Label2" runat="server" Text="Gender" BackColor="#093145" 
                        BorderColor="#0066FF" BorderStyle="Solid" Font-Bold="True" Font-Overline="True" 
                        Font-Size="Large" Font-Strikeout="False" Font-Underline="True" 
                        ForeColor="White" Height="23px" Width="130px"></asp:Label>
                </td>
                <td style="border: medium solid #C0C0C0" class="style11">
                    <asp:RadioButtonList ID="RadioButtonListG" runat="server" Height="30px" 
                        Width="200px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="RadioButtonListG" ErrorMessage="Plz Select Gender" 
                        ForeColor="#003366"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="style4" style="border: medium solid #C0C0C0">
                    <asp:Label ID="Label9" runat="server" Text="Blood Group" BackColor="#093145" 
                        BorderColor="#0066FF" BorderStyle="Solid" Font-Bold="True" Font-Overline="True" 
                        Font-Size="Large" Font-Strikeout="False" Font-Underline="True" 
                        ForeColor="White"></asp:Label>
                </td>
                <td class="style10" style="border: medium solid #C0C0C0">
                    <asp:DropDownList ID="DropDownListBG" runat="server" Height="30px" 
                        Width="200px">
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="DropDownListBG" ErrorMessage="Blood Group is Required" 
                        ForeColor="#003366"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td style="border: medium solid #C0C0C0" class="style5">
                    <asp:Label ID="Label3" runat="server" Text="Email Address" BackColor="#093145" 
                        BorderColor="#0066FF" BorderStyle="Solid" Font-Bold="True" Font-Overline="True" 
                        Font-Size="Large" Font-Strikeout="False" Font-Underline="True" 
                        ForeColor="White" Height="23px" Width="164px" style="margin-bottom: 5px"></asp:Label>
                </td>
                <td style="border: medium solid #C0C0C0" class="style11">
                    <asp:TextBox ID="TextBoxEADD" runat="server" Height="30px" Width="200px"></asp:TextBox>
                </td>
                <td class="style9">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBoxEADD" ErrorMessage="Enter Valid Email ID" 
                        ForeColor="#003366" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="border: medium solid #C0C0C0" class="style5">
                    <asp:Label ID="Label4" runat="server" Text="Mobile Number " BackColor="#093145" 
                        BorderColor="#0066FF" BorderStyle="Solid" Font-Bold="True" Font-Overline="True" 
                        Font-Size="Large" Font-Strikeout="False" Font-Underline="True" 
                        ForeColor="White" Height="23px" Width="192px"></asp:Label>
                </td>
                <td style="border: medium solid #C0C0C0" class="style11">
                    <asp:TextBox ID="TextBoxMN" runat="server" Height="30px" Width="200px"></asp:TextBox>
                </td>
                <td class="style9">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="TextBoxMN" ErrorMessage="Enter Valid Number" ForeColor="#003366" 
                        ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="border: medium solid #C0C0C0" class="style5">
                    <asp:Label ID="Label5" runat="server" Text="City" BackColor="#093145" 
                        BorderColor="#0066FF" BorderStyle="Solid" Font-Bold="True" Font-Overline="True" 
                        Font-Size="Large" Font-Strikeout="False" Font-Underline="True" 
                        ForeColor="White" Height="23px" Width="130px"></asp:Label>
                </td>
                <td style="border: medium solid #C0C0C0" class="style11">
                    <asp:TextBox ID="TextBoxC" runat="server" Height="30px" Width="200px"></asp:TextBox>
                </td>
                <td class="style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBoxC" ErrorMessage="City is Required" 
                        ForeColor="#003366"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="border: medium solid #C0C0C0" class="style5">
                    <asp:Label ID="Label6" runat="server" Text="Address" BackColor="#093145" 
                        BorderColor="#0066FF" BorderStyle="Solid" Font-Bold="True" Font-Overline="True" 
                        Font-Size="Large" Font-Strikeout="False" Font-Underline="True" 
                        ForeColor="White" Height="23px" Width="130px"></asp:Label>
                </td>
                <td style="border: medium solid #C0C0C0" class="style11">
                    <asp:TextBox ID="TextBoxADD" runat="server" Height="30px" Width="200px"></asp:TextBox>
                </td>
                <td class="style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBoxADD" ErrorMessage="Address is Required" 
                        ForeColor="#003366"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="border: medium solid #C0C0C0" class="style5">
                    <asp:Label ID="Label7" runat="server" Text="Date Of Birth" BackColor="#093145" 
                        BorderColor="#0066FF" BorderStyle="Solid" Font-Bold="True" Font-Overline="True" 
                        Font-Size="Large" Font-Strikeout="False" Font-Underline="True" 
                        ForeColor="White" Height="23px" Width="171px"></asp:Label>
                </td>
                <td style="border: medium solid #C0C0C0" class="style11">
                    <asp:TextBox ID="TextBoxDOB" runat="server" Height="30px" 
                        Width="200px"></asp:TextBox>
                </td>
                <td class="style9">
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="TextBoxDOB" 
                        ErrorMessage="Your Age Is Not With The Donator Limit" MaximumValue="31-12-2002" 
                        MinimumValue="31-12-1960" Type="Date"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td style="border: medium solid #C0C0C0" class="style5">
                    <asp:Label ID="Label8" runat="server" Text="Password" BackColor="#093145" 
                        BorderColor="#0066FF" BorderStyle="Solid" Font-Bold="True" Font-Overline="True" 
                        Font-Size="Large" Font-Strikeout="False" Font-Underline="True" 
                        ForeColor="White" Height="23px" Width="130px"></asp:Label>
                </td>
                <td style="border: medium solid #C0C0C0" class="style11">
                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Height="30px" 
                        Width="200px"></asp:TextBox>
                </td>
                <td class="style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBoxPass" ErrorMessage="Enter Password " 
                        ForeColor="#003366"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="border: medium solid #C0C0C0" class="style5">
                    <asp:Label ID="Label10" runat="server" BackColor="#093145" 
                        BorderColor="#0066FF" BorderStyle="Solid" Font-Bold="True" Font-Overline="True" 
                        Font-Size="Large" Font-Strikeout="False" Font-Underline="True" 
                        ForeColor="White" Height="23px" Text="Confrim Password" Width="211px"></asp:Label>
                </td>
                <td style="border: medium solid #C0C0C0" class="style11">
                    <asp:TextBox ID="TextBoxConPass" runat="server" TextMode="Password" 
                        Height="30px" Width="200px"></asp:TextBox>
                </td>
                <td class="style9">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBoxPass" ControlToValidate="TextBoxConPass" 
                        ErrorMessage="Password not match" ForeColor="#003366"></asp:CompareValidator>
                </td>
            </tr>
            
            <tr>
                <td style="border: medium solid #C0C0C0" class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td style="border: medium solid #C0C0C0" class="style11">
                    
                    &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Create Account" Height="39px" Width="190px" />
                    
                </td>
                <td class="style9">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HomePage.aspx">HomePage</asp:HyperLink>
                   </td>
            </tr>
        </table>
        </div>
    </div>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
