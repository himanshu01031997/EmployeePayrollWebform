using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayroll.WebForms
{
    public partial class signuppage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        static string connectionstring = ConfigurationManager.ConnectionStrings["EmployeePayrollDBConnectionString2"].ConnectionString;
        SqlConnection sqlConnection = new SqlConnection(connectionstring);

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SignUpDetailss", sqlConnection);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Firstname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Lastname", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Phone", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox5.Text);
             this.sqlConnection.Open();
            int returncode = (int)cmd.ExecuteScalar();
            if (returncode == -1)
            {
                Label1.Text = "Email id already exists,please use another email";
            }
            else
            {
                Response.Redirect("signinaspx.aspx");
            }
            this.sqlConnection.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("signinaspx.aspx");
        }
    }
}