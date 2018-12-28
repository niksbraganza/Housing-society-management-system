<%@ Page Language="VB" AutoEventWireup="false" CodeFile="FlatRegister.aspx.vb" Inherits="FlatRegister" %>

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
    #form1
    {
        width: 1185px;
        height: 480px;
    }
</style>


</head>

<body background="Images/demo.jpg">

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

<div id="g_image1" style="position:absolute; overflow:hidden; left:1009px; top:13px; width:87px; height:30px; z-index:2"><a href="AdminLogin.aspx" title="Home"><img src="images/Home.png" alt="" title="" border=0 width=87 height=30></a></div>

<div id="text1" 
        
         style="position:absolute; overflow:hidden; left:532px; top:83px; width:108px; height:31px; z-index:3">
<div class="wpmd">
<div><B><font color="#4E4E4E" face="Centaur" class="ws18">Flat No.:-</font></div>
</div></div>

<div id="text2" 
        
        style="position:absolute; overflow:hidden; left:226px; top:160px; width:159px; height:31px; z-index:4">
<div class="wpmd">
<div><B><font color="#4E4E4E" face="Centaur" class="ws18">Owner Name1:-</font></div>
</div></div>

<div id="text3" 
        
        style="position:absolute; overflow:hidden; left:227px; top:202px; width:160px; height:31px; z-index:5">
<div class="wpmd">
<div><B><font color="#4E4E4E" face="Centaur" class="ws18">Owner Name2:-</font></div>
</div></div>

<div id="text4" 
        style="position:absolute; overflow:hidden; left:273px; top:246px; width:97px; height:31px; z-index:6">
<div class="wpmd">
<div><B><font color="#4E4E4E" face="Centaur" class="ws18">Address:-</font></div>
</div></div>

<div id="text5" 
        
        
        style="position:absolute; overflow:hidden; left:318px; top:315px; width:49px; height:26px; z-index:7">
<div class="wpmd">
<div><B><font color="#4E4E4E" face="Centaur" class="ws18">Pin:-</font></div>
</div></div>
 
<div id="text6" 
        
        
        style="position:absolute; overflow:hidden; left:310px; top:359px; width:56px; height:25px; z-index:9; right: 929px;">
<div class="wpmd">
<div><B><font color="#4E4E4E" face="Centaur" class="ws18">City:-</font></div>
</div></div>
<form id="form1" runat="server">
<asp:TextBox ID="tb_ownername1" runat="server" 
    style="position:absolute;width:200px;left:395px;top:161px; z-index:10"></asp:TextBox>
<asp:TextBox ID="tb_ownername2" runat="server" 
    style="position:absolute;width:200px;left:395px;top:205px; z-index:11"></asp:TextBox>
<asp:TextBox ID="tb_pin" runat="server" 
    style="position:absolute;width:123px;left:395px;top:321px; z-index:12"></asp:TextBox>
   
    <asp:TextBox ID="tb_city" runat="server" 
    style="position:absolute;width:123px;left:395px;top:359px; z-index:12"></asp:TextBox>




&nbsp;<div id="text7" 
    
    style="position:absolute; overflow:hidden; left:721px; top:125px; width:197px; height:31px; z-index:15">
<div class="wpmd">
<div><B><font color="#4E4E4E" face="Centaur" class="ws18">Flat Register Date:-</font></div>
</div></div>

<div id="text8" 
    
    style="position:absolute; overflow:hidden; left:776px; top:169px; width:138px; height:31px; z-index:16">
<div class="wpmd">
<div><B><font color="#4E4E4E" face="Centaur" class="ws18">Area in SFT:-</font></div>
</div></div>

<div id="text9" 
    
    style="position:absolute; overflow:hidden; left:757px; top:207px; width:160px; height:31px; z-index:17">
<div class="wpmd">
<div><B><font color="#4E4E4E" face="Centaur" class="ws18">Property Type:-</font></div>
</div></div>

<div id="text10" 
    
    style="position:absolute; overflow:hidden; left:731px; top:250px; width:193px; height:31px; z-index:18; right: 371px;">
<div class="wpmd">
<div><B><font color="#4E4E4E" face="Centaur" class="ws18">Alternate Address:-</font></div>
</div></div>

<div id="text11" 
    
    style="position:absolute; overflow:hidden; left:874px; top:325px; width:49px; height:26px; z-index:19">
<div class="wpmd">
<div><B><font color="#4E4E4E" face="Centaur" class="ws18">Pin:-</font></div>
</div></div>

<div id="text12" 
    
    style="position:absolute; overflow:hidden; left:870px; top:364px; width:56px; height:25px; z-index:20">
<div class="wpmd">
<div><B><font color="#4E4E4E" face="Centaur" class="ws18">City:-</font></div>
</div></div>

<asp:TextBox ID="tb_altpin" runat="server" type="text" 
    style="position:absolute;width:123px;left:935px; top:328px; z-index:21"></asp:TextBox>
<asp:TextBox ID="tb_altcity" runat="server" type="text" 
    style="position:absolute;width:123px;left:935px; top:365px; z-index:22"></asp:TextBox>
