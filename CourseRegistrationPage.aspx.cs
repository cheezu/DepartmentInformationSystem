using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CourseRegistrationPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();

        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["theDb"].ConnectionString);

            con.Open();

            SqlCommand cmd = new SqlCommand("SELECT distinct Semester FROM CourseList", con);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);

            adapter.Fill(ds, "semester");

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                SemesterDdl.Items.Add(dr["Semester"].ToString());
            }

            con.Close();

            SemesterDdl.SelectedIndex=-1;
        }
    }

    protected void SemesterDdl_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["theDb"].ConnectionString);

        con.Open();

        SqlCommand cmd = new SqlCommand("SELECT CourseId, CourseName FROM CourseList WHERE Semester=@Semester", con);
        cmd.Parameters.AddWithValue("@Semester", SemesterDdl.SelectedItem.Text);

        SqlDataReader reader;
        reader = cmd.ExecuteReader();
        CourseCbl.Items.Clear();

        while (reader.Read())
        {
            CourseCbl.Items.Add(reader["CourseName"].ToString());
        }

        con.Close();
    }


    protected void SubmitBtn_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["theDb"].ConnectionString);

        con.Open();

        for (int i = 0; i < CourseCbl.Items.Count; i++)
        {
            if (CourseCbl.Items[i].Selected == true)
            {
                SqlCommand courseIdValue = new SqlCommand("SELECT CourseId FROM CourseList WHERE CourseName=@CourseName", con);
                courseIdValue.Parameters.AddWithValue("@CourseName", CourseCbl.Items[i].Text);

                string courseNameValue = CourseCbl.Items[i].Text;
                string insertSql = "INSERT INTO CourseRegistration (CourseId, CourseName, Sem) VALUES ('" + courseIdValue + "," + courseNameValue + "')";

                SqlCommand cmd = new SqlCommand(insertSql, con);
                cmd.ExecuteNonQuery();
            }
        }
    }
}