Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration



Partial Class RequestPermission
    Inherits System.Web.UI.Page

    Private con As SqlConnection
    ' Private uid As Integer
    Private cmd, cmd1, cmd2 As SqlCommand
    Private dr As SqlDataReader
    Private req_id, flat_no, subject, status, matter As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())

    End Sub

    Protected Sub Submit_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles Submit.Click
        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())


        req_id = tb_reqid.Text
        flat_no = tb_flatno.Text
        subject = tb_password.Text
        status = tb_status.Text
        matter = tb_matter.Text



        Try
            'update FlatRegister set sid='"&txtsid.text&'",,,where sid='"&txtsid.text&"'
            cmd1 = New SqlCommand("insert into Adminreq values('" & Session("sid").ToString() & "','" & req_id & "','" & flat_no & "', '" & subject & "','" & status & "', '" & matter & "')", con)
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





        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())
        Dim u1 As New Utility()
        Dim email1 As String


        Try

            cmd2 = New SqlCommand("SELECT TOP 1000 [Email_Id] FROM [HSMS].[dbo].[Admin_Registration] where S_Id='" & Session("sid") & "'", con)
            'If con.State = ConnectionState.Open Then
            '    con.Close()
            'End If
            con.Open()

            Dim dr As SqlDataReader = cmd2.ExecuteReader()
            dr.Read()

            email1 = dr.GetValue(0).ToString()
            con.Close()
            Label1.Text = "succesfull"
        Catch ex As Exception
            Label1.Text = ex.Message
        End Try
        Dim msg As [String] = u1.sendMail(tb_email.Text, email1, tb_password.Text, tb_subject.Text, tb_reqid.Text)
        Label1.Text = msg


    End Sub
End Class
