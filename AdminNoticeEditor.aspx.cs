using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminUploadNotice : System.Web.UI.Page
{
    int serial;
    SqlConnection cn;
    SqlCommand cmd;
    string insert;
    protected void Page_Load(object sender, EventArgs e)
    {
        string con = "server=DESKTOP-0L98AEP;database=CSDP;integrated security=true";
        cn = new SqlConnection(con);
    }


    protected void notice_post_Click(object sender, EventArgs e)
    {
        string date;
        date = DateTime.Now.ToString();
        string serialno = "select Max(Serial)+1 from NoticeMaster";
        cmd = new SqlCommand();
        cmd.CommandText = serialno;
        cmd.Connection = cn;
        cn.Open();
        
        
        try
        {
            serial = int.Parse(cmd.ExecuteScalar().ToString());
        }
        catch
        {
            serial = 1001;
            lb_status.Text="<font>Serial number initialized</font>";
        }

        string userid="";
        string type = DropDownList1.SelectedItem.ToString();

        try
        {
           userid = Session["UserID"].ToString();
        }
        catch
        {
            lb_status.Text = "<font color=red>Please Login to Post any Notice</font>";
        }
        try
        {
            if (userid != "" && userid != null)
            {
                if (DropDownList1.SelectedItem.Text != "---Select Type---")
                {
                    if (txt_title.Text != "" && txt_notice.Text != "")
                    {

                        //string notcheck = txt_notice.Text;
                        insert = "insert into NoticeMaster values('" + Session["UserID"].ToString() + "','" + txt_title.Text + "','" + txt_notice.Text + "','" + type + "','" + date + "'," + serial + ")";
                        cmd = new SqlCommand();
                        cmd.Connection = cn;
                        cmd.CommandText = insert;

                        int rowint = 0;
                        if (cn.State == ConnectionState.Open)
                        {

                            rowint = cmd.ExecuteNonQuery();
                            if (rowint > 0)
                            {
                                lb_status.Text = "<font color=green>Notice has been posted</font>";
                                txt_notice.Text = "";
                                txt_title.Text = "";
                            }
                            else
                                lb_status.Text = "<font color=red>Encountered some error</font>";
                        }
                    }
                    else
                        lb_status.Text = "<font color=red>Field cant be blank</font>";
                }
                else
                    lb_status.Text = "<font color=red>Please select a type</font>";
            }
        }
        catch
        {
            lb_status.Text = "<font color=red>Title or Content cannot contain  '''  (quotation)</font>";
        }
        cn.Close();
       }
       
        
    }

