Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration


Partial Class BlacklistDetails
    Inherits System.Web.UI.Page
    Dim fid, name As String
    Dim csubtotal As String




    Private con As SqlConnection
    ' Private uid As Integer
    Private cmd, cmd1, cmd2, cmd3 As SqlCommand
    Private dr As SqlDataReader
    Private sid, Blacklist_id, flat_no, flat_owner, current_amt, fine_peramt, duration_of_fine, total_amt As String





    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        fid = Request.QueryString("fid")
        csubtotal = Request.QueryString("total")
        name = Request.QueryString("fname")
        tb_flatno.Text = fid
        tb_flatowner.Text = name
        tb_currentamt.Text = csubtotal
    End Sub

    


    Protected Sub btn_add_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btn_add.Click
        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())
        'cmd2 = New SqlCommand("select max(Blacklist_id) from Blacklist_Details", con)

        sid = Session("sid").ToString()
        flat_no = tb_flatno.Text
        flat_owner = tb_flatowner.Text
        current_amt = tb_currentamt.Text
        fine_peramt = tb_fineperamt.Text
        duration_of_fine = tb_durationoffine.Text
        total_amt = tb_totalamt.Text


        Try

            cmd1 = New SqlCommand("insert into Blacklist_Details values('" & sid & "','" & flat_no & "','" & flat_owner & "','" & current_amt & "','" & fine_peramt & "','" & duration_of_fine & "','" & total_amt & "')", con)
            If con.State = ConnectionState.Open Then
                con.Close()
            End If

            con.Open()
            'Dim dr As SqlDataReader = cmd2.ExecuteReader()
            'If dr.HasRows Then
            '    dr.Read()
            '    Blacklist_id = Convert.ToInt32(dr.GetValue(0))
            '    Blacklist_id = Blacklist_id + 1
            'End If


            cmd1.ExecuteNonQuery()

            con.Close()
            cmd1.Dispose()


        Catch ex As Exception
            Label1.Text = ex.Message
        End Try
        'Label1.Text = "Data Added!!!!"



        




        'insert in blacklist table
        'update total column of bill_detail with this amount

    End Sub

    Protected Sub btncal_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btncal.Click
        Dim ca, temp, final, per As Decimal
        tb_fineperamt.Text = txtper.Text.ToString()
        ca = tb_currentamt.Text
        per = Convert.ToDecimal(txtper.Text)
        temp = ca * per
        final = ca + temp
        tb_totalamt.Text = final.ToString()
    End Sub

    Protected Sub btn_update_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btn_update.Click
        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())
        Try

            cmd3 = New SqlCommand("update Bill_Details set Total='" & total_amt & "' where Flat_No='" & tb_flatno.Text & "'", con)
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
