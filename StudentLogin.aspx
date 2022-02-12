<%@ Page Title="Student Login" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentLogin.aspx.cs" Inherits="StudentLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #login{
            background-color:#ff4b64;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="modal-dialog"> <!--Modal Dialog-->
       <div class="modal-content"> <!--Modal Content-->
           <div class="modal-header"> <!--Modal-Header-->
               <h3 class="text-center"><b>Student Login</b></h3>
           </div> <!--End of Modal-Header-->
           <div class="modal-body"> <!--Modal-Body-->
              
                   <div class="form-group">
                       <asp:TextBox id="txt_uid" class="form-control input-group-lg" runat="server" Placeholder="Enter Your Email ID"></asp:TextBox>
                   </div>
                   <div class="form-group">
                       <asp:TextBox id="txt_pass" runat="server" class="form-control input-group-lg" Placeholder="Enter Your password" TextMode="Password"></asp:TextBox>
                   </div>
                   <div class="form-group">
                       <asp:Button ID="login" runat="server" Text="Login" class="btn btn-block btn-lg btn-primary" OnClick="Login_Click"/><br/>
                       <asp:Label ID="lb_Status" runat="server" Text=""></asp:Label>
                   </div>
               
               <div class="modal-footer"> <!--Model Footer-->
                   <div class="col-md-12">
                       <asp:Button ID="btn_cancel" runat="server" Text="Cancel" class="btn btn-danger" OnClick="Cancel_Click"/>
                   </div>
               </div> <!--End of Model Footer-->
           </div> <!--End of Modal-Body-->

       </div> <!-- End of Modal Content-->
   </div> <!--End of Model Dialog-->
</asp:Content>

