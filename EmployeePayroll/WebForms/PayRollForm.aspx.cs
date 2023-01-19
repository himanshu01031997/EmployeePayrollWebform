using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace EmployeePayroll.WebForms
{
    public partial class PayRollForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                for (int i = 2017; i <= 2023; i++)
                {
                    DropDownList4.Items.Add(i.ToString());
                }
                DropDownList4.Items.FindByValue(System.DateTime.Now.Year.ToString()).Selected = true;//it will set current year as selected

                for (int i = 1; i <= 12; i++)
                {
                    DropDownList3.Items.Add(i.ToString());
                }
                DropDownList3.Items.FindByValue(System.DateTime.Now.Month.ToString()).Selected = true;//it will set current month as selected
                

                filldays();//filldays
            }

        }
        public void filldays()
        {
            DropDownList1.Items.Clear();
            int noofdays = DateTime.DaysInMonth(Convert.ToInt32(DropDownList4.SelectedValue), Convert.ToInt32(DropDownList3.SelectedValue));
            for (int i = 1; i <= noofdays; i++)
            {
                DropDownList1.Items.Add(i.ToString());
            }
            DropDownList1.Items.FindByValue(System.DateTime.Now.Day.ToString()).Selected = true;//it will set current date as selected
           

        }
        static string connectionstring = ConfigurationManager.ConnectionStrings["EmployeePayrollDBConnectionString"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionstring);

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand("spEmployeepayrollProce", connection);
            sqlCommand.CommandType=System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@Name", TextBox1.Text);
            sqlCommand.Parameters.AddWithValue("@Gender", RadioButtonList2.SelectedValue);
            string checklist = "";
            for(int i=0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    if (checklist=="")
                    {
                        checklist = CheckBoxList1.Items[i].Value;

                    }
                    else
                    {
                        checklist += " " + CheckBoxList1.Items[i].Value;//can checked more then one box
                    }
                }
                
            }
            sqlCommand.Parameters.AddWithValue("@Department", checklist);
            sqlCommand.Parameters.AddWithValue("@salary", DropDownList2.SelectedValue);
            sqlCommand.Parameters.AddWithValue("@Startdate", DropDownList1.SelectedValue + "/" + DropDownList3.SelectedValue + "/" + DropDownList4.SelectedValue);
            sqlCommand.Parameters.AddWithValue("@notes", TextBox2.Text);
            sqlCommand.Parameters.AddWithValue("@image", RadioButtonList1.SelectedValue);
            connection.Open();
            var datareader = sqlCommand.ExecuteReader();
            if (datareader != null)
            {
                Session["data"] = datareader;
                Label8.Text = "!!!Payform detail inserted sucessfully into database!!!";
                Label8.ForeColor = System.Drawing.Color.Green;
                Response.Redirect("HomePage.aspx");

            }
            else
            {
                Label8.Text = "!!!Payform detail not inserted into database!!!";
                Label8.ForeColor = System.Drawing.Color.Green;
            }
            connection.Close();
        }
        protected void dd1month_SelectedIndexChanged(object sender, EventArgs e)
        {
            filldays();

        }
        protected void dd1year_SelectedIndexChanged(object sender, EventArgs e)
        {
            filldays();

        }

       
    }
}