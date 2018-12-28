Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration



Partial Class viewunpaid
    Inherits System.Web.UI.Page


    Private con As SqlConnection
    Private cmd, cmd1 As SqlCommand
    Private dr As SqlDataReader
    Private Flat_No, Bill_Date As String
    Dim temp As Decimal
    Dim fname, lname, fullname As String




    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        'con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())

        'con.Open()
        ''cmd = New SqlCommand("insert into  Blacklist_Details values('" & Flat_No & "', '" & Bill_Date & "')", Items.CopyTo[1].Values.ToString, item.Cells[2].Value.ToString(), item.Cells[3].Value.ToString())
        'cmd = New SqlCommand("select sum(total) from Bill_Details where Flat_No='" & DropDownList1.SelectedValue.ToString & "'", con)
        'Dim dr As SqlDataReader
        'dr = cmd.ExecuteReader
        'dr.Read()

        'temp = Convert.ToDecimal(dr.GetValue(0))
        'tb_subject.Text = temp
        ''cmd.CommandType = CommandType.Text
        ''cmd.ExecuteNonQuery()
        'con.Close()
        'cmd.Dispose()
    End Sub

    Protected Sub btn_addblacklist_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_addblacklist.Click
        Dim fid As String
        fid = DropDownList1.SelectedValue.ToString()
        Dim temptotal As Decimal
        temptotal = tb_subject.Text
        cmd1 = New SqlCommand("select Owner_Name1,Owner_Name2 from Flat_Register where Flat_No='" & DropDownList1.SelectedValue.ToString & "' ", con)
        con.Open()
        Dim dr1 As SqlDataReader
        dr1 = cmd1.ExecuteReader()
        dr1.Read()

        fname = dr1.GetValue(0)
        lname = dr1.GetValue(1)
        fullname = fname + lname

        Response.Redirect("~/BlackListDetails.aspx?fid=" & fid & "&fname=" & fullname & "&total=" & temptotal & "")
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())

        con.Open()
        'cmd = New SqlCommand("insert into  Blacklist_Details values('" & Flat_No & "', '" & Bill_Date & "')", Items.CopyTo[1].Values.ToString, item.Cells[2].Value.ToString(), item.Cells[3].Value.ToString())
        cmd = New SqlCommand("select sum(total) from Bill_Details where Flat_No='" & DropDownList1.SelectedValue.ToString & "'", con)
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader
        dr.Read()

        temp = Convert.ToDecimal(dr.GetValue(0))
        tb_subject.Text = temp
        'cmd.CommandType = CommandType.Text
        'cmd.ExecuteNonQuery()
        con.Close()
        cmd.Dispose()
        'cmd1 = New SqlCommand("select Owner_Name1,Owner_Name2 from Flat_Register where Flat_No='" & DropDownList1.SelectedValue.ToString & "' ", con)
        'con.Open()
        'Dim dr1 As SqlDataReader
        'dr1 = cmd1.ExecuteReader()
        'dr1.Read()

        'fname = dr1.GetValue(0)
        'lname = dr1.GetValue(1)
        'fullname = fname + lname



    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles Button2.Click
        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())

        con.Open()
        'cmd = New SqlCommand("insert into  Blacklist_Details values('" & Flat_No & "', '" & Bill_Date & "')", Items.CopyTo[1].Values.ToString, item.Cells[2].Value.ToString(), item.Cells[3].Value.ToString())
        cmd = New SqlCommand("select sum(total) from Bill_Details where Flat_No='" & DropDownList1.SelectedValue.ToString & "'", con)
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader
        dr.Read()

        temp = Convert.ToDecimal(dr.GetValue(0))
        tb_subject.Text = temp
        'cmd.CommandType = CommandType.Text
        'cmd.ExecuteNonQuery()
        con.Close()
        cmd.Dispose()
        'cmd1 = New SqlCommand("select Owner_Name1,Owner_Name2 from Flat_Register where Flat_No='" & DropDownList1.SelectedValue.ToString & "' ", con)
        'con.Open()
        'Dim dr1 As SqlDataReader
        'dr1 = cmd1.ExecuteReader()
        'dr1.Read()

        'fname = dr1.GetValue(0)
        'lname = dr1.GetValue(1)
        'fullname = fname + lname


    End Sub

    Protected Sub btn_addblacklist_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btn_addblacklist.Click
        Dim fid As String
        fid = DropDownList1.SelectedValue.ToString()
        Dim temptotal As Decimal
        temptotal = tb_subject.Text
        cmd1 = New SqlCommand("select Owner_Name1,Owner_Name2 from Flat_Register where Flat_No='" & DropDownList1.SelectedValue.ToString & "' ", con)
        con.Open()
        Dim dr1 As SqlDataReader
        dr1 = cmd1.ExecuteReader()
        dr1.Read()

        fname = dr1.GetValue(0)
        lname = dr1.GetValue(1)
        fullname = fname + lname

        Response.Redirect("~/BlackListDetails.aspx?fid=" & fid & "&fname=" & fullname & "&total=" & temptotal & "")
    End Sub
End Class
