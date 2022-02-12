<%@ Page Title="Notice Board" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentShowNotice.aspx.cs" Inherits="StudentShowNotice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid row"> <!--Container Row-->
    <div class="col-lg-3"> <!--Column-->
     <div class="panel panel-primary" style="margin-top:10px"> <!--Panel-->
        <div class="panel-heading"> <!--Panel Heading-->
            <h3 class="panel-title">Menu</h3>
        </div> <!--End of Panel Heading--> 
        <div class="panel-body"> <!--Panel Body-->
             <a href="StudentResumeBuilder.aspx" class="btn"><span class="glyphicon glyphicon-export"></span>&nbsp;Resume Builder</a>
            <br />
              <a href="StudentShowNotice.aspx" class="btn btn-success"><span class="glyphicon glyphicon-book"></span>&nbsp;Notice Board</a>
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
                <h3 class="panel-title">Notice Board</h3>
            </div> <!--End of Panel Heading--> 
                <div class="panel-body"> <!--Panel Body-->
                    <div class="container-fluid">
                       
                        <span id="spn" runat="server"></span>
            </div>
                </div>
                 </div>
        </div>
    
    </div> <!--End of Container Row-->

</asp:Content>

