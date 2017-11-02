using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Department_Affairs_Inventory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Status.Visible = false;
        string status = Request.QueryString["status"];
        if(status == "success")
        {
            Status.Text = "Added new row!";
            Status.ForeColor = System.Drawing.Color.Green;
            Status.Visible = true;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddInventory.aspx");
    }
}