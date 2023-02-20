<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DiffrentView.aspx.cs" Inherits="DiffrentView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 55%;
            height: 284px;
            margin-left: 338px;
        }
        .style2
        {
            width: 871px;
        }
        .style3
        {
            width: 52%;
            height: 187px;
            margin-left: 79px;
        }
        .style4
        {
            width: 259px;
        }
        .style5
        {
            height: 45px;
        }
        .style6
        {
            width: 259px;
            height: 45px;
        }
        .style7
        {
            width: 223px;
        }
        .style8
        {
            height: 45px;
            width: 223px;
        }
        .style9
        {
            width: 267px;
        }
        .style10
        {
            height: 45px;
            width: 267px;
        }
        .style11
        {
            width: 61%;
            height: 256px;
            margin-left: 217px;
        }
        .style16
        {
            width: 215px;
        }
        .style17
        {
            height: 26px;
            width: 215px;
        }
        .style22
        {
            width: 143px;
        }
        .style23
        {
            height: 26px;
            width: 143px;
        }
        .style25
        {
            height: 26px;
            width: 180px;
        }
        .style26
        {
            width: 180px;
        }
        .style27
        {
            width: 220px;
        }
        .style28
        {
            height: 26px;
            width: 220px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <table class="style1" >
            <tr>
                <td class="style9">
                    <asp:Label ID="Label2" runat="server" Text="Search Donation By BloodGroup"></asp:Label>
                </td>
                <td class="style7">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px">
                        <asp:ListItem>None</asp:ListItem>
                        <asp:ListItem Value="A+">Check Donation For A+</asp:ListItem>
                        <asp:ListItem Value="A-">Check Donation For A-</asp:ListItem>
                        <asp:ListItem Value="B+">Check Donation For B+</asp:ListItem>
                        <asp:ListItem Value="B-">Check Donation For B-</asp:ListItem>
                        <asp:ListItem Value="AB+">Check Donation For AB+</asp:ListItem>
                        <asp:ListItem Value="AB-">Check Donation For AB-</asp:ListItem>
                        <asp:ListItem Value="O+">Check Donation For O+</asp:ListItem>
                        <asp:ListItem Value="O-">Check Donation For O-</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    <asp:Label ID="Label3" runat="server" Text="Search Request By BloodGroup"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="16px">
                        <asp:ListItem>None</asp:ListItem>
                        <asp:ListItem Value="A+">Check Request For A+</asp:ListItem>
                        <asp:ListItem Value="A-">Check Request For A-</asp:ListItem>
                        <asp:ListItem Value="B+">Check Request For B+</asp:ListItem>
                        <asp:ListItem Value="B-">Check Request For B-</asp:ListItem>
                        <asp:ListItem Value="AB+">Check Request For AB+</asp:ListItem>
                        <asp:ListItem Value="AB-">Check Request For AB-</asp:ListItem>
                        <asp:ListItem Value="O+">Check Request For O+</asp:ListItem>
                        <asp:ListItem Value="O-">Check Request For O-</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="Label1" runat="server" Text="Search Donation By Date"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="TextBox1" runat="server" Height="38px" Width="172px"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:Label ID="Label4" runat="server" Text="Search Requst By Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="147px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    </td>
                <td class="style8">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                        Text="View Donation" Width="207px" Height="44px" />
                </td>
                <td class="style6">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="View Request" Width="208px" Height="44px" />
                &nbsp;</td>
                <td class="style5">
                    </td>
            </tr>
          
        </table>
        <br />
        <br />
        <br />
        <table class="style3">
            <tr>
                <td class="style2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        Height="265px" ShowFooter="True" Width="676px" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" 
                        AutoGenerateSelectButton="True">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" />
                            <asp:BoundField DataField="UN" HeaderText="UserName" />
                            <asp:BoundField DataField="DBG" HeaderText="Blood Group" />
                            <asp:BoundField DataField="DBU" HeaderText="Blood Unit" />
                            <asp:BoundField DataField="DD" HeaderText="Donation Date" />
                            <asp:BoundField DataField="MN" HeaderText="Mobile Number" />
                            <asp:BoundField DataField="EmailAddress" HeaderText="Email Address" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        Height="256px" ShowFooter="True" Width="566px" 
                        onselectedindexchanged="GridView2_SelectedIndexChanged" 
                        AutoGenerateSelectButton="True">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" />
                            <asp:BoundField DataField="UN" HeaderText="UserName" />
                            <asp:BoundField DataField="RBG" HeaderText="Blood Group" />
                            <asp:BoundField DataField="RBU" HeaderText="Blood Unit" />
                            <asp:BoundField DataField="RD" HeaderText="Request Date" />
                            <asp:BoundField DataField="MN" HeaderText="Mobile Number" />
                            <asp:BoundField DataField="EA" HeaderText="Email Address" />
                            <asp:BoundField DataField="P" HeaderText="Payment" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    &nbsp;</td>
            </tr>
             
        </table>
        <br />
        <br />
        <br/>
        <table class="style11">
            <tr>
                <td class="style22">
                    <asp:Label ID="Label25" runat="server" Text="Donor Id"></asp:Label>
                </td>
                <td class="style26">
                    <asp:Label ID="Label11" runat="server"></asp:Label>
                    </td>
                <td class="style16">
                    <asp:Label ID="Label33" runat="server" Text="Request ID"></asp:Label>
                </td>
                <td class="style27">
                    <asp:Label ID="Label12" runat="server"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="style22">
                    <asp:Label ID="Label26" runat="server" Text="Donor Name"></asp:Label>
                </td>
                <td class="style26">
                    <asp:Label ID="Label15" runat="server"></asp:Label>
                    </td>
                <td class="style16">
                    <asp:Label ID="Label34" runat="server" Text="Requester Name"></asp:Label>
                </td>
                <td class="style27">
                    <asp:Label ID="Label13" runat="server"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="style22">
                    <asp:Label ID="Label27" runat="server" Text="Donor Blood Group"></asp:Label>
                </td>
                <td class="style26">
                    <asp:Label ID="Label10" runat="server"></asp:Label>
                    </td>
                <td class="style16">
                    <asp:Label ID="Label35" runat="server" Text="Requested Blood Group"></asp:Label>
                </td>
                <td class="style27">
                    <asp:Label ID="Label14" runat="server"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="style22">
                    <asp:Label ID="Label28" runat="server" Text="Total Donation"></asp:Label>
                </td>
                <td class="style26">
                    <asp:Label ID="Label16" runat="server"></asp:Label>
                    </td>
                <td class="style16">
                    <asp:Label ID="Label36" runat="server" Text="Total Blood Requested"></asp:Label>
                </td>
                <td class="style27">
                    <asp:Label ID="Label19" runat="server"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="style22">
                    <asp:Label ID="Label29" runat="server" Text="Recent Donation Date"></asp:Label>
                </td>
                <td class="style26">
                    <asp:Label ID="Label17" runat="server"></asp:Label>
                    </td>
                <td class="style16">
                    <asp:Label ID="Label37" runat="server" Text="Requested Date"></asp:Label>
                </td>
                <td class="style27">
                    <asp:Label ID="Label20" runat="server"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="style23">
                    <asp:Label ID="Label30" runat="server" Text="Contact Number"></asp:Label>
                </td>
                <td class="style25">
                    <asp:Label ID="Label18" runat="server"></asp:Label>
                    </td>
                <td class="style17">
                    <asp:Label ID="Label38" runat="server" Text="Mobile Number"></asp:Label>
                </td>
                <td class="style28">
                    <asp:Label ID="Label21" runat="server"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="style22">
                    <asp:Label ID="Label31" runat="server" Text="Email Address"></asp:Label>
                </td>
                <td class="style26">
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                </td>
                <td class="style16">
                    <asp:Label ID="Label39" runat="server" Text="Email Address"></asp:Label>
                </td>
                <td class="style27">
                    <asp:Label ID="Label22" runat="server"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="style22">
                    &nbsp;</td>
                <td class="style26">
                    
                   
                    
                    &nbsp;</td>
                <td class="style16">
                    <asp:Label ID="Label40" runat="server" Text="Total Amount Payed"></asp:Label>
                </td>
                <td class="style27">
                    <asp:Label ID="Label24" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style22">
                    &nbsp;</td>
                <td class="style26">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style27">
                    &nbsp;</td>
            </tr>
           
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label41" runat="server" Text="Subject"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Height="49px" Width="221px"></asp:TextBox>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label42" runat="server" Text="Body Of  Email"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Height="60px" Width="221px"></asp:TextBox>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
            Text="Send Email To Donar" Height="44px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
            Text="Send Email To Reciever" Height="41px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="Calculate" Width="295px" Height="50px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server"></asp:Label>
        <asp:Label ID="Label8" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
