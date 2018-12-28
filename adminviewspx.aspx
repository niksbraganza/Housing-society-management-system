<%@ Page Language="VB" AutoEventWireup="false" CodeFile="adminviewspx.aspx.vb" Inherits="adminviewspx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView runat="server" ID="gv1" AutoGenerateColumns="False" 
            DataKeyNames="Bill_No" DataSourceID="SqlDataSource1" >
        <Columns>
            <asp:BoundField DataField="Bill_No" HeaderText="Bill_No" ReadOnly="True" 
                SortExpression="Bill_No" />
            <asp:BoundField DataField="Date_From" HeaderText="Date_From" 
                SortExpression="Date_From" />
            <asp:BoundField DataField="Date_To" HeaderText="Date_To" 
                SortExpression="Date_To" />
            <asp:BoundField DataField="Flat_No" HeaderText="Flat_No" 
                SortExpression="Flat_No" />
            <asp:BoundField DataField="Property_Tax" HeaderText="Property_Tax" 
                SortExpression="Property_Tax" />
            <asp:BoundField DataField="Rent" HeaderText="Rent" SortExpression="Rent" />
            <asp:BoundField DataField="Parking_Charges" HeaderText="Parking_Charges" 
                SortExpression="Parking_Charges" />
            <asp:BoundField DataField="Service_Charges" HeaderText="Service_Charges" 
                SortExpression="Service_Charges" />
            <asp:BoundField DataField="Repairing_Charges" HeaderText="Repairing_Charges" 
                SortExpression="Repairing_Charges" />
            <asp:BoundField DataField="Water_Charges" HeaderText="Water_Charges" 
                SortExpression="Water_Charges" />
            <asp:BoundField DataField="Paid_Unpaid" HeaderText="Paid_Unpaid" 
                SortExpression="Paid_Unpaid" />
            <asp:BoundField DataField="Other_Charges" HeaderText="Other_Charges" 
                SortExpression="Other_Charges" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
        </Columns>

    </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:HSMS %>" 
            SelectCommand="SELECT [Bill_No], [Date_From], [Date_To], [Flat_No], [Property_Tax], [Rent], [Parking_Charges], [Service_Charges], [Repairing_Charges], [Water_Charges], [Paid_Unpaid], [Other_Charges], [Total] FROM [Bill_Details] WHERE ([S_Id] = @S_Id)">
            <SelectParameters>
                <asp:SessionParameter Name="S_Id" SessionField="sid" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
