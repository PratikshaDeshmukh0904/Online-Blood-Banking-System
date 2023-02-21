<%@ Page Language="C#" AutoEventWireup="true" CodeFile="donorhealth.aspx.cs" Inherits="donorhealth" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="EmailAddress" DataSourceID="SqlDataSource1" Height="390px" 
            Width="1345px">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" 
                    SortExpression="UserName" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" 
                    SortExpression="Gender" />
                <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" 
                    ReadOnly="True" SortExpression="EmailAddress" />
                <asp:BoundField DataField="Haemoglobin" HeaderText="Haemoglobin" 
                    SortExpression="Haemoglobin" />
                <asp:BoundField DataField="Weight" HeaderText="Weight" 
                    SortExpression="Weight" />
                <asp:BoundField DataField="Height" HeaderText="Height" 
                    SortExpression="Height" />
                <asp:BoundField DataField="Pulse" HeaderText="Pulse" SortExpression="Pulse" />
                <asp:BoundField DataField="BloodPressureSystolic" 
                    HeaderText="BloodPressureSystolic" SortExpression="BloodPressureSystolic" />
                <asp:BoundField DataField="BloodPressureDiastolic" 
                    HeaderText="BloodPressureDiastolic" SortExpression="BloodPressureDiastolic" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="last4" HeaderText="last4" SortExpression="last4" />
                <asp:BoundField DataField="sleepwell" HeaderText="sleepwell" 
                    SortExpression="sleepwell" />
                <asp:BoundField DataField="aspirin" HeaderText="aspirin" 
                    SortExpression="aspirin" />
                <asp:BoundField DataField="medicine" HeaderText="medicine" 
                    SortExpression="medicine" />
                <asp:BoundField DataField="fever" HeaderText="fever" SortExpression="fever" />
                <asp:BoundField DataField="JorT" HeaderText="JorT" SortExpression="JorT" />
                <asp:BoundField DataField="Malaria" HeaderText="Malaria" 
                    SortExpression="Malaria" />
                <asp:BoundField DataField="closeJorT" HeaderText="closeJorT" 
                    SortExpression="closeJorT" />
                <asp:BoundField DataField="NightSweats" HeaderText="NightSweats" 
                    SortExpression="NightSweats" />
                <asp:BoundField DataField="Surgery" HeaderText="Surgery" 
                    SortExpression="Surgery" />
                <asp:BoundField DataField="Transfusion" HeaderText="Transfusion" 
                    SortExpression="Transfusion" />
                <asp:BoundField DataField="Rabies" HeaderText="Rabies" 
                    SortExpression="Rabies" />
                <asp:BoundField DataField="Immunoglobulins" HeaderText="Immunoglobulins" 
                    SortExpression="Immunoglobulins" />
                <asp:BoundField DataField="Convusions" HeaderText="Convusions" 
                    SortExpression="Convusions" />
                <asp:BoundField DataField="Tattoo" HeaderText="Tattoo" 
                    SortExpression="Tattoo" />
                <asp:BoundField DataField="Immunization" HeaderText="Immunization" 
                    SortExpression="Immunization" />
                <asp:BoundField DataField="Alcohol" HeaderText="Alcohol" 
                    SortExpression="Alcohol" />
                <asp:BoundField DataField="Suffer" HeaderText="Suffer" 
                    SortExpression="Suffer" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DonorConnectionStringa %>" 
            SelectCommand="SELECT * FROM [DonorCurrentState]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
