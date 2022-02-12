using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyPortal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if(Session["UserID"].ToString()!=""||Session["UserID"].ToString()!=null)
            {
                if (Session["Status"].ToString() == "Studn")
                    Response.Redirect("StudentMyPortal.aspx");
                else if (Session["Status"].ToString() == "Faclt")
                    Response.Redirect("facultyMyPortal.aspx");
                else if (Session["Status"].ToString() == "Admin")
                    Response.Redirect("AdminMyPortal.aspx");
            }
        }
        catch
        {
            lb_box.Text = "<div class='modal-dialog'><div class='modal-content'><div class='modal-header'><h3 class='text-center'><b  style='color:red'>Alert Message From Admin</b></h3><br/><br/><h4 class='text-center'><b>First Login with Your ID</b></h4><br/><br/><h5 class='text-right'><b style='color:green'>Thank You...</b></h5></div></div>";
        }
    }
}