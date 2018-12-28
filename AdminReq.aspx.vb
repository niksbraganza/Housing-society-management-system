Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration




Partial Class AdminReq
    Inherits System.Web.UI.Page


    Private con As SqlConnection
    ' Private uid As Integer
    Private cmd As SqlCommand
    Private dr As SqlDataReader



    Protected Sub OnSelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Dim row As GridViewRow = GridView1.SelectedRow()
        tb_reqid.Text = row.Cells(1).Text
        tb_flatid.Text = row.Cells(2).Text
        tb_subject.Text = row.Cells(3).Text
        tb_matter.Text = row.Cells(4).Text

    End Sub

    Protected Sub Submit_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles Submit.Click
        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())
        Dim u1 As New Utility()
        Dim email1 As String


        Try

            cmd = New SqlCommand("SELECT TOP 1000 [Email_Id] FROM [HSMS].[dbo].[Flat_Register] where Flat_No='" & tb_flatid.Text & "'", con)
            'If con.State = ConnectionState.Open Then
            '    con.Close()
            'End If
            con.Open()

            Dim dr As SqlDataReader = cmd.ExecuteReader()
            dr.Read()

            email1 = dr.GetValue(0).ToString()
            con.Close()
            Label1.Text = "succesfull"
        Catch ex As Exception
            Label1.Text = ex.Message
        End Try
        Dim msg As [String] = u1.sendMail("singhshubham200@yahoo.in", email1, "yashsingh", tb_subject.Text, dd_status.SelectedValue)
        Label1.Text = msg
    End Sub

    
    
End Class
