using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
public partial class StudentDownload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string str=Server.MapPath("ebook").ToString();
       
        str = "cd " + str;
        Process cmd = new Process();
        cmd.StartInfo.FileName = "cmd.exe";
        cmd.StartInfo.RedirectStandardInput = true;
        cmd.StartInfo.RedirectStandardOutput = true;
        cmd.StartInfo.CreateNoWindow = true;
        cmd.StartInfo.UseShellExecute = false;
        cmd.Start();
        

        cmd.StandardInput.WriteLine(str);
        cmd.StandardInput.WriteLine("dir *.pdf /b >note.txt");
        cmd.StandardInput.Flush();
        cmd.StandardInput.Close();
        cmd.WaitForExit();
        string n = cmd.StandardOutput.ReadToEnd();
        string[] lines = System.IO.File.ReadAllLines("C:\\MTA_INDIA\\Project Main\\eBook\\note.txt");
        foreach(string line in lines)
        {
            // spn.InnerHtml+= "<label><font>"+line+"</font></label><br />";
            spn.InnerHtml += "<span class='glyphicon glyphicon-floppy-save'></span>&nbsp<a href='ebook\\" + line+"' download>"+line+"</a><br />";

        }
    }
}