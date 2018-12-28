Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration


Partial Class RecieptDetails
    Inherits System.Web.UI.Page


    Private con As SqlConnection
    ' Private uid As Integer
    Private cmd, cmd1, cmd3 As SqlCommand
    Private dr As SqlDataReader
    Private rcpt_no, bill_no, rcpt_date, flat_no, memb_name, pay_mode, amt As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())

    End Sub


    Protected Sub Add_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles Add.Click

        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())

        rcpt_no = tb_receptno.Text
        bill_no = tb_billno.Text
        rcpt_date = tb_date.Text
        flat_no = tb_flatno.Text
        memb_name = tb_membname.Text
        pay_mode = dl_paymode.SelectedValue
        amt = tb_amt.Text



        Try

            cmd1 = New SqlCommand("insert into Recept_Details values('" & Session("sid").ToString() & "','" & rcpt_no & "','" & bill_no & "','" & rcpt_date & "', '" & flat_no & "', '" & memb_name & "', '" & pay_mode & "', '" & amt & "')", con)
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

        Dim cmd3 As New SqlCommand("Select * from Recept_Details where S_Id='" & Session("sid") & "' and  Fund_Id='" & DropDownList1.SelectedValue & "'", con)
        If con.State = ConnectionState.Open Then
            con.Close()
        End If
        con.Open()
        Dim dr1 As SqlDataReader = cmd3.ExecuteReader()
        If dr1.HasRows Then
            dr1.Read()

            tb_receptno.Text = dr1("Recept_No")
            tb_billno.Text = dr1("Bill_No")
            tb_date.Text = dr1("Date")
            tb_flatno.Text = dr1("Flat_No")
            tb_membname.Text = dr1("Member_Name")
            dl_paymode.SelectedValue = dr1("Payment_Mode")
            tb_amt.Text = dr1("Amount")
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

            cmd3 = New SqlCommand("update Recept_Details set Recept_No='" & tb_receptno.Text & "',Bill_No='" & tb_billno.Text & "',Date='" & tb_date.Text & "',Flat_No='" & tb_flatno.Text & "',Member_Name='" & tb_membname.Text & "',Payment_Mode='" & dl_paymode.SelectedValue & "',Amount='" & tb_amt.Text & "' where Fund_Id='" & DropDownList1.SelectedValue & "'", con)
            If con.State = ConnectionState.Open Then
                con.Close()
            End If
            con.Open()
            cmd3.ExecuteNonQuery()
            con.Close()
            Label1.Text = "succesfull"
        Catch ex As Exception
            Label1.Text = ex.Message
        End Try


    End Sub
End Class
