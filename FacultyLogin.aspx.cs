using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class FacultyLogin : System.Web.UI.Page
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
    protected void Login_Click(object sender,EventArgs e)
    {
        DataSet ds = new DataSet();
        if (txt_userid.Text != "" && txt_pass.Text != "")
        {
            string login = "select * from LoginMaster where UserID='" + txt_userid.Text + "' and Password='" + txt_pass.Text + "' and Status='Faclt'";
            sda = new SqlDataAdapter(login,cn);
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string info = "select * from FacultyMaster where UserID='"+txt_userid.Text+"' ";
                SqlDataAdapter ada = new SqlDataAdapter(info, cn);
                DataSet data = new DataSet();

                ada.Fill(data);

                if (data.Tables[0].Rows.Count > 0)
                {
                    Session["UserID"] = data.Tables[0].Rows[0][0].ToString();
                    Session["Dep"] = data.Tables[0].Rows[0][1].ToString();
                    Session["Degree"] = data.Tables[0].Rows[0][2].ToString();
                    Session["join"] = data.Tables[0].Rows[0][3].ToString();
                    Session["Status"] = "Faclt";
                    Response.Redirect("FacultyMyPortal.aspx");

                    
                }
                else
                    lb_status.Text = "<font color=red>No information available for this Faculty</font>";

            }
            else

                lb_status.Text = "<font color=red>Username Or Password are Wrong</font>";
       //     lb_status.Text+="select * from LoginMaster where UserID='" + txt_userid + "' and Password='" + txt_pass + "' and Status='Faclt'";

        }
        else
            lb_status.Text = "<font color=red>Fields cant be left empty</font>";
    }
}