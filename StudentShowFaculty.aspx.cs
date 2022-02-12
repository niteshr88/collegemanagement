using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class StudentShowFaculty : System.Web.UI.Page
{
    SqlConnection cn;
    SqlDataAdapter sda;
    protected void FillRep()
    {
        DataSet data = new DataSet();
        string info = "select * from FacultyPersonalMaster";

        sda = new SqlDataAdapter(info, cn);

        sda.Fill(data);
        if (data.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = data;
            GridView1.DataBind();
           //faculty_info.DataSource=data;
            //faculty_info.DataBind();
           
        }
        else
            lb_status.Text = "<font color=red>No Data Found</font>";

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string con = "server=DESKTOP-0L98AEP;database=CSDP;integrated security=true";
        cn = new SqlConnection(con);
        FillRep();
    }
}