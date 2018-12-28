Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration



Partial Class AdminRegister
    Inherits System.Web.UI.Page


    Private con As SqlConnection
    ' Private uid As Integer
    Private cmd, cmd1 As SqlCommand
    Private dr As SqlDataReader
    Private A_Id, A_Name, Desig, S_id, Mob_No, Email, Pass As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        tb_sid.Text = Session("ID")

        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())
    End Sub


    Protected Sub Add_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles Add.Click


        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())

        A_Id = tb_adminid.Text
        A_Name = tb_adminname.Text
        Desig = dd_designation.Text
        S_id = tb_sid.Text
        Mob_No = tb_mobno.Text
        Email = tb_emailid.Text
        Pass = tb_password.Text



        cmd1 = New SqlCommand("insert into Admin_Registration values('" & A_Id & "','" & A_Name & "','" & Desig & "','" & S_id & "','" & Mob_No & "','" & Email & "','" & Pass & "')", con)
        If con.State = ConnectionState.Open Then
            con.Close()
        End If
        con.Open()
        cmd1.ExecuteNonQuery()

        con.Close()
        cmd1.Dispose()

        'Label1.Text = "Data Added!!!!"

    End Sub
End Class
