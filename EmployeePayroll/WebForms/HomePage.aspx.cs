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
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        static string connectionstring = ConfigurationManager.ConnectionStrings["EmployeePayrollDBConnectionString"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionstring);
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("PayRollForm.aspx");
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value.ToString());
            connection.Open();
            SqlCommand command = new SqlCommand("delete from EmployeePayrollTable  where id='" + id + "'", connection);
            int r = command.ExecuteNonQuery();
            if (r > 0)
            {
                Response.Write("<script>alert('data is deleted')</script>");
                GridView2.EditIndex = -1;
                GridView2.DataBind();
            }
        }

       
    }
}