using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Resume : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            lb_name.Text = Session["Name"].ToString();
            lb_fname.Text = Session["Fname"].ToString();
            lb_mob.Text = Session["Mob"].ToString();
            lb_add.Text = Session["add"].ToString();
            lb_blood.Text = Session["Blood"].ToString();
            lb_lan.Text = Session["Lang"].ToString();

            lb_school10.Text = Session["10name"].ToString();
            lb_school12.Text = Session["12name"].ToString();
            lb_univer.Text = Session["Uni"].ToString();

            lb_percent10.Text=Session["10th"].ToString();
            lb_percent12.Text=Session["12th"].ToString();
            lb_percentgrad.Text=Session["Grad"].ToString();

            lb_board10.Text = Session["Board10"].ToString();
            lb_board12.Text = Session["Board12"].ToString();
            lb_grad.Text = Session["Graduation"].ToString();

            lb_highschool.Text = Session["highschool"].ToString();
            lb_inter.Text = Session["inter"].ToString();
            lb_gra.Text = Session["grad"].ToString();

            lb_language.Text = Session["language"].ToString();
            lb_os.Text = Session["os"].ToString();
            name.InnerHtml = Session["Name"].ToString();
            add.InnerHtml = Session["Add"].ToString();
            userid.InnerHtml = Session["UserID"].ToString();
            mob.InnerHtml = Session["Mob"].ToString();
            ltr_name.Text = Session["Name"].ToString();

            lb_hobby.Text = Session["Hobby"].ToString();
            lb_interest.Text = Session["Interest"].ToString();
            lb_place.Text = Session["Place"].ToString();




        }
    }
}