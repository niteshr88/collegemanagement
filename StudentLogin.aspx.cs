using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class StudentLogin : System.Web.UI.Page
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
        txt_uid.Text = "";
        txt_pass.Text = "";
        lb_Status.Text = "";
    }
    protected void Login_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
       
        if (txt_uid.Text != "" && txt_pass.Text != "")
            
        {
            string login = "select * from LoginMaster where UserID='" + txt_uid.Text + "' and Password='" + txt_pass.Text + "' and Status='Studn'";
            sda = new SqlDataAdapter(login, cn);
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string info = "select * from StudentMaster where UserID='"+txt_uid.Text+"' ";
                
                SqlDataAdapter ada = new SqlDataAdapter(info, cn);
                DataSet data = new DataSet();

                ada.Fill(data);

                if (data.Tables[0].Rows.Count > 0)
                {
                    Session["UserID"] = data.Tables[0].Rows[0][0].ToString();
                    Session["Enrol"] = data.Tables[0].Rows[0][1].ToString();
                    Session["Batch"] = data.Tables[0].Rows[0][2].ToString();
                    Session["Branch"] = data.Tables[0].Rows[0][3].ToString();
                    Session["Degree"] = data.Tables[0].Rows[0][4].ToString();
                    Session["Join"] = data.Tables[0].Rows[0][5].ToString();
                    Session["Status"] = "Studn";

                    Response.Redirect("StudentMyPortal.aspx");


                }
                else
                    lb_Status.Text = "<font color=red>No information available for this Student</font>";

            }
            else

                lb_Status.Text = "<font color=red>Username Or Password are Wrong</font>";
         

        }
        else
            lb_Status.Text = "<font color=red>Fields cant be left empty</font>";
    }
}