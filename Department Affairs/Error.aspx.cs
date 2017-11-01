using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Department_Affairs_Error : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;

        try
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["DISConnectionString"].ConnectionString;


        }
    }

    protected void cmdRefreshTime_Click(object sender, EventArgs e)
    {
        lblTime.Text = DateTime.Now.ToLongTimeString();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = DropDownList1.SelectedValue;
        if(DropDownList1.SelectedValue == "CSE")
        {
            Panel1.Visible = true;
        }
    }

    protected void cb1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label2.Text = cb1.SelectedValue;
    }
}