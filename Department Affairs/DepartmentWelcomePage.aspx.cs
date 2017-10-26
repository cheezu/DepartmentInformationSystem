using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DepartmentWelcomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.GetData();
        }
    }

    private void GetData()
    {
        DataView dv_money = (DataView)moneyleft_sqlsource.Select(DataSourceSelectArguments.Empty);
        DataRowView drv = dv_money[0];

        DataView dv_research = (DataView)researchnumber_sqlsource.Select(DataSourceSelectArguments.Empty);
        DataRowView drv2 = dv_research[0];

        moneyleft_data.Text = drv["SumAmount"].ToString();
        researchnumber_data.Text = drv2["ResearchCount"].ToString();
    }
}