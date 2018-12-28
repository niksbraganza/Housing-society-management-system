Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration

Partial Class FundDetails
    Inherits System.Web.UI.Page


    Private con As SqlConnection
    ' Private uid As Integer
    Private cmd, cmd1, cmd3, cmd4 As SqlCommand
    Private dr As SqlDataReader
    Private fund_id, fund_date, amt, descrip As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())

    End Sub

    Protected Sub Add_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles Add.Click

        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())
        
        fund_id = tb_fundid.Text
        fund_date = tb_funddate.Text
        amt = tb_fundamt.Text
        descrip = tb_funddescrip.Text


        Try

            cmd1 = New SqlCommand("insert into Fund_Details values('" & Session("sid").ToString() & "','" & fund_id & "','" & fund_date & "','" & amt & "', '" & descrip & "')", con)
            If con.State = ConnectionState.Open Then
                con.Close()
            End If
            con.Open()
            cmd1.ExecuteNonQuery()

            con.Close()
            cmd1.Dispose()


        Catch ex As Exception
            Label1.Text = ex.Message
        End Try
        'Label1.Text = "Data Added!!!!"


    End Sub

   
    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged

        Dim cmd3 As New SqlCommand("Select * from Fund_Details where S_Id='" & Session("sid") & "' and  Fund_Id='" & DropDownList1.SelectedValue & "'", con)
        If con.State = ConnectionState.Open Then
            con.Close()
        End If
        con.Open()
        Dim dr1 As SqlDataReader = cmd3.ExecuteReader()
        If dr1.HasRows Then
            dr1.Read()

            tb_fundid.Text = dr1("Fund_Id")
            tb_funddate.Text = dr1("Fund_Date")
            tb_fundamt.Text = dr1("Amount")
            tb_funddescrip.Text = dr1("Description")
            con.Close()
            cmd3.Dispose()

            ' Response.Redirect("session.aspx")
            'Response.Redirect("AdminLogin.aspx")


        Else
            'Label2.Text = "Invalid Details"
            'TextBox2.Text = "hii"
        End If

    End Sub

    Protected Sub Update_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles Update.Click


        Try

            cmd4 = New SqlCommand("update Fund_Details set Fund_Date='" & tb_funddate.Text & "',Amount='" & tb_fundamt.Text & "',Description='" & tb_funddescrip.Text & "' where Fund_Id='" & DropDownList1.SelectedValue & "'", con)
            If con.State = ConnectionState.Open Then
                con.Close()
            End If
            con.Open()
            cmd4.ExecuteNonQuery()
            con.Close()
            Label1.Text = "succesfull"
        Catch ex As Exception
            Label1.Text = ex.Message
        End Try


    End Sub
End Class
