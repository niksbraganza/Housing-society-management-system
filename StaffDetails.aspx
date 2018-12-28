<%@ Page Language="VB" AutoEventWireup="false" CodeFile="StaffDetails.aspx.vb" Inherits="StaffDetails" %>

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
    <div>
   <div id="g_text3" style="position:absolute; overflow:hidden; left:175px; top:615px; width:990px; height:148px; z-index:0">
<div class="wpmd">
<div><font color="#C0C0C0" class="ws12">Website has been established to remove stress; it is the housing society software or rather online society maintenance software that takes care of the daily affairs of the society. In order to reduce the responsibilities of the society members we have developed&nbsp; cooperative society software in India. It also works as society accounting software ,&nbsp; apartment management software and many more that will help the society to carry on its daily affairs online. The people too can be tension free because the accounts of the society will be handled by a trust worthy accounting software which is computerised.</font></div>
<div><font color="#C0C0C0" class="ws12"><BR></font></div>
<div><font color="#C0C0C0" class="ws12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#808080" class="ws16"> Copyright 2016. All Rights Reserved. Designed &amp; Developed by Siddhesh &amp; Shubham</font></div>
</div></div>

<div id="g_text1" style="position:absolute; overflow:hidden; left:431px; top:7px; width:536px; height:49px; z-index:1">
<div class="wpmd">
<div><font color="#333333" face="Arial Narrow" class="ws26"><B>Housing Society Management System</B></font></div>
</div></div>

<div id="text1" style="position:absolute; overflow:hidden; left:574px; top:68px; width:203px; height:32px; z-index:2">
<div class="wpmd">
<div align=center><font color="#003366" face="Centaur" class="ws20"><B>Staff Details</B></font></div>
</div></div>

<div id="text2" 
            style="position:absolute; overflow:hidden; left:481px; top:164px; width:132px; height:28px; z-index:3">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Staff Name.:-</B></font></div>
</div></div>

<div id="text3" 
            style="position:absolute; overflow:hidden; left:470px; top:208px; width:148px; height:29px; z-index:4">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Staff Address:-</B></font></div>
</div></div>

 <asp:TextBox ID="tb_staffadd" runat="server" 
            style="position:absolute;width:203px; left:617px; top:206px; z-index:5; height: 62px;" 
            TextMode="MultiLine"></asp:TextBox> 

<div id="text4" 
            style="position:absolute; overflow:hidden; left:481px; top:364px; width:135px; height:29px; z-index:6">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Date of Join:-</B></font></div>
</div></div>
<asp:TextBox ID="tb_mobno" runat="server" 
            style="position:absolute;width:200px;left:620px;top:327px; z-index:7"></asp:TextBox> 
<div id="text5" 
            style="position:absolute; overflow:hidden; left:484px; top:326px; width:131px; height:29px; z-index:8">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Mobile No.:-</B></font></div>
</div></div>
       <asp:TextBox ID="tb_dateofjoin" runat="server" 
            style="position:absolute;width:200px;left:619px;top:367px; z-index:9" 
            ></asp:TextBox> 
<div id="text6" 
            style="position:absolute; overflow:hidden; left:482px; top:284px; width:137px; height:29px; z-index:10">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Designation:-</B></font></div>
</div></div>

 <asp:TextBox ID="tb_desig" runat="server" 
            style="position:absolute;width:202px;left:620px;top:287px; z-index:11"></asp:TextBox> 
&nbsp;<asp:ImageButton ID="Add" runat="server"
            
            style="position:absolute; overflow:hidden; left:549px; top:456px; width:72px; height:30px; z-index:13"
            ImageUrl="images/Add.png" />
 
 
 <asp:ImageButton ID="Update" runat="server"  
            style="position:absolute; overflow:hidden; left:670px; top:456px; width:102px; height:30px; z-index:11; right: 523px;"
            ImageUrl="images/Update.png" />
 
<div id="text7" 
            style="position:absolute; overflow:hidden; left:538px; top:401px; height:29px; z-index:6">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Salary:-</B></font></div>
</div></div>
       <asp:TextBox ID="tb_salary" runat="server" 
            style="position:absolute;width:200px;left:619px;top:404px;z-index:9" 
            ></asp:TextBox> 

 <asp:TextBox ID="tb_staffname" runat="server" 
            style="position:absolute;width:202px;left:618px;top:165px; z-index:5"></asp:TextBox> 

    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
