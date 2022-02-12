using System;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Upload_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("eBook/") + eBook.FileName;
        

        if (eBook.HasFile)
        {
            string str = eBook.FileName;
            int i = str.Length;
            if (str.Substring(i - 4) == ".pdf")
            {
                try
                {
                    eBook.SaveAs(path);
                    lb_status.Text = "<font color=green>Your File has been saved</font>";

                }
                catch
                {
                    lb_status.Text = "<font color=red>File Size Must not Exceed 3MB</font>";
                }
            }
            else
                lb_status.Text = "<font color=red>Please Upload a pdf file</font>";
        }
        else
            lb_status.Text = "<font color=red>Please Select a File</font>";

    }
}