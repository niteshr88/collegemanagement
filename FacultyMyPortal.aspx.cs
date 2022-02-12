using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FacultyMyPortal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            try
            {
                if (Session["UserID"].ToString() != " " || Session["UserID"].ToString() != null)
                    spn.InnerHtml = "<Label>Welcome " + Session["UserID"] + " </label>";
            }
            catch
            {

            }
        }
    }
}