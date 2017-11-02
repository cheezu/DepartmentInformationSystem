using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Department_Affairs_Accounts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_status.Visible = false;
        string status = Request.QueryString["status"];
        if (status == "success")
        {
            lbl_status.Visible = true;
            lbl_status.ForeColor = System.Drawing.Color.Green;
            lbl_status.Text = "Success!";
        }
        Panel1.Visible = false;
    }

    protected void btn_newentry_Click (object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["DISConnectionString"].ConnectionString;

        try
        {
            con.Open();
            string insertcmd_text = "INSERT INTO Accounts (amount, description) VALUES (@amount, @description)";
            SqlCommand insertcmd = new SqlCommand(insertcmd_text, con);
            insertcmd.Parameters.AddWithValue("amount", tb_amount.Text);
            insertcmd.Parameters.AddWithValue("description", tb_desc.Text);

            int check = insertcmd.ExecuteNonQuery();

        }
        catch(Exception ex)
        {
            string exmsg = ex.Message;
            string extrace = ex.StackTrace;
            lbl_status.Text = "Failure.";
            lbl_status.ForeColor = System.Drawing.Color.Red;
            lbl_status.Visible = true;
        }
        finally
        {
            con.Close();
            Response.Redirect("Accounts.aspx?status=success");
        }

    }
}