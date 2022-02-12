using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class StudentResumeBuilder : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection cn;
    SqlDataAdapter sda;
    protected void Page_Load(object sender, EventArgs e)
    {
        string con = "server=DESKTOP-0L98AEP;database=CSDP;integrated security=true";
        cn = new SqlConnection(con);

        DataSet data_aca = new DataSet();
        DataSet data_tech = new DataSet();
        string sel_aca = "select Graduation,Inter,HighSchool from StudentAcademicMaster where UserID='" + Session["UserID"].ToString() + "'";
        string sel_tech = "select PrgmLanguage,OS from StudentTechnicalMaster where UserID='" + Session["UserID"].ToString() + "'";

        sda = new SqlDataAdapter(sel_aca, cn);
        sda.Fill(data_aca);

        sda = new SqlDataAdapter(sel_tech, cn);
        sda.Fill(data_tech);
        if (data_aca.Tables[0].Rows.Count > 0)
        {
            highschool.InnerHtml = data_aca.Tables[0].Rows[0][2].ToString();
            Session["highschool"] = data_aca.Tables[0].Rows[0][2].ToString();

            inter.InnerHtml = data_aca.Tables[0].Rows[0][1].ToString();
            Session["inter"] = data_aca.Tables[0].Rows[0][1].ToString();

            grad.InnerHtml = data_aca.Tables[0].Rows[0][0].ToString();
            Session["grad"] = data_aca.Tables[0].Rows[0][0].ToString();
        }
        if(data_tech.Tables[0].Rows.Count>0)
        {
            lang.InnerHtml = data_tech.Tables[0].Rows[0][0].ToString();
            Session["language"] = data_tech.Tables[0].Rows[0][0].ToString();

            os.InnerHtml = data_tech.Tables[0].Rows[0][1].ToString();
            Session["os"] = data_tech.Tables[0].Rows[0][1].ToString();
        }
        
    }


    protected void btn_save_Click(object sender, EventArgs e)
    {
        Session["Name"]= txt_name.Text;
        Session["Fname"]=txt_fname.Text;
        Session["Mob"]=txt_mob.Text;
        Session["add"]=txt_add.Text;
        Session["Blood"] = txt_blood.Text;
        Session["Lang"]= txt_lang.Text;

        Session["10th"]= txt_percent10.Text;
        Session["12th"]= txt_percent12.Text;
        Session["Grad"] = txt_percentgrad.Text;

        Session["10name"]= txt_school10.Text;
        Session["12name"] = txt_school12.Text;
        Session["Uni"]= txt_university.Text;

        Session["Board10"] = txt_board10.Text;
        Session["Board12"] = txt_board12.Text;
        Session["Graduation"] = txt_university.Text;

        Session["Hobby"] = txt_hobby.Text;
        Session["Interest"] = txt_interest.Text;
        Session["Place"] = txt_place.Text;
        Response.Redirect("Resume.aspx");  


    }
}