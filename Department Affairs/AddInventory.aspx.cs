using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Department_Affairs_AddInventory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SuccessLabel.Visible = false;
        FailLabel.Visible = false;
    }

    protected void InsertInv(object sender, EventArgs e)
    {
        try
        {
            int check = sql_insertinv.Insert();
            if (check == 1)
            {
                //Query String used here!
                SuccessLabel.Visible = true;
                Response.Redirect("Inventory.aspx?status=success");
            }
        }
        catch(Exception ex)
        {
           FailLabel.Visible = true;
        }
        finally
        {

        }
    }
}