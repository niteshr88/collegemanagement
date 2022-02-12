<%@ Page Title="Notice Board" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FacultyShowNotice.aspx.cs" Inherits="FacultyShowNotice" %>

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
            <h3 class="panel-title">Menu</h3>
        </div> <!--End of Panel Heading--> 
        <div class="panel-body"> <!--Panel Body-->
              <a href="FacultyNoticeEditor.aspx" class="btn"><span class="glyphicon glyphicon-export"></span>&nbsp;Post a Notice</a>
            <br />
              <a href="Faculty_ShowStudent.aspx" class="btn"><span class="glyphicon glyphicon-book"></span>&nbsp;Show Student Details</a>
            <br />  
            <a href="FacultyShowNotice.aspx" class="btn btn-success"><span class="glyphicon glyphicon-inbox"></span>&nbsp;Read Notice</a>
            <br />
              <a href="FacultyUpload.aspx" class="btn"><span class="glyphicon glyphicon-upload"></span>&nbsp;Upload eBook</a>
            <br />
              <a href="FacultyEditNotice.aspx" class="btn"><span class="glyphicon glyphicon-edit"></span>&nbsp;Edit Notice</a>
            <br />
              <a href="Logout.aspx" class="btn"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Log Out</a>
            </div>
        </div>
    </div> <!--Column-->
        <div class="col-lg-9">
            <div class="panel panel-primary" style="margin-top:10px">
                <div class="panel-heading">Notice Board</div>
                <div class="panel-body">
                
                    <div class="container-fluid">
                       
                        <span id="spn" runat="server"></span>
            
                </div>
                 </div>
        </div>
</div>
    </div> <!--End of Container Row-->
</asp:Content>

