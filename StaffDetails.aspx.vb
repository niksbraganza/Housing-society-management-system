Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration




Partial Class StaffDetails
    Inherits System.Web.UI.Page

    Private con As SqlConnection
    ' Private uid As Integer
    Private cmd, cmd1 As SqlCommand
    Private dr As SqlDataReader
    Private staff_name, staff_addr, designation, mob_no, dateofjoin, salary As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())

    End Sub


    Protected Sub Add_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles Add.Click

        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())


        staff_name = tb_staffname.Text
        staff_addr = tb_staffname.Text
        designation = tb_dateofjoin.Text
        mob_no = tb_mobno.Text
        dateofjoin = tb_dateofjoin.Text
        salary = tb_salary.Text


        Try

            cmd1 = New SqlCommand("insert into Staff_Details values('" & Session("sid").ToString() & "','" & staff_name & "','" & staff_addr & "','" & designation & "', '" & mob_no & "','" & dateofjoin & "','" & salary & "')", con)
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

    
    Protected Sub TextBox1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles tb_staffadd.TextChanged

    End Sub
End Class
