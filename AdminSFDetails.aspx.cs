using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminSFDetails : System.Web.UI.Page
{
    SqlConnection cn;
    SqlDataAdapter sda;
    SqlCommand cmd;
    protected void Fillgridfac()
    {
        DataSet data = new DataSet();
        string info = "select * from LoginMaster where Status='Faclt'";

        sda = new SqlDataAdapter(info, cn);

        sda.Fill(data);
        if (data.Tables[0].Rows.Count > 0)
        {
            grid_faculty.DataSource = data;
            grid_faculty.DataBind();
        }
        else
        {
            lb_status.Text = "<font color=red>There is no data</font>";
            grid_faculty.DataSource = data;
            grid_faculty.DataBind();
        }
    }
    protected void Fillgridstu()
    {
        DataSet data = new DataSet();
        string info = "select * from LoginMaster where Status='Studn'";

        sda = new SqlDataAdapter(info, cn);

        sda.Fill(data);
        if (data.Tables[0].Rows.Count > 0)
        {
            grid_faculty.DataSource = data;
            grid_faculty.DataBind();
            //faculty_info.DataSource=data;
            //faculty_info.DataBind();
        }
        else
        {
            lb_status.Text = "<font color=red>There is no data</font>";
            grid_faculty.DataSource = data;
            grid_faculty.DataBind();
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string con = "server=DESKTOP-0L98AEP;database=CSDP;integrated security=true";
        cn = new SqlConnection(con);
    }

    protected void go_Click(object sender, EventArgs e)
    {
        if (drop_sel.SelectedItem.Text != "---Select any option---")
        {
            if (drop_sel.SelectedItem.Text == "Faculty")
            {
                Fillgridfac();
                lb_status.Text = "";
            }
            else if(drop_sel.SelectedItem.Text=="Student")
            {
                Fillgridstu();
                lb_status.Text = "";
            }
        }
        else
            lb_status.Text = "<font color=red>Please Select any option</font>";
    }

    protected void grid_faculty_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void grid_faculty_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        if (drop_sel.SelectedItem.Text == "Faculty")
        {
            cn.Open();
            cmd = new SqlCommand();


            string id = grid_faculty.Rows[e.RowIndex].Cells[1].Text;
            string delete = "delete  from NoticeMaster where UserID='" + id + "'";
            cmd.CommandText = delete;
            cmd.Connection = cn;
            
            cmd.ExecuteNonQuery();

            delete = "delete  from FacultyPersonalMaster where UserID='" + id + "'";
            cmd.CommandText = delete;
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();

            delete = "delete  from FacultyMaster where UserID='" + id + "'";
            cmd.CommandText = delete;
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();

            delete = "delete  from LoginMaster where UserID='" + id + "'";
            cmd.CommandText = delete;
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            Fillgridfac();
        }
        if (drop_sel.SelectedItem.Text == "Student")
        {
            cn.Open();
            cmd = new SqlCommand();


            string id = grid_faculty.Rows[e.RowIndex].Cells[1].Text;
            string delete = "delete  from StudentPersonalMaster where UserID='" + id + "'";
            cmd.CommandText = delete;
            cmd.Connection = cn;

            cmd.ExecuteNonQuery();

            delete = "delete  from StudentAcademicMaster where UserID='" + id + "'";
            cmd.CommandText = delete;
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();

            delete = "delete  from StudentTechnicalMaster where UserID='" + id + "'";
            cmd.CommandText = delete;
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();


            delete = "delete  from StudentMaster where UserID='" + id + "'";
            cmd.CommandText = delete;
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();

            delete = "delete  from LoginMaster where UserID='" + id + "'";
            cmd.CommandText = delete;
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            Fillgridstu();
        }
        cn.Close();
    }
}