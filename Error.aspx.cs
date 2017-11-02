using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Department_Affairs_Error : System.Web.UI.Page
{
    public int count { get; private set; }
    HttpCookie cookie = new HttpCookie("Values");

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;

        if (!IsPostBack)
        {
            count = 0;
            Session["count"] = count;
        }

        try
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["DISConnectionString"].ConnectionString;

            SqlCommand cmd = new SqlCommand("SELECT * FROM Ajax", con);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);

            con.Open();

            DataSet ds = new DataSet();
            adapter.Fill(ds, "AjaxTable");

            GridView1.DataSource = ds;
            this.DataBind();

            con.Close();

        }

        catch (Exception ex)
        {

        }

        finally
        {
        }

        count = (int)Session["count"];

        Label3.Text = count.ToString();

        HttpCookie cookie = Request.Cookies["Values"];

        if (cookie != null)
        {
            Label4.Text = cookie["ddlvalue"];
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        count = count + 1;
        Session["count"] = count;
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        cookie["ddlvalue"] = DropDownList2.SelectedValue;
        Response.Cookies.Add(cookie);
        cookie.Expires = DateTime.Now.AddYears(1);
    }
}