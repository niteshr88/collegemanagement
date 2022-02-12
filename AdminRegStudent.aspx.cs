using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class AdminRegStudent : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    bool flag = false;
    string Degree;
    string Branch;
    bool check = false;

    protected void delete()
    {
        string dellog = "delete from LoginMaster where UserID='" + txt_userid.Text + "'";
        string delsm = "delete from StudentMaster where UserID='" + txt_userid.Text + "'";
        string delsp = "delete from StudentPersonalMaster where UserID='" + txt_userid.Text + "'";
        string delstech = "delete from StudentTechnicalMaster where UserID='" + txt_userid.Text + "'";
        string delaca = "delete from StudentAcademicMaster where UserID='" + txt_userid.Text + "'";
        cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = delsm;
        cmd.ExecuteNonQuery();

        cmd.CommandText = delsp;
        cmd.ExecuteNonQuery();

        cmd.CommandText = delstech;
        cmd.ExecuteNonQuery();

        cmd.CommandText = delaca;
        cmd.ExecuteNonQuery();

        cmd.CommandText = dellog;
        cmd.ExecuteNonQuery();
        //lb_status.Text = "<font color=red>Some error occured Please try again</font>";
    }

    protected void Page_Load(object sender, EventArgs e)
    {

        string str = "server=DESKTOP-0L98AEP;database=CSDP;integrated security=true";
        cn = new SqlConnection(str);
    }
    protected void Submit(object sender, EventArgs e)
    {

        if (mtech.Checked == true)
        {
            Degree = "M.Tech";
        }
        if (btech.Checked == true)
        {
            Degree = "B.Tech";
        }
        if (Cs.Checked == true)
        {
            Branch = "CSE";
        }
        if (IT.Checked == true)
        {
            Branch = "IT";
        }
        string gender = "";
        if (male.Checked)
        {
            gender = "Male";
        }
        else if (female.Checked)
        {
            gender = "Female";
        }
        //  if (txt_name.Text != "" && txt_dob.Text != "" && txt_mob.Text != "" && txt_address.Text != "" && txt_userid.Text != "" && txt_pass.Text != "" && txt_rollno.Text != "" && txt_batch.Text != "" && txt_degree.Text != "" && txt_branch.Text != "" && txt_join.Text != "" && txt_acdachvmt.Text != "" && txt_sports.Text != "" && txt_cultural.Text != "" && txt_other.Text != "" && txt_grad.Text != "" && txt_sensec.Text != "" && txt_sec.Text != "" && txt_prgm.Text != "" && txt_db.Text != "" && txt_os.Text != "" && txt_software.Text != "" && txt_otherskl.Text != "" && txt_indexp.Text != "" && txt_acdprjct.Text != "")
        //{
        //  flag = false;
        //}
        DateTime date = new DateTime();
        date = DateTime.Now;

        if (int.Parse(txt_join.Text) <= date.Year)
        {
            if (int.Parse(txt_batch.Text) <= (date.Year + 4) && int.Parse(txt_join.Text) == (int.Parse(txt_batch.Text) - 4) && txt_grad.Text == txt_batch.Text)
            {
                if (int.Parse(txt_sensec.Text) <= int.Parse(txt_join.Text) && int.Parse(txt_sensec.Text) > int.Parse(txt_sec.Text))
                {
                    flag = true;
                }
                else
                    lb_status.Text = "<font color=red>Senior Sec. year must be greater than Sec. year and Less than equal to joining year</font>";
            }
            else
                lb_status.Text = "<font color=red><h3>Check your 'Batch','Joining' and 'Graduation' year</h3></font>";
        }
        else
        {
            flag = false;
            lb_status.Text = "<font color=red>joining Date(" + txt_join.Text + ") cannot be greater than current date(" + date.Year + ")</font>";
        }
        if (flag)
        {
            string insert = "insert into LoginMaster values('" + txt_userid.Text + "','" + txt_pass.Text + "','Studn')";

            cmd = new SqlCommand();
            cmd.CommandText = insert;
            cmd.Connection = cn;
            cn.Open();
            if (cn.State == ConnectionState.Open)
            {

                int rowin = 0;
                try
                {
                    rowin = cmd.ExecuteNonQuery();
                }
                catch
                {
                    lb_status.Text = "<font color=red>Email ID is Already Exist</font>";
                }
                if (rowin > 0)
                {
                    try
                    {



                        insert = "insert into StudentMaster values('" + txt_userid.Text + "'," + txt_rollno.Text + "," + txt_batch.Text + ",'" + Branch + "','" + Degree + "'," + txt_join.Text + ")";
                        cmd.CommandText = insert;
                        cmd.Connection = cn;
                        cmd.ExecuteNonQuery();
                        check = true;
                    }
                    catch
                    {
                        lb_status.Text = "<font color=red>error in Student Master</font>";
                        check = false;
                        delete();
                    }


                    try
                    {
                        insert = "insert into StudentPersonalMaster values('" + txt_userid.Text + "','" + txt_name.Text + "','" + txt_dob.Text + "','" + gender + "','" + txt_address.Text + "'," + txt_mob.Text + ")";
                        cmd.CommandText = insert;
                        cmd.Connection = cn;
                        cmd.ExecuteNonQuery();
                        check = true;
                    }

                    catch
                    {
                        lb_status.Text += "<font color=red>error in Student Personal Master</font>";
                        check = false;
                        delete();
                    }

                    try
                    {

                        insert = "insert into StudentTechnicalMaster values('" + txt_userid.Text + "','" + txt_prgm.Text + "','" + txt_db.Text + "','" + txt_os.Text + "','" + txt_software.Text + "','" + txt_otherskl.Text + "','" + txt_indexp.Text + "','" + txt_acdprjct.Text + "')";
                        cmd.CommandText = insert;
                        cmd.Connection = cn;
                        check = true;
                        cmd.ExecuteNonQuery();
                    }

                    catch
                    {
                        lb_status.Text += "<font color=red>error in Student Technical Master</font>";
                        check = false;
                        delete();
                    }

                    try
                    {
                        insert = "insert into StudentAcademicMaster values('" + txt_userid.Text + "','" + txt_acdachvmt.Text + "','" + txt_sports.Text + "','" + txt_cultural.Text + "','" + txt_other.Text + "'," + txt_grad.Text + "," + txt_sensec.Text + "," + txt_sec.Text + ")";
                        cmd.CommandText = insert;
                        cmd.Connection = cn;
                        cmd.ExecuteNonQuery();
                        check = true;
                    }
                    catch
                    {
                        lb_status.Text += "<font color=red>error in Student Academic Master</font>";
                        check = false;
                        delete();
                    }
                    if (check)
                    {
                        txt_acdachvmt.Text = "";
                        txt_acdprjct.Text = "";
                        txt_address.Text = "";
                        txt_batch.Text = "";
                        //branch.Text = "";
                        txt_cultural.Text = "";
                        txt_db.Text = "";
                        //degree.Text = "";
                        txt_dob.Text = "";
                        txt_grad.Text = "";
                        txt_indexp.Text = "";
                        txt_join.Text = "";
                        txt_mob.Text = "";
                        txt_name.Text = "";
                        txt_os.Text = "";
                        txt_other.Text = "";
                        txt_otherskl.Text = "";
                        txt_pass.Text = "";
                        txt_prgm.Text = "";
                        txt_rollno.Text = "";
                        txt_sec.Text = "";
                        txt_sensec.Text = "";
                        txt_software.Text = "";
                        txt_sports.Text = "";
                        txt_userid.Text = "";
                        //lb_status.Text = "";
                        male.Checked = false;
                        female.Checked = false;
                        lb_status.Text = "<script>alert('Student has been successfully registered');</script>";
                        Response.Redirect("StudentLogin.aspx");
                    }

                }


            }

            cn.Close();

        }
    }

}

