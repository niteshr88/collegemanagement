<%@ Page Title="Student MyPortal" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentMyPortal.aspx.cs" Inherits="StudentMyPortal" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #portal
        {
            background-color:#ff4b64;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="container-fluid row"> <!--Container Row-->
    <div class="col-lg-3"> <!--Column-->
     <div class="panel panel-primary" style="margin-top:10px"> <!--Panel-->
        <div class="panel-heading"> <!--Panel Heading-->
            <span id="spn" runat="server"></span>
            <h3 class="panel-title">Menu</h3>
        </div> <!--End of Panel Heading--> 
        <div class="panel-body"> <!--Panel Body-->
              <a href="StudentResumeBuilder.aspx" class="btn"><span class="glyphicon glyphicon-export"></span>&nbsp;Resume Builder</a>
            <br />
              <a href="StudentShowNotice.aspx" class="btn"><span class="glyphicon glyphicon-book"></span>&nbsp;Notice Board</a>
            <br />  
            <a href="StudentShowFaculty.aspx" class="btn "><span class="glyphicon glyphicon-inbox"></span>&nbsp;Faculty Info</a>
            <br />
            <a href="StudentDownload.aspx" class="btn "><span class="glyphicon glyphicon-download"></span>&nbsp;eBook Download</a>
            <br />
              <a href="Logout.aspx" class="btn"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Log Out</a>
            </div>
        </div>
    </div> <!--Column-->
        <div class="col-lg-9">
            <div class="panel panel-primary" style="margin-top:10px"> <!--Panel-->
        <div class="panel-heading"> <!--Panel Heading-->
            <h3 class="panel-title">My Portal</h3>
        </div> <!--End of Panel Heading--> 
        <div class="panel-body"> <!--Panel Body-->
            <div class="container-fluid">
                <strong class="text-left">Welcome To The Computer Science Department Portal </strong><br /><br />
                <img src="images%20used/stdportal.jpg" width="30%" height="30%" class="img-responsive img-thumbnail"/>
            </div>
            
        </div>
        </div>
        </div>
    
    </div> <!--End of Container Row-->
</asp:Content>

