using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class FacultyNoticeEditor : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter sda;
    int serial;
    protected void Page_Load(object sender, EventArgs e)
    {
        string con = "server=DESKTOP-0L98AEP;database=CSDP;integrated security=true";
        cn = new SqlConnection(con);
    }


    protected void notice_post_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand();
        string date;
        date = DateTime.Now.ToString();
        string sel = "select * from NoticeMaster";
        DataSet data = new DataSet();
        sda = new SqlDataAdapter(sel, cn);
        sda.Fill(data);
        cn.Open();

        if (data.Tables[0].Rows.Count==0)
        {
            serial = 1001;
        }
        else
        {
            string max = "select max(Serial)+1 from NoticeMaster";
            cmd.CommandText = max;
            cmd.Connection = cn;
            serial=int.Parse(cmd.ExecuteScalar().ToString());
            
        }


        string type = DropDownList1.SelectedItem.ToString();

      //  try
        //{
            if (Session["UserID"].ToString() != "" && Session["UserID"].ToString() != null)
            {
                if (txt_title.Text != "" && txt_notice.Text != "")
                {
                    string insert = "insert into NoticeMaster values('" + Session["UserID"].ToString() + "','" + txt_title.Text + "','" + txt_notice.Text + "','" + type + "','" + date + "','"+serial+"')";
                    
                    cmd.Connection = cn;
                    cmd.CommandText = insert;
                    
                    int rowint = 0;
                    if (cn.State == ConnectionState.Open)
                    {

                        rowint = cmd.ExecuteNonQuery();
                        if (rowint > 0)
                        {
                            lb_status.Text = "<font color=green>Notice has been posted</font>";
                            txt_title.Text = "";
                            txt_notice.Text = "";
                        }
                        else
                            lb_status.Text = "<font color=red>Encountered some error</font>";
                    }
                }
                else
                    lb_status.Text = "<font color=red>Field cant be blank</font>";
            }
        //}
        //catch
        //{
          //  lb_status.Text = "<font color=red>Please Login to Post any Notice</font>";
        //}
        
    }

}
