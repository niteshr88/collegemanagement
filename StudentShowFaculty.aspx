<%@ Page Title="Faculty Details" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentShowFaculty.aspx.cs" Inherits="StudentShowFaculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="container-fluid row"> <!--Container Row-->
    <div class="col-lg-3"> <!--Column-->
     <div class="panel panel-primary" style="margin-top:10px"> <!--Menu Panel-->
        <div class="panel-heading"> <!--Panel Heading-->
            <h3 class="panel-title">Menu</h3>
        </div> <!--End of Panel Heading--> 
        <div class="panel-body"> <!--Panel Body-->
              <a href="StudentResumeBuilder.aspx" class="btn"><span class="glyphicon glyphicon-export"></span>&nbsp;Resume Builder</a>
            <br />
              <a href="StudentShowNotice.aspx" class="btn"><span class="glyphicon glyphicon-book"></span>&nbsp;Notice Board</a>
            <br />
             <a href="StudentShowFaculty.aspx" class="btn btn-success"><span class="glyphicon glyphicon-inbox"></span>&nbsp;Faculty Info</a>
            <br />
            <a href="StudentDownload.aspx" class="btn"><span class="glyphicon glyphicon-book"></span>&nbsp;eBook Download</a>
            <br />  
            <a href="Logout.aspx" class="btn"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Log Out</a>
            </div>  <!--End of Panel Body-->
        </div> <!--End of Menu Panel-->
    </div> <!--End of Column-->
        <div class="col-lg-9">
            <div class="panel panel-primary" style="margin-top:10px">
                <div class="panel-heading">Faculty Details</div>
                <div class="panel-body">
                    <div>

                        <asp:GridView ID="GridView1" runat="server" Width="100%"></asp:GridView>
                        <asp:label runat="server" ID="lb_status"></asp:label>
                </div>
                    </div>
        </div>
            </div>
    
    </div> <!--End of Container Row-->

</asp:Content>

