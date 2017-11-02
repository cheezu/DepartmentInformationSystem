using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Department_Affairs_Research : System.Web.UI.Page
{
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DISConnectionString"].ConnectionString);

            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Research", con);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(ds);
            con.Close();

            if (ds.Tables[0].Rows.Count > 0)
            {
                det_Research.DataBind();
            }
        }
    }
}