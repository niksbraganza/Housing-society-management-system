Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration


Partial Class BillDetails
    Inherits System.Web.UI.Page


    Private con As SqlConnection
    ' Private uid As Integer
    Private cmd, cmd1, cmd2, cmd3 As SqlCommand
    Private dr As SqlDataReader
    Private bill_no, datefrom, dateto, flat_no, unpaid_bill, sid As String

    Private prop_tax, rent, park_charges, service_charges, repair_charges, water_charges, other_charges, total As Decimal

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())
    End Sub


    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btn_add.Click

        con = New SqlConnection(WebConfigurationManager.ConnectionStrings("HSMS").ToString())
        sid = Session("sid").ToString()
        bill_no = tb_billno.Text
        datefrom = tb_datefrom.Text
        dateto = tb_dateto.Text
        flat_no = tb_flatno.Text
        prop_tax = tb_proptax.Text
        rent = tb_rent.Text
        park_charges = tb_parkingcharg.Text
        service_charges = tb_servicecharg.Text
        repair_charges = tb_repaircharg.Text
        water_charges = tb_watercharg.Text
        unpaid_bill = dd_unpaid.SelectedValue
        other_charges = tb_othercharg.Text
        total = tb_total.Text



        Try

            cmd1 = New SqlCommand("insert into Bill_Details values('" & sid & "','" & bill_no & "','" & datefrom & "','" & dateto & "','" & flat_no & "','" & prop_tax & "','" & rent & "','" & park_charges & "','" & service_charges & "','" & repair_charges & "','" & water_charges & "','" & unpaid_bill & "','" & other_charges & "','" & total & "')", con)
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


    Protected Sub btn_update_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btn_update.Click

        If dd_unpaid.SelectedValue = "Paid" Then

            cmd2 = New SqlCommand("select * from Blacklist_Details where flat_no='" & tb_flatno.Text & "'", con)
            Dim dr1 As SqlDataReader
            con.Close()
            con.Open()
            dr1 = cmd2.ExecuteReader()
            dr1.Read()



            If dr1.HasRows Then

                cmd3 = New SqlCommand("delete from Blacklist_Details where flat_no= '" & tb_flatno.Text & "'", con)

                Try



                    If con.State = ConnectionState.Open Then
                        con.Close()
                    End If
                    con.Open()
                    cmd3.ExecuteNonQuery()

                    con.Close()
                    cmd3.Dispose()


                Catch ex As Exception
                    Label1.Text = ex.Message
                End Try
                'Label1.Text = "Data Added!!!!"



            End If

        Else


        End If
        Try



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

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        
    End Sub
End Class
