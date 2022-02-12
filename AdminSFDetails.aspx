<%@ Page Title="Show Details" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminSFDetails.aspx.cs" Inherits="AdminSFDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 346px;
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
              <a href="AdminAdd.aspx" class="btn"><span class="glyphicon glyphicon-export"></span>&nbsp;Add New Student or Faculty</a>
            <br />
              <a href="AdminSFDetails.aspx" class="btn btn-success"><span class="glyphicon glyphicon-book"></span>&nbsp;Edit Student/Faculty Details</a>
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
            <div class="panel panel-primary" style="margin:10px">
                <div class="panel panel-heading"><h3 class="panel-title">Details</h3></div>
                <div class=" panel-body">
                    <asp:Label ID="lb_status" runat="server" Text=""></asp:Label><br />
                    <asp:DropDownList ID="drop_sel" runat="server">
                        <asp:ListItem>---Select any option---</asp:ListItem>
                        <asp:ListItem>Faculty</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                    </asp:DropDownList>&nbsp<asp:Button ID="go" runat="server" Text="Go" OnClick="go_Click" /><br /><br />
                    <asp:GridView ID="grid_faculty" runat="server"  Width="100%" OnRowDeleting="grid_faculty_RowDeleting">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
                    
               </div>
            </div>
            
        </div>
    
    </div> <!--End of Container Row-->

</asp:Content>

