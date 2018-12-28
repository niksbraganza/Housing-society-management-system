<%@ Page Language="VB" AutoEventWireup="false" CodeFile="viewunpaid.aspx.vb" Inherits="viewunpaid" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

.wpmd {font-size: 13px;font-family: Arial,Helvetica,Sans-Serif;font-style: normal;font-weight: normal;}
.ws26 {font-size: 35px;}
        .style1
        {
            margin-top: 0px;
            margin-bottom: 0px;
        }
.ws18 {font-size: 24px;}
    </style>
</head>
<body background="Images/demo.jpg">
    <form id="form1" runat="server">
    <div>
    
        <b>
    <asp:GridView ID="GridView1" runat="server"  
            style="position:absolute;width:200px;left:580px; top:146px; z-index:10; right: 486px;" 
            AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Flat_No" HeaderText="Flat_No" 
                SortExpression="Flat_No" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
        </Columns>
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:HSMS %>" 
            SelectCommand="SELECT [Flat_No], [Total] FROM [Bill_Details] WHERE ([Paid_Unpaid] = @Paid_Unpaid)">
            <SelectParameters>
                <asp:Parameter DefaultValue="unpaid" Name="Paid_Unpaid" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </b>

<div id="g_text1" style="position:absolute; overflow:hidden; left:431px; top:7px; width:536px; height:49px; z-index:1">
<div class="style1">
<div><font color="#333333" face="Arial Narrow" class="ws26"><B>Housing Society Management System</B></font></div>
</div></div>

    </div>

    <b>

<div id="text5" 
        
         
        
        
        
        
        style="position:absolute; overflow:hidden; left:495px; top:303px; width:85px; height:31px; z-index:3">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18">Flat Id:-</font></div>
</div></div>

    </b>
 
<asp:DropDownList ID="DropDownList1" runat="server" 
        
        style="position:absolute;left:583px; top:307px; width:200px;z-index:17; right: 512px;" 
        DataTextField="Flat_No" DataValueField="Flat_No" 
        DataSourceID="SqlDataSource1">
<asp:ListItem>--Select--</asp:ListItem>
</asp:DropDownList> 

    <b>

<div id="text6" 
        
         
        
        
        
        
        style="position:absolute; overflow:hidden; left:470px; top:353px; width:110px; height:31px; z-index:3">
<div class="wpmd">
<div><font color="#4E4E4E" face="Centaur" class="ws18">Get Total:-</font></div>
</div></div>

<asp:TextBox ID="tb_subject" runat="server" 
    style="position:absolute;width:200px;left:580px; top:356px; z-index:10" 
        Enabled="False"></asp:TextBox>

    </b>
    <p>
        &nbsp;</p>
    <br />
    <br />
    <asp:ImageButton ID="btn_addblacklist" runat="server"  
        
        
        style="position:absolute; overflow:hidden; left:582px; top:427px; height:30px; z-index:8" 
        ImageUrl="images/Transfer.png"/>
      
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:ImageButton ID="Button2" runat="server" 
        style="position:absolute; overflow:hidden; left:412px; top:427px; z-index:8"  
                                                                        
        ImageUrl="images/Get Total.png"/>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
