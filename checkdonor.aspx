<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checkdonor.aspx.cs" Inherits="checkdonor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 36%;
            height: 317px;
            margin-left: 327px;
        }
        .style2
        {
            height: 26px;
        }
        .style3
        {
            height: 58px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 2025px; background-color: #99FF66;">
    
        <br />
        <br />
        <br />
        <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Hymoglobin" Font-Bold="True"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server" Height="40px"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td class="style2">
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Weight" Font-Bold="True"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox2" runat="server" Height="50px"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td class="style2">
                    <asp:RangeValidator ID="RangeValidator2" runat="server" 
                        ErrorMessage="Enter valid weight" ControlToValidate="TextBox2" 
                        MaximumValue="175.0" Type="Double" MinimumValue="50.0" ValidationGroup="s"></asp:RangeValidator>
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Height" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="50px"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator3" runat="server" 
                        ErrorMessage="Enter valid height" ControlToValidate="TextBox3" 
                        MinimumValue="147.32" Type="Double" MaximumValue="300.00" 
                        ValidationGroup="s"></asp:RangeValidator>
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Blood Presure (systolic)" 
                        Font-Bold="True"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label27" runat="server" Text="Blood Presure (diastolic)" 
                        Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="50px"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox7" runat="server" Height="50px"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator4" runat="server" 
                        ErrorMessage="Cant donate" ControlToValidate="TextBox4" MaximumValue="180" 
                        MinimumValue="100" Type="Integer" ValidationGroup="s"></asp:RangeValidator>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:RangeValidator ID="RangeValidator7" runat="server" 
                        ErrorMessage="Cant donate" ControlToValidate="TextBox7" MaximumValue="100" 
                        MinimumValue="50" Type="Integer" ValidationGroup="s"></asp:RangeValidator>
                </td>
               
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Bold="True">Age</asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label24" runat="server" Text="Pulse" Font-Bold="True"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="50px"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox6" runat="server" Height="50px"></asp:TextBox>
                    <br />
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator5" runat="server" 
                        ErrorMessage="Enter Valid Age" ControlToValidate="TextBox5" 
                        MaximumValue="50" MinimumValue="18" Type="Integer" ValidationGroup="s"></asp:RangeValidator>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:RangeValidator ID="RangeValidator6" runat="server" 
                        ErrorMessage="Enter valid pulse" ControlToValidate="TextBox6" 
                        MaximumValue="90" MinimumValue="70" Type="Integer" ValidationGroup="s"></asp:RangeValidator>
                </td>
               
            </tr>
        </table>
    
        <br />
    <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label23" runat="server" Text="Questionnarie" Font-Bold="True" 
            Font-Size="Large" ForeColor="Maroon"></asp:Label>
        </div>
        <br />
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" 
                        Text="Have you eaten anything in the last 4 hours ?"></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" Width="62px">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Have you slept will last night ?"></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" 
                        Text="Have you taken aspirin in last 3 day ?"></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList3" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" 
                        Text="Have you taken any medicine in last 7 days ?"></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList4" runat="server" Height="54px">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" 
                        Text="Are you suffering from fever, common cold or any viral Infection ?"></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList5" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label11" runat="server" 
                        Text="Have you suffered from jaundice or Typhoid in last 12 Months ?"></asp:Label>
                </td>
                <td class="style3">
                    <asp:CheckBoxList ID="CheckBoxList6" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" 
                        Text="Have you suffered from Malaria in last 3 months ?"></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList7" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" 
                        Text="Has any of your family member/close contact suffered from jaundice in last 12 months?"></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList8" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label14" runat="server" 
                        Text="in ast 6 months have you had  -Night Sweats-Unexplained weight loss-Persistentfever-Prolonged Diarrhea"></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList9" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label15" runat="server" 
                        Text="Have you undergone any major surgery in last 12 months ?"></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList10" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label16" runat="server" 
                        Text="Have you taken Blood transfusion in last 6 months?"></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList11" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label17" runat="server" 
                        Text="Is there any h/o dog bite and h/o rabies vaccination within a year ? "></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList12" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label18" runat="server" 
                        Text="have you taken immunoglobullins in last 12 months ?"></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList13" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label19" runat="server" Text="Do you suffer from convulsiona ?"></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList14" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label20" runat="server" 
                        Text="Did you have a tattoo, acupuncture or ear piercing in last 6 months ?"></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList15" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label21" runat="server" 
                        Text="Have you take immunization in last 5 days for Cholera, Typhoid , Diphtheria , plague, Tetanus, or gamme globulin"></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList16" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList17" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label22" runat="server" 
                        Text="Are you suffering from any of the following ?..If yes , Choose appropriate one "></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <asp:ListBox ID="ListBox1" runat="server">
                        <asp:ListItem>None</asp:ListItem>
                        <asp:ListItem>Epilepay</asp:ListItem>
                        <asp:ListItem>Live Disease</asp:ListItem>
                        <asp:ListItem>Bleeding Tendency</asp:ListItem>
                        <asp:ListItem>Unexplained wt.loss</asp:ListItem>
                        <asp:ListItem>Polycytheme varce</asp:ListItem>
                        <asp:ListItem>Diabetes (on insulin)</asp:ListItem>
                        <asp:ListItem>Chronic Nephritis</asp:ListItem>
                        <asp:ListItem>Heart Disease</asp:ListItem>
                        <asp:ListItem>Leprosy</asp:ListItem>
                        <asp:ListItem>Pschizophrenis</asp:ListItem>
                        <asp:ListItem>Asthma</asp:ListItem>
                        <asp:ListItem>Endocrine Disorder</asp:ListItem>
                        <asp:ListItem>Cancer</asp:ListItem>
                    </asp:ListBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                        ErrorMessage="You are not eligible for donating blood" ValidationGroup="s" 
                        ControlToValidate="ListBox1"></asp:RequiredFieldValidator>
                </td>
            </tr>
           

        </table>
    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
                    <asp:Button ID="Button1" runat="server" Height="50px" Text="Submit" 
                        Width="162px" onclick="Button1_Click" ValidationGroup="s" 
            Font-Bold="True" Font-Size="X-Large" ForeColor="Red" />
    
    </div>
    </form>
</body>
</html>
