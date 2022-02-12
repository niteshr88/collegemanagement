using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class AdminEditNotice : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection cn;
    SqlDataAdapter sda;
    protected void Fillgrid()
    {
        string sel = "select * from NoticeMaster";
        DataSet data = new DataSet();
        sda = new SqlDataAdapter(sel, cn);
        sda.Fill(data);
        if (data.Tables[0].Rows.Count > 0)
        {
            grid_notice.DataSource = data;
            grid_notice.DataBind();
        }
        else
        {
            lb_status.Text = "<font color=red>There are no Notices to Edit</font>";
            grid_notice.DataSource = data;
            grid_notice.DataBind();
        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string con = "server=DESKTOP-0L98AEP;database=CSDP;integrated security=true";
        cn = new SqlConnection(con);
        Fillgrid();

    }


    protected void grid_notice_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            cn.Open();
            string serialid = grid_notice.Rows[e.RowIndex].Cells[6].Text;
            string del = "delete from NoticeMaster where Serial=" + serialid + "";
            cmd = new SqlCommand(del, cn);
            cmd.ExecuteNonQuery();
        }
        catch
        {

        }
        cn.Close();
        Fillgrid();
        
    }
}