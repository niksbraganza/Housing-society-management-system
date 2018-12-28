Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration

Partial Class Adminreglogin
    Inherits System.Web.UI.Page
    Private con As SqlConnection


    Protected Sub AdminSubmit_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles AdminSubmit.Click


        Session("ID") = txt_SID.Text
        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())
        Dim cmd3 As New SqlCommand("Select S_Id from Society_Master where S_Id='" & Session("ID") & "' and S_Password='" & txt_pass.Text & "'", con)
        If con.State = ConnectionState.Open Then
            con.Close()
        End If
        con.Open()
        Dim dr1 As SqlDataReader = cmd3.ExecuteReader()
        If dr1.HasRows Then
            'dr1.Read()
            'uid = Convert.ToInt32(dr1.GetValue(0))
            'dr1.Dispose()
            con.Close()
            cmd3.Dispose()
            'Session("uid") = uid
            Session("ID") = txt_SID.Text
            Response.Redirect("AdminRegister.aspx")
            
        Else
            Label2.Text = "Invalid Details"
        End If




    End Sub
End Class
