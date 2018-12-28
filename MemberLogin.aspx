<%@ Page Language="VB" AutoEventWireup="false" CodeFile="MemberLogin.aspx.vb" Inherits="MemberLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Housing Society Management System</title>
    <meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
<style type="text/css">
/*----------Text Styles----------*/
.ws6 {font-size: 8px;}
.ws7 {font-size: 9.3px;}
.ws8 {font-size: 11px;}
.ws9 {font-size: 12px;}
.ws10 {font-size: 13px;}
.ws11 {font-size: 15px;}
.ws12 {font-size: 16px;}
.ws14 {font-size: 19px;}
.ws16 {font-size: 21px;}
.ws18 {font-size: 24px;}
.ws20 {font-size: 27px;}
.ws22 {font-size: 29px;}
.ws24 {font-size: 32px;}
.ws26 {font-size: 35px;}
.ws28 {font-size: 37px;}
.ws36 {font-size: 48px;}
.ws48 {font-size: 64px;}
.ws72 {font-size: 96px;}
.wpmd {font-size: 13px;font-family: Arial,Helvetica,Sans-Serif;font-style: normal;font-weight: normal;}
/*----------Para Styles----------*/
DIV,UL,OL /* Left */
{
 margin-top: 0px;
 margin-bottom: 0px;
}
</style>


</head>
<body background="Images/demo.jpg">
    <div id="g_text1" style="position:absolute; overflow:hidden; left:431px; top:7px; width:536px; height:49px; z-index:1">
<div class="wpmd">
<div><font color="#333333" face="Arial Narrow" class="ws26"><B>Housing Society Management System</B></font></div>
</div></div> 
<div id="g_text3" style="position:absolute; overflow:hidden; left:175px; top:615px; width:990px; height:148px; z-index:0">
<div class="wpmd">
<div><font color="#C0C0C0" class="ws12">Website has been established to remove stress; it is the housing society software or rather online society maintenance software that takes care of the daily affairs of the society. In order to reduce the responsibilities of the society members we have developed&nbsp; cooperative society software in India. It also works as society accounting software ,&nbsp; apartment management software and many more that will help the society to carry on its daily affairs online. The people too can be tension free because the accounts of the society will be handled by a trust worthy accounting software which is computerised.</font></div>
<div><font color="#C0C0C0" class="ws12"><BR></font></div>
<div><font color="#C0C0C0" class="ws12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#808080" class="ws16"> Copyright 
    © 2016. All Rights Reserved. Designed &amp; Developed by Siddhesh &amp; Shubham</font></div>
</div></div>
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
        CellPadding="2" ForeColor="Black" GridLines="None" Height="164px" 
        style="margin-left: 460px; margin-top: 137px" Width="441px" 
        DataSourceID="SqlDataSource1" DataKeyNames="Flat_No" align="center">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="S_Id" HeaderText="S_Id" 
                SortExpression="S_Id" />
            <asp:BoundField DataField="Owner_Type" HeaderText="Owner_Type" 
                SortExpression="Owner_Type" />
            <asp:BoundField DataField="Owner_Name1" HeaderText="Owner_Name1" 
                SortExpression="Owner_Name1" />
            <asp:BoundField DataField="Owner_Name2" HeaderText="Owner_Name2" 
                SortExpression="Owner_Name2" />
            <asp:BoundField DataField="Flat_No" HeaderText="Flat_No" ReadOnly="True" 
                SortExpression="Flat_No" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="Pin" HeaderText="Pin" SortExpression="Pin" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Stilt_Parking" HeaderText="Stilt_Parking" 
                SortExpression="Stilt_Parking" />
            <asp:BoundField DataField="Open_Parking" HeaderText="Open_Parking" 
                SortExpression="Open_Parking" />
            <asp:BoundField DataField="Flat_Register_Date" HeaderText="Flat_Register_Date" 
                SortExpression="Flat_Register_Date" />
            <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
            <asp:BoundField DataField="Property_Type" HeaderText="Property_Type" 
                SortExpression="Property_Type" />
            <asp:BoundField DataField="Alt_Address" HeaderText="Alt_Address" 
                SortExpression="Alt_Address" />
            <asp:BoundField DataField="Alt_Pin" HeaderText="Alt_Pin" 
                SortExpression="Alt_Pin" />
            <asp:BoundField DataField="Alt_City" HeaderText="Alt_City" 
                SortExpression="Alt_City" />
            <asp:BoundField DataField="Mobile_No" HeaderText="Mobile_No" 
                SortExpression="Mobile_No" />
            <asp:BoundField DataField="Email_Id" HeaderText="Email_Id" 
                SortExpression="Email_Id" />
            <asp:BoundField DataField="Password" HeaderText="Password" 
                SortExpression="Password" />
       </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HSMS %>" 
        SelectCommand="SELECT * FROM [Flat_Register]"></asp:SqlDataSource>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <div id="text17" style="position:absolute; overflow:hidden; left:525px; top:62px; width:370px; height:32px; z-index:36">
<div class="wpmd">
<div align=center><font color="#003366" face="Centaur" class="ws20"><B>Member Login Details</B></font></div>
</div></div>
    </form>
     
</body>
</html>
