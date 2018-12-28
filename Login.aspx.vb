Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration



Partial Class Login
    Inherits System.Web.UI.Page

    Private con As SqlConnection

    Private Property sid As String
    Public Property role As String
    Public Property NameAdmin As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


    End Sub

    Protected Sub AdminSubmit_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles AdminSubmit.Click


        Session("AdminID") = tb_sid.Text
        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())
        Dim cmd3 As New SqlCommand("Select * from Admin_Registration where Admin_Id='" & Session("AdminID") & "' and Password='" & tb_password.Text & "' and Designation='" & dd_designation.SelectedValue & "'", con)
        If con.State = ConnectionState.Open Then
            con.Close()
        End If
        con.Open()
        Dim dr1 As SqlDataReader = cmd3.ExecuteReader()
        If dr1.HasRows Then
            dr1.Read()

            Session("sid") = dr1("S_Id")
            Session("role") = dr1("Designation")
            Session("NameAdmin") = dr1("Admin_Name")
            Session("AdminID") = tb_sid.Text
            Session("sample") = dr1("Email_Id")
            'dr1.Dispose()
            con.Close()
            cmd3.Dispose()

            ' Response.Redirect("session.aspx")
            Response.Redirect("AdminLogin.aspx")


        Else
            'Label2.Text = "Invalid Details"
            tb_mempass.Text = "hii"
        End If




    End Sub


    Protected Sub MemberSubmit_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles MemberSubmit.Click


        Session("Society_Id") = tb_sid.Text
        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())

        Dim cmd3 As New SqlCommand("Select * from Flat_Register where S_Id='" & Session("sid") & "' and Password='" & tb_mempass.Text & "' and Flat_No='" & dd_memflatno.SelectedValue & "'", con)
        If con.State = ConnectionState.Open Then
            con.Close()
        End If
        con.Open()
        Dim dr1 As SqlDataReader = cmd3.ExecuteReader()
        If dr1.HasRows Then
            dr1.Read()

            Session("sid") = dr1("S_Id")
            Session("flatno") = dr1("Flat_No")
            Session("membername") = dr1("Owner_Name1")
            Session("S_Id") = tb_sid.Text
            Session("sample") = dr1("Email_Id")
            'dr1.Dispose()
            con.Close()
            cmd3.Dispose()

            ' Response.Redirect("session.aspx")
            Response.Redirect("MemberLogin.aspx")


        Else
            'Label2.Text = "Invalid Details"
            tb_mempass.Text = "hii"
        End If



    End Sub

    
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        ' Dim cmd12 As SqlCommand = New SqlCommand("select Flat_No from Flat_Register where S_Id='" & TextBox1.Text& """, con)
        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())
        Dim da As SqlDataAdapter = New SqlDataAdapter("select Flat_No from Flat_Register where S_Id='" & TextBox1.Text & "'", con)
        Dim td As DataTable = New DataTable()
        da.Fill(td)
        dd_memflatno.DataSource = td
        dd_memflatno.DataBind()
    End Sub

   
End Class
