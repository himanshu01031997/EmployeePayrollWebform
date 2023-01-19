using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayroll.WebForms
{
    public partial class signinaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        static string connectionstring = ConfigurationManager.ConnectionStrings["EmployeePayrollDBConnectionString2"].ConnectionString;
        SqlConnection sqlConnection = new SqlConnection(connectionstring);
        protected bool AuthenticateUser(string email,string password)
        {
            SqlCommand cmd = new SqlCommand("LogInCredentialsss", sqlConnection);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter parameteremail=new SqlParameter("@Email",email);
            SqlParameter parameterpass = new SqlParameter("@password",password);
            cmd.Parameters.Add(parameteremail);
            cmd.Parameters.Add(parameterpass);
            sqlConnection.Open();
            int returncode=(int)cmd.ExecuteScalar();
            return returncode == -1;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if(AuthenticateUser(TextBox1.Text, TextBox3.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, CheckBox1.Checked);
            }
            else
            {
                Response.Redirect("HomePage.aspx");
                Label1.Text = "Login Successful";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("signuppage.aspx");
        }
    }
}