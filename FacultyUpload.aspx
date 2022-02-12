<%@ Page Title="eBook Upload" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FacultyUpload.aspx.cs" Inherits="FacultyUpload" %>


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
            <a href="FacultyShowNotice.aspx" class="btn"><span class="glyphicon glyphicon-inbox"></span>&nbsp;Read Notice</a>
            <br />
              <a href="FacultyUpload.aspx" class="btn btn-success"><span class="glyphicon glyphicon-upload"></span>&nbsp;Upload eBook</a>
            <br />
              <a href="FacultyEditNotice.aspx" class="btn"><span class="glyphicon glyphicon-edit"></span>&nbsp;Edit Notice</a>
            <br />
              <a href="Logout.aspx" class="btn"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Log Out</a>
            </div>
        </div>
    </div> <!--Column-->
        <div class="col-lg-9">
            <div class="panel panel-primary" style="margin-top:10px"> <!--Panel-->
            <div class="panel-heading"> <!--Panel Heading-->
                 <h3 class="panel-title">Upload eBook</h3>
             </div> <!--End of Panel Heading--> 
                <div class="panel-body">
                
                    <div class="container-fluid row">
                        <div align="center">
                            <div class="col-lg-12">
                                Upload here:<asp:FileUpload ID="eBook" runat="server" accept=".pdf" /><asp:Button ID="Upload" runat="server" Text="Upload" OnClick="Upload_Click" />
                            </div>
                         <br/>
                        <asp:Label ID="lb_status" runat="server" Text=""></asp:Label>
                         </div>
                </div>
                 </div>
        </div>
    </div>
    </div> <!--End of Container Row-->
</asp:Content>

