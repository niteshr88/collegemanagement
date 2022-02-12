using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Go_Click(object sender, EventArgs e)
    {
        if (drop_sel.SelectedItem.Text != "---Select any option---")
        {
            if (drop_sel.SelectedItem.Text == "Student")
                Response.Redirect("AdminRegStudent.aspx");
            else if (drop_sel.SelectedItem.Text == "Faculty")
                Response.Redirect("AdminRegFaculty.aspx");
        }
        else
            lb_status.Text = "<font color=red>Please select an option</font>";
    }
}