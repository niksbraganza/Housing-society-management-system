<%@ Page Language="VB" AutoEventWireup="false" CodeFile="session.aspx.vb" Inherits="session" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server"></asp:Label>
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Value="Secretary">Secretary</asp:ListItem>
        <asp:ListItem Value="b"></asp:ListItem>
        
    </asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Admin_Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Admin_Id" HeaderText="Admin_Id" ReadOnly="True" 
                SortExpression="Admin_Id" />
            <asp:BoundField DataField="Admin_Name" HeaderText="Admin_Name" 
                SortExpression="Admin_Name" />
            <asp:BoundField DataField="S_Id" HeaderText="S_Id" SortExpression="S_Id" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HSMS %>" 
        SelectCommand="SELECT [Admin_Id], [Admin_Name], [S_Id] FROM [Admin_Registration] WHERE (([Admin_Id] = @Admin_Id) AND ([Password] = @Password) AND ([Designation] = @Designation))">
        <SelectParameters>
            <asp:Parameter DefaultValue="abc" Name="Admin_Id" Type="String" />
            <asp:Parameter DefaultValue="12345" Name="Password" Type="String" />
            <asp:ControlParameter ControlID="DropDownList1" Name="Designation" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label4" runat="server"></asp:Label>
    </form>
</body>
</html>
