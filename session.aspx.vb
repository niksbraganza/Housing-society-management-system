
Partial Class session
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Session("sid")
        Label2.Text = Session("role")
        Label3.Text = Session("NameAdmin")
        Label4.Text = Session("AdminID")
    End Sub
End Class
