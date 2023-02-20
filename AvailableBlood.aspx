<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AvailableBlood.aspx.cs" Inherits="availableunit" %>

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
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Show" 
            Font-Bold="True" Height="50px" Width="114px" BackColor="#66FFFF" 
            ForeColor="Maroon" />
    
        <br />
    
      <br />  
      
      <table class="style1">
          <tr>
              <td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        AutoGenerateSelectButton="True" Height="181px" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="516px" BackColor="White" 
                      BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                      GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="Bloodgroup" HeaderText="Blood Group" />
            <asp:BoundField DataField="bloodunit" HeaderText="Blood Unit in ml" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
              </td>
              <td>
                  <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                      AutoGenerateSelectButton="True" Height="170px" 
                      onselectedindexchanged="GridView2_SelectedIndexChanged" Width="492px" 
                      BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                      CellPadding="3" GridLines="Horizontal">
                      <AlternatingRowStyle BackColor="#F7F7F7" />
                      <Columns>
                          <asp:BoundField DataField="Bloodgroup" HeaderText="Blood Group" />
                          <asp:BoundField DataField="bloodunit" HeaderText="Requsted Blood Unit" />
                      </Columns>
                      <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                      <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                      <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                      <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                      <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                      <SortedAscendingCellStyle BackColor="#F4F4FD" />
                      <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                      <SortedDescendingCellStyle BackColor="#D8D8F0" />
                      <SortedDescendingHeaderStyle BackColor="#3E3277" />
                  </asp:GridView>
              </td>
          </tr>
      </table>
      
      <br />
    <div style="height: 118px">
    
        <asp:Label ID="Label6" runat="server" Text="Not Selected"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Not Selected"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Not Selected"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Not Selected"></asp:Label>
    
        <br />
    
        <br />
    
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Height="45px" onclick="Button3_Click" 
            Text="Donate" Width="134px" BackColor="#FF0066" Font-Bold="True" 
            ForeColor="#000099" />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    &nbsp;<br />
    &nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
    <br />
    </form>
</body>
</html>
