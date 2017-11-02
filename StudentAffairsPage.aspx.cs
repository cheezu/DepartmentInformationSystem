using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class StudentAffairsPage : System.Web.UI.Page
{
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["theDb"].ConnectionString);

            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from StudentDetails", con);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(ds);
            con.Close();

            if (ds.Tables[0].Rows.Count > 0)
            {
                StudentListGrid.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                StudentListGrid.DataSource = ds;
                StudentListGrid.DataBind();
                int columnCount = StudentListGrid.Rows[0].Cells.Count;
                StudentListGrid.Rows[0].Cells.Clear();
                StudentListGrid.Rows[0].Cells.Add(new TableCell());
                StudentListGrid.Rows[0].Cells[0].ColumnSpan = columnCount;
                StudentListGrid.Rows[0].Cells[0].Text = "No Records Found";
            }
        }
    }

    protected void StudentListGrid_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "GradeUpdateBtn")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = StudentListGrid.Rows[index];
            Response.Redirect("~/UpdateGradePage.aspx?RegNo=" + row.Cells[0].Text);
        }

        if (e.CommandName == "CourseRegistrationBtn")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = StudentListGrid.Rows[index];
            Response.Redirect("~/CourseRegistrationPage.aspx?RegNo=" + row.Cells[0].Text);
        }
    }

}