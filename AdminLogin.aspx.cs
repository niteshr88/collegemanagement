using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminLogin : System.Web.UI.Page
{
    SqlConnection cn;
    SqlDataAdapter sda;
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "server=DESKTOP-0L98AEP;database=CSDP;integrated security=true";
        cn = new SqlConnection(str);
    }

    protected void Cancel_Click(object sender, EventArgs e)
    {
        txt_userid.Text = "";
        txt_pass.Text = "";
        lb_status.Text = "";
    }

    protected void btn_submit_Click(object sender, EventArgs e)
    { 
        DataSet ds = new DataSet();
        if (txt_userid.Text != "" && txt_pass.Text != "")
        {
            string login = "select * from LoginMaster where UserID='" + txt_userid.Text + "' and Password='" + txt_pass.Text + "' and Status='Admin'";
            sda = new SqlDataAdapter(login, cn);
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                
                    Session["UserID"] = ds.Tables[0].Rows[0][0].ToString();
                    Session["Status"] ="Admin";
                    
                    Response.Redirect("AdminMyPortal.aspx");

                    
            }  
            else

                lb_status.Text = "<font color=red>Username Or Password are Wrong</font>";
       

        }
        else
            lb_status.Text = "<font color=red>Fields cant be left empty</font>";
    }
}
