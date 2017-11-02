using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SuccessLabel.Visible = false;
        FailLabel.Visible = false;
    }

    
    protected void InsertStudent(object sender, EventArgs e)
    {
        try
        {
            int check = StudentListSource.Insert();

            if (check == 1)
            {
                SuccessLabel.Visible = true;
                Response.Redirect("StudentAffairsPage.aspx?status=success");
            }
        }

        catch
        {
            FailLabel.Visible = true;
        }
        finally
        { }
    }
}