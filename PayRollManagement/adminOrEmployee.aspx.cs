using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminOrEmployee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void AdminLoginButton_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("/adminLogin.aspx");
    }

    protected void EmployeeLoginButton_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("/employeeLogin.aspx");
    }
}