<br />
<br />

<div id="text18" 
        
    style="position:absolute; overflow:hidden; left:237px; top:118px; width:150px; height:31px; z-index:3">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18">Owner Type:-</font></div>
</div></div>

<asp:TextBox ID="tb_flatno" runat="server" 
    style="position:absolute;width:200px;left:650px; top:86px; z-index:10"></asp:TextBox>
<br />
<br />
<br />
<asp:DropDownList ID="dl_proptype" runat="server" 
    style="position:absolute;left:935px; top:210px;width:200px;z-index:25">

 <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem Value="Residential">Residential</asp:ListItem>
            <asp:ListItem value="Commertial">Commertial</asp:ListItem>
              </asp:DropDownList>
 
<br />
<br />
<br />
<br />
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="tb_address" runat="server" Height="64px" 
    style="margin-left: 0px" TextMode="MultiLine" Width="204px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="tb_altaddress" runat="server" Height="64px" 
    style="margin-left: 0px" TextMode="MultiLine" Width="200px"></asp:TextBox>
&nbsp;<asp:TextBox ID="tb_area" runat="server" 
    style="position:absolute;width:200px;left:935px; top:169px;z-index:24"></asp:TextBox>
<asp:DropDownList ID="dl_ownertype" runat="server" 
    style="position:absolute;left:394px; top:121px; width:200px;z-index:25">

 <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem>Owner</asp:ListItem>
            <asp:ListItem >Rent</asp:ListItem>
              </asp:DropDownList>
 
<asp:TextBox ID="tb_flatregdate" runat="server" 
    style="position:absolute;width:200px;left:935px; top:126px;z-index:26" 
    TextMode="DateTime" ></asp:TextBox>

 <asp:ImageButton ID="Register" runat="server" 
    style="position:absolute; overflow:hidden; left:591px; top:512px; width:112px; z-index:27; right: 428px;"
ImageUrl="images/Register.png" />
</div>

<div id="text13" 
    
    
    
    
    style="position:absolute; overflow:hidden; left:238px; top:399px; width:141px; height:30px; z-index:28; right: 916px;">
<div class="wpmd">
<div><B><font color="#4E4E4E" face="Centaur" class="ws18">Stilt Parking:-</font></div>
</div></div>

<asp:TextBox ID="tb_stiltparking" runat="server" 
    style="position:absolute;width:123px;left:395px;top:402px; z-index:29"></asp:TextBox>
<div id="text14" 
    
    
    
    
    style="position:absolute; overflow:hidden; left:216px; top:435px; width:154px; height:30px; z-index:30">
<div class="wpmd">
<div>
    <p style="margin-left: 9px; width: 209px;">
        <font color="#4E4E4E" face="Centaur" class="ws18"><B>Open Parking:-&nbsp; </B></font>
    </p>
    </div>
</div></div>

<div id="text15" 
    
    
    
    style="position:absolute; overflow:hidden; left:856px; top:435px; width:73px; height:30px; z-index:31; right: 366px;">
<div class="wpmd">
<div><B><font color="#4E4E4E" face="Centaur" class="ws18">Email:-</font></div>
</div></div>

<div id="text16" 
    
    
    
    
    
    style="position:absolute; overflow:hidden; left:745px; top:405px; width:185px; height:30px; z-index:32">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Mobile&nbsp; Number:-</B></font></div>
</div></div>

<asp:TextBox ID="tb_password" runat="server" 
    
    
    style="position:absolute;width:122px; left:394px; top:476px; z-index:33; right: 775px;"></asp:TextBox>&nbsp;
<asp:TextBox ID="tb_mobno" runat="server" type="text" 
        
    style="position:absolute;width:159px; left:935px; top:406px; z-index:35"></asp:TextBox>
    <br />
<br />
<br />
<br />
<br />
<br />
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div id="text17" 
    
    
    
    style="position:absolute; overflow:hidden; left:228px; top:476px; width:154px; height:30px; z-index:30">
<div class="wpmd">
<div>
    <p style="margin-left: 40px">
        <font color="#4E4E4E" face="Centaur" class="ws18"><b>Password:-&nbsp; </font>
    </p>
    </div>
</div></div>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
    ID="tb_openparking" runat="server" 
    style="position:absolute;width:123px;left:395px;top:438px; z-index:33"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </b></b></b></b></b></b></b></b>
 <B>
<font color="#4E4E4E" face="Centaur" class="ws18">

<asp:TextBox ID="tb_emailid" runat="server" 
    
    
    style="position:absolute;width:234px; left:936px; top:436px; z-index:33; right: 121px;"></asp:TextBox>

<asp:TextBox ID="tb_confirmpassword" runat="server" 
    
    
    style="position:absolute;width:122px; left:937px; top:467px; z-index:33; right: 232px;"></asp:TextBox></font>

</b>
 <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B><font color="#4E4E4E" face="Centaur" class="ws18">Confirm Password:-</font></b></form>
     </b></b></b></b></b></b>


</body>
</html>
