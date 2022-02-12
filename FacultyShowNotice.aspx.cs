using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class FacultyShowNotice : System.Web.UI.Page
{
    SqlConnection cn;
    SqlDataAdapter sda;
    protected void FillGrid()
    {
        string[] ID_arr = new string[100];
        for (int i = 0; i < 100; i++)
        {
            ID_arr[i] = "notice" + i;
        }
        string sel = "select * from NoticeMaster where Type='student' or Type='General'  Order By Date DESC";
        sda = new SqlDataAdapter(sel,cn);
        DataSet data = new DataSet();
        sda.Fill(data);
        if(data.Tables[0].Rows.Count>0)
        {
            for (int i = 0; i < data.Tables[0].Rows.Count; i++)
            {
                Literal notice = new Literal();
                notice.ID = ID_arr[i];
                notice.Text = "<div class='panel panel-primary' ><div class='panel-body'>By: " + data.Tables[0].Rows[i][0].ToString() + "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp" + data.Tables[0].Rows[i][4].ToString() + "<br />";
                notice.Text += data.Tables[0].Rows[i][1].ToString() + "<br />";
                notice.Text += data.Tables[0].Rows[i][2].ToString()+ "</div></div><br>";
                spn.InnerHtml+= notice.Text;
            }
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string con = "server=DESKTOP-0L98AEP;database=CSDP;integrated security=true";
        cn = new SqlConnection(con);
        //if (!IsPostBack)
        //{
            FillGrid();
        //}
    }
}