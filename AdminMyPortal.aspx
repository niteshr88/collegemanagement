<%@ Page Title="Admin MyPortal" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminMyPortal.aspx.cs" Inherits="AdminMyPortal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
              <a href="AdminAdd.aspx" class="btn-responsive"><span class="glyphicon glyphicon-export"></span>&nbsp;Add new Student or Faculty </a>
            <br />
              <a href="AdminSFDetails.aspx" class="btn-responsive"><span class="glyphicon glyphicon-book"></span>&nbsp;Edit Student/Faculty Details</a>
            <br />
              <a href="AdminNoticeEditor.aspx" class="btn"><span class="glyphicon glyphicon-export"></span>&nbsp;Post a Notice</a>
            <br />          
              <a href="AdminUpload.aspx" class="btn"><span class="glyphicon glyphicon-upload"></span>&nbsp;Upload eBook</a>
            <br />
              <a href="AdminEditNotice.aspx" class="btn"><span class="glyphicon glyphicon-edit"></span>&nbsp;Edit/Delete Notice</a>
            <br />
              <a href="Logout.aspx" class="btn"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Log Out</a>
            </div><!--End of Panel Body-->
        </div> <!--End of Panel-->
    </div> <!--Column-->
        <div class="col-lg-9">
            <div class="panel panel-primary" style="margin-top:10px"> <!--Panel-->
        <div class="panel-heading"> <!--Panel Heading-->
            <span id="Span1" runat="server"></span>
            <h3 class="panel-title">My Portal</h3>
        </div> <!--End of Panel Heading--> 
        <div class="panel-body"> <!--Panel Body-->
            <div class="container-fluid">
                <strong class="text-left">Welcome To The Computer Science Department Portal </strong><br /><br />
                <img src="images%20used/adminportal.jpg" width="50%" class="img-responsive img-thumbnail"/>
            </div>
        </div>
        </div>
        </div>
    
    </div> <!--End of Container Row-->


</asp:Content>

