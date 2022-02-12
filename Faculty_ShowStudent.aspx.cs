using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Faculty_ShowStudent : System.Web.UI.Page
{
    SqlConnection cn;
    SqlDataAdapter sda;
    SqlDataAdapter sper;
    SqlDataAdapter sacs;

    protected void FillGrid()
    {
        string sel = "select * from StudentMaster where batch='"+txt_Search.Text+"'";
       // string selaca = "select * from StudentAcademicMaster";
       // string selper = "select * from StudentPersonalMaster";

        SqlDataAdapter sda = new SqlDataAdapter(sel,cn);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        studentmaster.DataSource = ds;
        studentmaster.DataBind();

        /*SqlDataAdapter saca = new SqlDataAdapter(selaca, cn);
        DataSet daca = new DataSet();
        saca.Fill(daca);
        StudentAcademic.DataSource = daca;
        StudentAcademic.DataBind();

       DataSet dper = new DataSet();
        SqlDataAdapter sper = new SqlDataAdapter(selper, cn);
        sper.Fill(dper);
        StudentPersonal.DataSource = dper;
        StudentPersonal.DataBind();*/
        
        
        
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string con = "server=DESKTOP-0L98AEP;database=CSDP;integrated security=true";
        cn = new SqlConnection(con);
       
       
    }

    protected void Search_Click(object sender, EventArgs e)
    {
        header.Text = "  <h2>Student Details</h2 >";
        FillGrid();
    }
}