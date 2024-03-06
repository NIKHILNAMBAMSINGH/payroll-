using System;
using System.Web.UI;

public partial class employeeLogin : Page
{
    protected void btnLogin_Click(object sender, EventArgs e)
    {
       
        string username = txtUsername.Text;
        string password = txtPassword.Text;

        
        if (username == "employee" && password == "password")
        {
            
            Response.Redirect("~/EmployeeDashboard.aspx");
        }
        else
        {
           
            Response.Write("<script>alert('Invalid username or password');</script>");
        }
    }
}
