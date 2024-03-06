using System;
using System.Web.UI;

public partial class adminLogin : Page
{
    protected void btnLogin_Click(object sender, EventArgs e)
    {
       
        string username = txtUsername.Text;
        string password = txtPassword.Text;

        if (username == "admin" && password == "password")
        {

            Response.Redirect("/empty.aspx");
        }
        else
        {
           
            Response.Write("<script>alert('Invalid username or password');</script>");
        }
    }
}
