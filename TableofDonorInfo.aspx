<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TableofDonorInfo.aspx.cs" Inherits="TableofDonorInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" 
            DataKeyNames="BloodGroup,EmailAddress" DataSourceID="SqlDataSource1" 
            Height="304px" Width="1550px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" 
                    SortExpression="Gender" />
                <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" ReadOnly="True" 
                    SortExpression="BloodGroup" />
                <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" 
                    ReadOnly="True" SortExpression="EmailAddress" />
                <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" 
                    SortExpression="MobileNumber" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="DateofBirth" HeaderText="DateofBirth" 
                    SortExpression="DateofBirth" />
                <asp:BoundField DataField="Password" HeaderText="Password" 
                    SortExpression="Password" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DonorConnectionStringa %>" 
            DeleteCommand="Delete from DonorInfo Where EmailAddress = @emailaddress" 
            InsertCommand="INSERT INTO DonorInfo(ID, Name, Gender, BloodGroup, EmailAddress, MobileNumber, City, Address, DateofBirth, Password) VALUES (@id, @name, @gender, @bloodgroup, @emailaddress, @mobilenumber, @city, @address, @dateofbirth, @password)" 
            SelectCommand="SELECT ID, Name, Gender, BloodGroup, EmailAddress, MobileNumber, City, Address, DateofBirth, Password FROM DonorInfo" 
            UpdateCommand="UPDATE DonorInfo SET Name = @name, Gender = @gender, BloodGroup = @bloodgroup, EmailAddress = @emailaddress, MobileNumber = @mobilenumber, City = @city, Address = @address, DateofBirth = @dateofbirth, Password = @password WHERE (EmailAddress = @emailaddress)">
            <DeleteParameters>
                <asp:Parameter Name="emailaddress" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" />
                <asp:Parameter Name="name" />
                <asp:Parameter Name="gender" />
                <asp:Parameter Name="bloodgroup" />
                <asp:Parameter Name="emailaddress" />
                <asp:Parameter Name="mobilenumber" />
                <asp:Parameter Name="city" />
                <asp:Parameter Name="address" />
                <asp:Parameter Name="dateofbirth" />
                <asp:Parameter Name="password" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" />
                <asp:Parameter Name="gender" />
                <asp:Parameter Name="bloodgroup" />
                <asp:Parameter Name="emailaddress" />
                <asp:Parameter Name="mobilenumber" />
                <asp:Parameter Name="city" />
                <asp:Parameter Name="address" />
                <asp:Parameter Name="dateofbirth" />
                <asp:Parameter Name="password" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <p>
&nbsp;&nbsp;
    </p>
    </form>
</body>
</html>
