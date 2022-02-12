using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class FacultyEditNotice : System.Web.UI.Page
{
    SqlConnection cn;
    SqlDataAdapter sda;
    string sdata;
    protected void FillGrid()
    {
        try
        {

            string sel = "Select * from NoticeMaster where UserID='" + Session["UserID"].ToString() + "'";
            sda = new SqlDataAdapter(sel, cn);
            DataSet data = new DataSet();
            sda.Fill(data);
            if (data.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = data;
                GridView1.DataBind();
            }
            else
                Label1.Text = "<font color=red>There are no Notice available to Edit<font>";
        }
        catch
        {
            Label1.Text = "<font color=red>Some error occured</font>";
        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string con = "server=DESKTOP-0L98AEP;database=CSDP;integrated security=true";
        cn = new SqlConnection(con);

        if(!IsPostBack)
        {
            FillGrid();
        }
    }   

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        
        string UserID = ((GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).ToString();
        string title = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text;
        string Contents = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[4].Controls[0])).Text;
        string type = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[5].Controls[0])).Text;
        string date = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[6].Controls[0])).Text;
         sdata = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[7].Controls[0])).Text;

        string update = "update NoticeMaster set Title='" + title + "',Contents='" + Contents + "',Type='" + type + "' ,Date='"+System.DateTime.Now.ToString()+"' where Serial="+sdata+"";
        cn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = update;
        cmd.Connection = cn;
        int i=cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.EditIndex = -1;
        FillGrid();
        Label1.Text =i.ToString();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        FillGrid();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        FillGrid();
    }


    protected void Gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        string data = GridView1.Rows[e.RowIndex].Cells[7].Text;
        string del = "delete from NoticeMaster where Serial=" + data + "";
        SqlCommand cmd = new SqlCommand(del, cn);
        try
        {
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            FillGrid();
        }
        catch
        {

        }
    }
}