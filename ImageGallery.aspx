<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ImageGallery.aspx.cs" Inherits="ImageGallery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="300px" 
                        ImageUrl="~/images/IMG-20200106-WA0016.jpg" style="margin-bottom: 0px" 
                        Width="580px" />
                    <asp:ImageButton ID="ImageButton16" runat="server" Height="300px" 
                        ImageUrl="~/images/IMG-20200102-WA0019.jpg" Width="470px" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton7" runat="server" Height="300px" 
                        ImageUrl="~/images/IMG-20200106-WA0019.jpg" Width="580px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton4" runat="server" Height="300px" 
                        ImageUrl="~/images/IMG-20200106-WA0017.jpg" Width="580px" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton8" runat="server" Height="300px" 
                        ImageUrl="~/images/SAVE_20200113_183227.jpg" Width="580px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="300px" 
                        ImageUrl="~/images/SAVE_20200113_183214.jpg" Width="580px" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton9" runat="server" Height="300px" 
                        ImageUrl="~/images/IMG-20200106-WA0021.jpg" Width="580px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton6" runat="server" Height="300px" 
                        ImageUrl="~/images/IMG-20200106-WA0015.jpg" Width="580px" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton11" runat="server" Height="300px" 
                        ImageUrl="~/images/IMG-20200106-WA0011.jpg" Width="580px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton12" runat="server" Height="300px" 
                        ImageUrl="~/images/IMG-20200102-WA0015.jpg" Width="580px" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton13" runat="server" Height="300px" 
                        ImageUrl="~/images/IMG-20200102-WA0011.jpg" Width="580px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton17" runat="server" Height="333px" 
                        ImageUrl="~/images/IMG-20200106-WA0006.jpg" Width="580px" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton18" runat="server" Height="331px" 
                        ImageUrl="~/images/IMG-20200106-WA0020.jpg" Width="580px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton14" runat="server" Height="300px" 
                        ImageUrl="~/images/IMG-20200102-WA0017.jpg" Width="580px" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton15" runat="server" Height="300px" 
                        ImageUrl="~/images/IMG-20200106-WA0009.jpg" Width="580px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="300px" 
                        ImageUrl="~/images/donate.jpg" Width="580px" />
                </td>
                <td>
                    <asp:Image ID="Image2" runat="server" Height="300px" 
                        ImageUrl="~/images/IMG-20200102-WA0009.jpg" Width="590px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image3" runat="server" Height="300px" 
                        ImageUrl="~/images/IMG-20200102-WA0014.jpg" Width="590px" />
                </td>
                <td>
                    <asp:Image ID="Image4" runat="server" Height="300px" 
                        ImageUrl="~/images/IMG-20200102-WA0022.jpg" Width="600px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
