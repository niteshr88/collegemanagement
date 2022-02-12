<%@ Page Title="Notice Post" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminNoticeEditor.aspx.cs" Inherits="AdminUploadNotice" %>

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
              <a href="AdminAdd.aspx" class="btn-responsive"><span class="glyphicon glyphicon-export"></span>&nbsp;Add new Student or Faculty</a>
            <br />
              <a href="AdminSFDetails.aspx" class="btn-responsive"><span class="glyphicon glyphicon-book"></span>&nbsp;Edit Student/Faculty Details</a>
            <br />
              <a href="AdminNoticeEditor.aspx" class="btn btn-success"><span class="glyphicon glyphicon-export"></span>&nbsp;Post a Notice</a>
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

              <div class="panel panel-primary" style="margin-top:10px">
                <div class="panel-heading">Notice</div>
                <div class="panel-body">
                    <div class="col-lg-12">
                        <asp:TextBox ID="txt_title" runat="server" Placeholder="Enter Title" Width="100%"></asp:TextBox><br /><br />
                     <asp:TextBox ID="txt_notice" runat="server" TextMode="MultiLine" Height="200px" Width="100%"  Placeholder="Enter Your Content Here!!"></asp:TextBox><br />
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="0">---Select Type---</asp:ListItem>
                        <asp:ListItem>General</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>Faculty</asp:ListItem>

                    </asp:DropDownList>&nbsp&nbsp
                    <asp:Button ID="notice_post" runat="server" Text="Post" OnClick="notice_post_Click" /><br />
                    <asp:Label ID="lb_status" runat="server" Text=""></asp:Label>
                    </div>
                     

                </div>
                </div>

        </div>
    
    </div> <!--End of Container Row-->

</asp:Content>

