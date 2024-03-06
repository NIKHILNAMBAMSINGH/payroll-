using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class adminDepartment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtDeptId.Text = "";
            txtDeptName.Text = "";
            BindGridView();
        }
    }

    protected void BindGridView()
    {
        string _connectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection connection = new SqlConnection(_connectionString))
        {
            string query = "SELECT * FROM dbo.DepartmentDetailsTbl";
            SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }

    protected void btnAddDepartment_Click(object sender, EventArgs e)
    {
        try
        {
            string _connectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            int deptId = Convert.ToInt32(txtDeptId.Text);
            string deptName = Convert.ToString(txtDeptName.Text);

            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = "INSERT INTO dbo.DepartmentDetailsTbl (deptId, deptName) VALUES (@DeptId, @DeptName)";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@DeptId", deptId);
                command.Parameters.AddWithValue("@DeptName", deptName);

                connection.Open();
                command.ExecuteNonQuery();
            }

            BindGridView();

            txtDeptId.Text = "";
            txtDeptName.Text = "";
        }
        catch (Exception ex)
        {
            // Handle the exception, maybe display an error message or log it.
            // For simplicity, we are not handling the exception here.
        }
    }
}
