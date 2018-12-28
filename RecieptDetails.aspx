<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RecieptDetails.aspx.vb" Inherits="RecieptDetails" %>

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
<div><font color="#C0C0C0" class="ws12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#808080" class="ws16"> Copyright 
    © 2016. All Rights Reserved. Designed &amp; Developed by Siddhesh &amp; Shubham</font></div>
</div></div>

<div id="g_text1" style="position:absolute; overflow:hidden; left:431px; top:7px; width:536px; height:49px; z-index:1">
<div class="wpmd">
<div><font color="#333333" face="Arial Narrow" class="ws26"><B>Housing Society Management System</B></font></div>
</div></div>

<div id="text1" style="position:absolute; overflow:hidden; left:472px; top:184px; width:139px; height:28px; z-index:2">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Reciept No.:-</B></font></div>
</div></div>

<div id="text2" style="position:absolute; overflow:hidden; left:512px; top:223px; width:96px; height:29px; z-index:3">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Bill No.:-</B></font></div>
</div></div>

<div id="text3" style="position:absolute; overflow:hidden; left:543px; top:265px; width:65px; height:29px; z-index:4">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Date:-</B></font></div>
</div></div>

<div id="text4" style="position:absolute; overflow:hidden; left:449px; top:386px; width:166px; height:29px; z-index:5">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Payment Mode:-</B></font></div>
</div></div>

<div id="text5" style="position:absolute; overflow:hidden; left:520px; top:436px; width:95px; height:29px; z-index:6">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Amount:-</B></font></div>
</div></div>


 <asp:TextBox ID="tb_receptno" runat="server" 
            style="position:absolute;width:202px;left:618px;top:186px;z-index:7"></asp:TextBox> 

 <asp:TextBox ID="tb_billno" runat="server" 
            style="position:absolute;width:202px;left:619px;top:226px;z-index:8"></asp:TextBox> 

 <asp:TextBox ID="tb_date" runat="server" 
            style="position:absolute;width:202px;left:620px;top:268px;z-index:9" 
            TextMode="DateTime" ></asp:TextBox> 

 <asp:TextBox ID="tb_membname" runat="server" 
            style="position:absolute;width:200px;left:620px;top:344px;z-index:10"></asp:TextBox> 
<div id="text9" style="position:absolute; overflow:hidden; left:450px; top:342px; width:166px; height:29px; z-index:11">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Member Name:-</B></font></div>
</div></div>


 <asp:TextBox ID="tb_amt" runat="server" 
            style="position:absolute;width:200px;left:619px;top:436px;z-index:12"></asp:TextBox> 

<div id="text6" style="position:absolute; overflow:hidden; left:509px; top:301px; width:99px; height:29px; z-index:14">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18"><B>Flat No.:-</B></font></div>
</div></div>


 <asp:TextBox ID="tb_flatno" runat="server" 
            style="position:absolute;width:202px;left:620px;top:304px;z-index:15"></asp:TextBox> 

 <asp:ImageButton ID="Add" runat="server" 
             style="position:absolute; overflow:hidden; left:559px; top:486px; width:72px; height:30px; z-index:16; right: 664px;"
             ImageUrl="images/Add.png"/>

 <asp:ImageButton ID="Update" runat="server"
            style="position:absolute; overflow:hidden; left:650px; top:486px; width:102px; height:30px; z-index:11"
            Imageurl="images/Update.png" />

<div id="text7" style="position:absolute; overflow:hidden; left:574px; top:68px; width:203px; height:32px; z-index:17">
<div class="wpmd">
<div align=center><font color="#003366" face="Centaur" class="ws20"><B>Reciept Details</B></font></div>
</div></div>


        <br />
        <br />


        <B>
<asp:DropDownList ID="dl_paymode" runat="server" 
    style="position:absolute;left:622px; top:389px; width:200px;z-index:25">

 <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem>Cash</asp:ListItem>
            <asp:ListItem >Cheque</asp:ListItem>
              </asp:DropDownList>
 
        </b>


    </div>
    <br />
    <br />
    <br />
    &nbsp;<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="Recept_No" 
        DataValueField="Recept_No" style="margin-left: 4px" Width="202px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HSMS %>" 
        SelectCommand="SELECT [Recept_No] FROM [Recept_Details] WHERE ([S_Id] = @S_Id)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="Raghu" Name="S_Id" SessionField="sid" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
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
