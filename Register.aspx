<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="Register" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

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
<form id="form1" runat="server">
<body background="Images/demo.jpg">
<div id="g_text1" style="position:absolute; overflow:hidden; left:431px; top:7px; width:536px; height:49px; z-index:0">
<div class="wpmd">
<div><font color="#333333" face="Arial Narrow" class="ws26"><B>Housing Society Management System</B></font></div>
</div></div>

<div id="g_text3" style="position:absolute; overflow:hidden; left:175px; top:615px; width:990px; height:148px; z-index:1">
<div class="wpmd">
<div><font color="#C0C0C0" class="ws12">Website has been established to remove stress; it is the housing society software or rather online society maintenance software that takes care of the daily affairs of the society. In order to reduce the responsibilities of the society members we have developed&nbsp; cooperative society software in India. It also works as society accounting software ,&nbsp; apartment management software and many more that will help the society to carry on its daily affairs online. The people too can be tension free because the accounts of the society will be handled by a trust worthy accounting software which is computerised.</font></div>
<div><font color="#C0C0C0" class="ws12"><BR></font></div>
<div><font color="#C0C0C0" class="ws12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#808080" class="ws16"> Copyright 
    © 2016. All Rights Reserved. Designed &amp; Developed by Siddhesh &amp; Shubham</font></div>
</div></div>

<div id="g_image1" 
        style="position:absolute; overflow:hidden; left:965px; top:13px; width:87px; height:30px; z-index:2"><a href="Home.aspx" title="Home"><img src="images/Home.png" alt="" title="" border=0 width=87 height=30></a></div>





<div id="text1" style="position:absolute; overflow:hidden; left:546px; top:68px; width:303px; height:32px; z-index:3">
<div class="wpmd">
<div align=center><font color="#003366" face="Centaur" class="ws20"><B>Society Registration Form</B></font></div>
</div></div>

<div id="text2" style="position:absolute; overflow:hidden; left:491px; top:184px; width:123px; height:28px; z-index:4">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Society ID:-</B></font></div>
</div></div>

<div id="text3" style="position:absolute; overflow:hidden; left:462px; top:229px; width:150px; height:28px; z-index:5">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Society Name:-</B></font></div>
</div></div>

<div id="text4" style="position:absolute; overflow:hidden; left:437px; top:271px; width:173px; height:28px; z-index:6">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Society Address:-</B></font></div>
</div></div>

<div id="text5" 
        style="position:absolute; overflow:hidden; left:399px; top:373px; width:220px; height:28px; z-index:7">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Date of Registration:-</B></font></div>
</div></div>
 <asp:TextBox ID="TextBox1" runat="server" style="position:absolute;width:200px;left:619px;top:184px;z-index:8"></asp:TextBox>
 <asp:TextBox ID="TextBox3" runat="server" 
        style="position:absolute;width:200px;left:619px;top:376px; z-index:9" 
        TextMode="Date"></asp:TextBox> 
<asp:TextBox ID="TextBox2" runat="server" style="position:absolute;width:200px;left:619px;top:231px;z-index:10"></asp:TextBox> 
<asp:TextBox id="TextArea1" runat="server"  TextMode="MultiLine" style="position:absolute;left:619px;top:269px;width:200px;height:84px;z-index:11"></asp:TextBox>
 

 <asp:ImageButton ID="Add" runat="server" 
 style="position:absolute; overflow:hidden; left:632px; top:501px; width:112px; height:30px; z-index:12"
ImageUrl="images/Register.png" />
    <B>

<asp:TextBox ID="tb_password" runat="server" 
    
    
    
        style="position:absolute;width:122px; left:619px; top:416px; z-index:33; right: 549px;"></asp:TextBox><div id="text17" 
    
    
    
    
        style="position:absolute; overflow:hidden; left:398px; top:446px; height:30px; z-index:30">
<div class="wpmd">
<div>
    <p style="margin-left: 40px">
        <font color="#4E4E4E" face="Centaur" class="ws18"><b>Cofirm Password:-&nbsp; </font>
    </p>
    </div>
</div></div>

<font color="#4E4E4E" face="Centaur" class="ws18">

<asp:TextBox ID="tb_confirmpassword" runat="server" 
    
    
    
        style="position:absolute;width:122px; left:619px; top:447px; z-index:33; right: 556px;"></asp:TextBox></font>

    </b>
</form> 
<B><div id="text18" 
    
    
    
    
    style="position:absolute; overflow:hidden; left:458px; top:416px; width:154px; height:30px; z-index:30">
<div class="wpmd">
<div>
    <p style="margin-left: 40px; height: 26px;">
        <font color="#4E4E4E" face="Centaur" class="ws18"><b>Password:-&nbsp; </font>
    </p>
    </div>
</div></div>

    </b> 
</body>
</html>
