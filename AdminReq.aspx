<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminReq.aspx.vb" Inherits="AdminReq" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
<form id="form1" runat="server">
    <div id="g_text3" style="position:absolute; overflow:hidden; left:175px; top:615px; width:990px; height:148px; z-index:0">
<div class="wpmd">
<div><font color="#C0C0C0" class="ws12">Website has been established to remove stress; it is the housing society software or rather online society maintenance software that takes care of the daily affairs of the society. In order to reduce the responsibilities of the society members we have developed&nbsp; cooperative society software in India. It also works as society accounting software ,&nbsp; apartment management software and many more that will help the society to carry on its daily affairs online. The people too can be tension free because the accounts of the society will be handled by a trust worthy accounting software which is computerised.</font></div>
<div><font color="#C0C0C0" class="ws12"><BR></font></div>
<div><font color="#C0C0C0" class="ws12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#808080" class="ws16"> Copyright 
    © 2016. All Rights Reserved. Designed &amp; Developed by Siddhesh &amp; Shubham</font></div>
</div></div>

<div id="g_text1" style="position:absolute; overflow:hidden; left:431px; top:7px; width:536px; height:49px; z-index:1">
<div class="wpmd">
<div><font color="#333333" face="Arial Narrow" class="ws26"><B>Housing Society Management System</B></font></div>
</div></div>

&nbsp;<asp:ImageButton ID="Submit" runat="server"
        style="position:absolute; overflow:hidden; left:632px; top:481px; width:102px; height:30px; z-index:4"
Imageurl="images/Submit.png" />


<div id="text1" style="position:absolute; overflow:hidden; left:577px; top:68px; width:240px; height:32px; z-index:5">
<div class="wpmd">
<div align=center><font color="#003366" face="Centaur" class="ws20"><B>Request Permission</B></font></div>
</div></div>

<div id="text2" 
        
         
        
        
        
        
        
        style="position:absolute; overflow:hidden; left:495px; top:233px; width:103px; height:31px; z-index:3">
<div class="wpmd">
<div><B><font color="#4E4E4E" face="Centaur" class="ws18">Subject.:-</font></div>
</div></div>

<asp:TextBox ID="tb_reqid" runat="server" 
    style="position:absolute;width:200px;left:600px; top:156px; z-index:10" 
        Enabled="False"></asp:TextBox>
    <b>

<asp:TextBox ID="tb_flatid" runat="server" 
    style="position:absolute;width:200px;left:600px; top:196px; z-index:10" 
        Enabled="False"></asp:TextBox>


<div id="text3" 
        
         
        
        style="position:absolute; overflow:hidden; left:455px; top:153px; width:135px; height:31px; z-index:3">
<div class="wpmd">
<div><b><font color="#4E4E4E" face="Centaur" class="ws18">Request ID.:-</font></div>
</div></div>

    <b>

<div id="text5" 
        
         
        
        
        
        style="position:absolute; overflow:hidden; left:495px; top:193px; width:103px; height:31px; z-index:3">
<div class="wpmd">
<div><b><font color="#4E4E4E" face="Centaur" class="ws18">Flat No.:-</font></div>
</div></div>

    </b></b></b>

<asp:TextBox ID="tb_subject" runat="server" 
    style="position:absolute;width:200px;left:600px; top:239px; z-index:10" 
        Enabled="False"></asp:TextBox>

<div id="text6" 
        
         
        
        
        
        
        
        
        style="position:absolute; overflow:hidden; left:495px; top:273px; width:103px; height:31px; z-index:3">
<div class="wpmd">
<div><b><font color="#4E4E4E" face="Centaur" class="ws18">Status:-</font></div>
</div></div>

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server"  
        style="position:absolute;width:200px;left:890px; top:88px; z-index:10" 
        AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="R_Id" AutoGenerateSelectButton="true" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="R_Id" HeaderText="R_Id" ReadOnly="True" 
                SortExpression="R_Id" />
            <asp:BoundField DataField="Flat_No" HeaderText="Flat_No" 
                SortExpression="Flat_No" />
            <asp:BoundField DataField="Subject" HeaderText="Subject" 
                SortExpression="Subject" />
                <asp:BoundField DataField="matter" HeaderText="matter" 
                SortExpression="Subject" />

        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HSMS %>" 
        SelectCommand="SELECT [R_Id], [Flat_No], [Subject],[matter] FROM [Adminreq]">
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <asp:DropDownList ID="dd_status" runat="server" 
        style="position:absolute;width:200px;left:600px; top:274px; z-index:10">
        <asp:ListItem>Approvied</asp:ListItem>
        <asp:ListItem>Disapproved</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" 
        runat="server" Text="Label"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_matter" runat="server" Height="125px" TextMode="MultiLine" 
        Width="354px" Enabled="False">Matter:-</asp:TextBox>


</form> 

</body>
</html>
