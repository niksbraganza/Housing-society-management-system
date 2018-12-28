<%@ Page Language="VB" AutoEventWireup="false" CodeFile="BillDetails.aspx.vb" Inherits="BillDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
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

<div id="text3" 
            style="position:absolute; overflow:hidden; left:514px; top:144px; width:98px; height:28px; z-index:2">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Bill No.:-</B></font></div>
</div></div>

<div id="text5" 
            style="position:absolute; overflow:hidden; left:394px; top:223px; width:107px; height:29px; z-index:3">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Bill Date:-</B></font></div>
</div></div>

<div id="text4" 
            style="position:absolute; overflow:hidden; left:509px; top:175px; width:99px; height:29px; z-index:4">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Flat No.:-</B></font></div>
</div></div>

<div id="text6" 
            style="position:absolute; overflow:hidden; left:811px; top:344px; width:161px; height:29px; z-index:5">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Water Charges:-</B></font></div>
</div></div>

<div id="text7" style="position:absolute; overflow:hidden; left:617px; top:68px; width:120px; height:32px; z-index:6">
<div class="wpmd">
<div align=center><font color="#003366" face="Centaur" class="ws20"><B>Bill Details</B></font></div>
</div></div>

<div id="text8" 
            style="position:absolute; overflow:hidden; left:176px; top:385px; width:180px; height:29px; z-index:7">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Parking Charges:-</B></font></div>
</div></div>

<div id="text9" 
            style="position:absolute; overflow:hidden; left:181px; top:423px; width:180px; height:29px; z-index:8">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Service Charges:-</B></font></div>
</div></div>

<div id="text10" 
            style="position:absolute; overflow:hidden; left:577px; top:447px; width:74px; height:29px; z-index:9">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Total:-</B></font></div>
</div></div>


 <asp:TextBox ID="tb_billno" runat="server" 
            style="position:absolute;width:202px;left:618px;top:146px; z-index:10" 
            Enabled="False"></asp:TextBox> 
 <asp:TextBox ID="tb_datefrom" runat="server" 
            style="position:absolute;width:202px;left:508px; top:226px;z-index:11; right: 421px;" 
            TextMode="Date"></asp:TextBox> 

 <asp:TextBox ID="tb_flatno" runat="server" 
            style="position:absolute;width:202px;left:618px;top:178px; z-index:12"></asp:TextBox> 

 <asp:TextBox ID="tb_proptax" runat="server" 
            style="position:absolute;width:200px;left:364px;top:304px;z-index:13"></asp:TextBox> 

 <asp:TextBox ID="tb_rent" runat="server" 
            style="position:absolute;width:200px;left:364px;top:346px;z-index:14"></asp:TextBox> 

 <asp:TextBox ID="tb_parkingcharg" runat="server" 
            style="position:absolute;width:200px;left:364px;top:387px;z-index:15"></asp:TextBox> 

 <asp:TextBox ID="tb_total" runat="server" 
            style="position:absolute;width:111px;left:652px;top:449px; z-index:16"></asp:TextBox> 
<div id="text1" 
            style="position:absolute; overflow:hidden; left:773px; top:306px; width:205px; height:29px; z-index:17">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Repairing Charges:-</B></font></div>
</div></div>

<div id="text11" 
            style="position:absolute; overflow:hidden; left:818px; top:420px; width:166px; height:32px; z-index:18">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Other Charges:-</B></font></div>
</div></div>

<div id="text12" 
            
            style="position:absolute; overflow:hidden; left:775px; top:385px; height:29px; z-index:19">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Paid/Unpaid Bills:-</B></font></div>
</div></div>

<div id="text13" 
            style="position:absolute; overflow:hidden; left:207px; top:301px; width:150px; height:29px; z-index:20">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Property Tax:-</B></font></div>
</div></div>

<div id="text14" 
            style="position:absolute; overflow:hidden; left:280px; top:344px; width:67px; height:29px; z-index:21">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Rent:-</B></font></div>
</div></div>


 <asp:TextBox ID="tb_servicecharg" runat="server" 
            style="position:absolute;width:200px;left:364px;top:423px;z-index:22"></asp:TextBox> 

 <asp:TextBox ID="tb_repaircharg" runat="server" 
            style="position:absolute;width:200px;left:985px;top:307px;z-index:23"></asp:TextBox> 

 <asp:TextBox ID="tb_watercharg" runat="server" 
            style="position:absolute;width:200px;left:985px;top:347px;z-index:24"></asp:TextBox> 

<asp:DropDownList ID="dd_unpaid" runat="server" 
        
        style="position:absolute;left:985px; top:385px; width:200px;z-index:17; right: -54px;" 
        DataTextField="Flat_No" DataValueField="Flat_No">
<asp:ListItem>--Select--</asp:ListItem>
    <asp:ListItem>Paid</asp:ListItem>
    <asp:ListItem>Unpaid</asp:ListItem>
</asp:DropDownList> 

 <asp:TextBox ID="tb_othercharg" runat="server" 
            style="position:absolute;width:200px;left:987px; top:415px; z-index:26"></asp:TextBox> 

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

<div id="text15" 
            style="position:absolute; overflow:hidden; left:717px; top:224px; width:37px; height:28px; z-index:2">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>To DATE.:-</B></font></div>
</div></div>

        <br />
        <br />
        <br />
        <br />
 <asp:TextBox ID="tb_dateto" runat="server" 
            style="position:absolute;width:202px;left:758px; top:226px;z-index:11" 
            TextMode="Date"></asp:TextBox> 

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Generate Recept" />

<asp:ImageButton ID="btn_update" runat="server" 
            style="position:absolute; overflow:hidden; left:650px; top:507px; width:102px; height:30px; z-index:11"
            ImageUrl="images/Update.png/" /> 


        <br />


    </div>
    <asp:ImageButton ID="btn_add" runat="server" 
     style="position:absolute; overflow:hidden; left:547px; top:507px; width:72px; height:30px; z-index:27"
    ImageUrl="images/Add.png"/>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
