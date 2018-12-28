Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration


Partial Class FlatRegister
    Inherits System.Web.UI.Page

    Private con As SqlConnection
    ' Private uid As Integer
    Private cmd, cmd1 As SqlCommand
    Private dr As SqlDataReader
    Private owner_type, owner_name1, owner_name2, flat_no, address, pin, city, stilt_parking, open_parking, flat_regdate, area, prop_type, alt_address, alt_pin, alt_city, mobno, email_id, password As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())
    

    End Sub


    Protected Sub Register_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles Register.Click



        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())
        owner_type = dl_ownertype.SelectedValue
        owner_name1 = tb_ownername1.Text
        owner_name2 = tb_ownername2.Text
        flat_no = tb_flatno.Text
        address = tb_address.Text
        pin = tb_pin.Text
        city = tb_city.Text
        stilt_parking = tb_stiltparking.Text
        open_parking = tb_password.Text
        flat_regdate = tb_flatregdate.Text
        area = tb_area.Text
        prop_type = dl_proptype.SelectedValue()
        alt_address = tb_altaddress.Text
        alt_pin = tb_altpin.Text
        alt_city = tb_altcity.Text
        mobno = tb_mobno.Text
        email_id = tb_emailid.Text
        password = tb_password.Text



        Try
            'update FlatRegister set sid='"&txtsid.text&'",,,where sid='"&txtsid.text&"'
            cmd1 = New SqlCommand("insert into Flat_Register values('" & Session("sid").ToString() & "','" & owner_type & "','" & owner_name1 & "', '" & owner_name2 & "','" & flat_no & "', '" & address & "', '" & pin & "', '" & city & "','" & stilt_parking & "', '" & open_parking & "', '" & flat_regdate & "', '" & area & "','" & prop_type & "', '" & alt_address & "', '" & alt_pin & "', '" & alt_city & "', '" & mobno & "', '" & email_id & "', '" & password & "')", con)
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


End Class
