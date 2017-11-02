using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DepartmentWelcomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["DISConnectionString"].ConnectionString;
        string selectSQL1 = "SELECT SUM(amount) AS SumAmount FROM Accounts";
        string selectSQL2 = "SELECT COUNT(research_id) AS ResearchCount FROM Research";
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(selectSQL1, con);
        SqlCommand cmd2 = new SqlCommand(selectSQL2, con);
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
        SqlDataAdapter adapter2 = new SqlDataAdapter(cmd2);

        con.Open();

        DataSet ds = new DataSet();
        adapter.Fill(ds, "SumAmount");
        adapter2.Fill(ds, "ResearchCount");

        moneyleft_data.Text = ds.Tables["SumAmount"].Rows[0]["SumAmount"].ToString();
        researchnumber_data.Text = ds.Tables["ResearchCount"].Rows[0]["ResearchCount"].ToString();

        con.Close();
    }
}