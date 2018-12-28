Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration



Partial Class Register
    Inherits System.Web.UI.Page



    Private con As SqlConnection
    ' Private uid As Integer
    Private cmd, cmd1 As SqlCommand
    Private dr As SqlDataReader
    Private uid, S_Name, S_Address, dor, pass As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())

        'cmd = New SqlCommand("select max(S_Id) from Society_Master", con)
        'If con.State = ConnectionState.Open Then
        '    con.Close()
        'End If
        'con.Open()
        'dr = cmd.ExecuteReader()
        'If dr.HasRows Then
        '    dr.Read()
        '    uid = Convert.ToInt32(dr.GetValue(0).ToString())

        'End If
        'uid = uid + 1
        'cmd.Dispose()
        'dr.Dispose()
        'con.Close()




    End Sub




    Protected Sub Add_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles Add.Click
        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())

        uid = TextBox1.Text
        S_Name = TextBox2.Text
        S_Address = TextArea1.Text
        dor = TextBox3.Text
        pass = tb_password.Text



        cmd1 = New SqlCommand("insert into Society_Master values('" & uid & "','" & S_Name & "','" & S_Address & "','" & dor & "','" & pass & "')", con)
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
