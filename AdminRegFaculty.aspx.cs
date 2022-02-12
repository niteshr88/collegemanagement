using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminRegFaculty : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    bool flag;
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "server=DESKTOP-0L98AEP;database=CSDP;integrated security=true";
        cn = new SqlConnection(str);
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
        }

    }

    protected void Next(object sender, EventArgs e)
    {
        DateTime date = new DateTime();
        if (txt_userid.Text != "" && txt_name.Text != "" && txt_department.Text != "" && txt_degree.Text != "" && txt_pass.Text != "" && txt_join.Text != "" && txt_dob.Text != "" && txt_mob.Text != "")
        {

            date = DateTime.Now;
            if (int.Parse(txt_join.Text) <= date.Year)
            {
                ltr_degree.Text = txt_degree.Text;
                ltr_department.Text = txt_department.Text;
                ltr_dob.Text = txt_dob.Text;
                ltr_join.Text = txt_join.Text;
                ltr_mob.Text = txt_mob.Text;
                ltr_name.Text = txt_name.Text;
                ltr_userid.Text = txt_userid.Text;
                if (male.Checked)
                {
                    ltr_gender.Text = "Male";
                }
                else if (female.Checked)
                {
                    ltr_gender.Text = "Female";
                }
                hidden_pass.Value = txt_pass.Text;
                MultiView1.ActiveViewIndex = 1;
            }
            else
            {
                lb_status.Text = "Join date cannot be in future";
            }
        }
        else
        {
            lb_blank.Text = "<font color=red><h4>Field can't be left blank</h4></font>";
        }
    }

    protected void Clear(object sender, EventArgs e)
    {
        txt_degree.Text = "";
        lb_blank.Text = "";
        txt_department.Text = "";
        txt_dob.Text = "";
        txt_join.Text = "";
        txt_mob.Text = "";
        txt_pass.Text = "";
        txt_userid.Text = "";
        txt_name.Text = "";
        male.Checked = false;
        female.Checked = false;
    }

    protected void Back(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void Submit(object sender, EventArgs e)
    {
        string gender = "";
        if (male.Checked)
        {
            gender = "Male";
        }
        else if (female.Checked)
        {
            gender = "Female";
        }
        string insert = "insert into LoginMaster values('" + txt_userid.Text + "','" + hidden_pass.Value + "','Faclt')";

        cmd = new SqlCommand();
        cmd.CommandText = insert;
        cmd.Connection = cn;
        cn.Open();
        if (cn.State == ConnectionState.Open)
        {
            try
            {
                int rowin = cmd.ExecuteNonQuery();
                if (rowin > 0)
                {
                    insert = "insert into FacultyMaster values('" + txt_userid.Text + "','" + txt_department.Text + "','" + txt_degree.Text + "'," + txt_join.Text + ")";
                    cmd.CommandText = insert;
                    cmd.Connection = cn;
                    cmd.ExecuteNonQuery();
                    insert = "insert into FacultyPersonalMaster values('" + txt_userid.Text + "','" + txt_name.Text + "','" + txt_dob.Text + "','" + gender + "'," + txt_mob.Text + ")";
                    cmd.CommandText = insert;
                    cmd.Connection = cn;
                    cmd.ExecuteNonQuery();
                    lb_status.Text = "<font color=green><h4>Faculty Has Been Successfully Registered</h4></font>";
                    ltr_degree.Text = "";
                    ltr_department.Text = "";
                    ltr_dob.Text = "";
                    ltr_join.Text = "";
                    ltr_mob.Text = "";
                    ltr_gender.Text = "";
                    ltr_userid.Text = "";
                    ltr_name.Text = "";

                    txt_degree.Text = "";
                    txt_department.Text = "";
                    txt_dob.Text = "";
                    txt_join.Text = "";
                    txt_mob.Text = "";
                    txt_pass.Text = "";
                    txt_userid.Text = "";
                    txt_name.Text = "";
                    male.Checked = false;
                    female.Checked = false;

                }
            }
            catch
            {
                lb_status.Text = "<font color=green><h4>Email ID Already Exist</h4></font>";
            }

        }

        cn.Close();
    }
}