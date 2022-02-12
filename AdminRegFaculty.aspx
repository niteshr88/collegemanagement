<%@ Page Title="Faculty Registration" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminRegFaculty.aspx.cs" Inherits="AdminRegFaculty" %>

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
              <a href="AdminAdd.aspx" class="btn btn-responsive btn-success"><span class="glyphicon glyphicon-export"></span>&nbsp;Add new Student or Faculty</a>
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
            <h3 class="panel-title">Faculty Registration Form</h3>
        </div> <!--End of Panel Heading--> 
        <div class="panel-body"> <!--Panel Body-->

    <div class="container"> <!--Multiview Container-->
    <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server"> <!--View 1-->
                <div class="form-group"> <!--Name-->
            <br />
            <asp:Label ID="lb_name" runat="server" Text="Enter Your Name" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
             <asp:TextBox placeholder="Enter Your Name" ID="txt_name" runat="server" class="form-control" required="Name" pattern="[^0-9][^!@#$%^&*][a-zA-Z][^0-9][^!@#$%^&*]{4,20}"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            
        </div>
        </div>

        <div class="form-group"> <!--DOB-->
            <br />
            <asp:Label ID="lb_dob" runat="server" Text="Date of Birth" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
             <asp:TextBox placeholder="Enter your Branch" ID="txt_dob" runat="server" class="form-control" TextMode="Date" required max="1990-12-31" min="1988-01-01"></asp:TextBox>
        </div>
        </div>

        <div class="form-group"> <!--Gender-->
            <br />
            <asp:Label ID="lb_gender" runat="server" Text="Gender" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7" style="text-align:left;margin-top:2px;">
            <asp:RadioButton ID="male" runat="server" Text="Male" GroupName="gender"/>&nbsp;&nbsp;
            <asp:RadioButton ID="female" runat="server" Text="Female" GroupName="gender"/>
        </div>
        </div>

        <div class="form-group"> <!--Mobile-->
            <br />
            <asp:Label ID="lb_mob" runat="server" Text="Mobile Number" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
            <asp:TextBox placeholder="Enter your Mobile No." ID="txt_mob" runat="server" class="form-control" MaxLength="10" required pattern="(7|8|9)[0-9]{9}" title="Number must be 10 digit staring from 7,8,9"></asp:TextBox>        
        </div>
        </div>
        
        <div class="form-group"> <!--Department-->
            <br />
          <asp:Label ID="lb_department" runat="server" Text="Department" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
           <asp:TextBox placeholder="Enter your Department" ID="txt_department" runat="server" class="form-control" required pattern="[a-zA-z]{3,10}" title="branch should not contain numbers,special character,symbols"></asp:TextBox>
        </div>
        </div>

        <div class="form-group"> <!--Degree-->
            <br />
            <asp:Label ID="lb_degree" runat="server" Text="Degree" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
        <asp:TextBox placeholder="Enter Degree" ID="txt_degree" runat="server" class="form-control" required></asp:TextBox>
        </div>
        </div>

        <div class="form-group"> <!--Joining Year-->
            <br />
            <asp:Label ID="lb_join" runat="server" Text="Joining Year" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
            <asp:TextBox placeholder="Enter your Joining Year" ID="txt_join" runat="server" class="form-control" required pattern="[2][0-9]{3}" MaxLength="4" ></asp:TextBox>        
        </div>

        <div class="form-group" style="margin-top:15px;margin-bottom:35px"> <!--Email ID-->
              <br />
              <asp:Label ID="Label1" runat="server" Text="Email ID" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
              <div class="input-group input-group-sm">
              <span class="input-group-addon">@</span>
              <asp:TextBox placeholder="Enter your Email ID" ID="txt_userid" runat="server" TextMode="Email" class="form-control" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required title="e.g:abc@def.com"></asp:TextBox>       
        </div>
        </div>
        </div>

        <div class="form-group"> <!--Password-->
            <asp:Label ID="Label7" runat="server" Text="Password" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
              <asp:TextBox placeholder="Enter Password" ID="txt_pass" runat="server" TextMode="Password" class="form-control" required="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="password must contain a upper case,a lower case and one number and should be longer than 8 digit"></asp:TextBox>
              <asp:HiddenField ID="hidden_pass" runat="server" />       
        </div>
        </div>

        <br /><br />

        <div class="form-group col-sm-8">
        <asp:Button ID="btn_next" runat="server" Text="Next" OnClick="Next" Width="60px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_clear" runat="server" Text="Clear" OnClick="Clear" Width="60px" style="height: 26px" /> <br /><br />
            <asp:Label runat="server" Text="" id="lb_blank"></asp:Label>       
        </div>
        </asp:View> <!--end of view 1-->


            <asp:View ID="View2" runat="server"> <!--View 2-->
                <asp:Label runat="server" Text="" id="lb_status2"></asp:Label>
                <div class="form-group"> <!--Name-->
            <br />
            <asp:Label ID="Label2" runat="server" Text="Your Name : " class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
            <asp:Literal ID="ltr_name" runat="server"></asp:Literal>
        </div>
        </div>

        <div class="form-group"> <!--DOB-->
            <br />
            <asp:Label ID="Label3" runat="server" Text="Date of Birth : " class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
             <asp:Literal ID="ltr_dob" runat="server"></asp:Literal>
        </div>
        </div>

        <div class="form-group"> <!--Gender-->
            <br />
            <asp:Label ID="Label4" runat="server" Text="Gender : " class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
            <asp:Literal ID="ltr_gender" runat="server"></asp:Literal>
        </div>
        </div>

        <div class="form-group"> <!--Mobile-->
            <br />
            <asp:Label ID="Label8" runat="server" Text="Mobile Number : " class="col-sm-2 control-label" ></asp:Label>
        <div class="col-sm-7">
            <asp:Literal ID="ltr_mob" runat="server"></asp:Literal>       
        </div>
        </div>
        
        <div class="form-group"> <!--Department-->
            <br />
             <asp:Label ID="Label9" runat="server" Text="Your Department : " class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
             <asp:Literal ID="ltr_department" runat="server"></asp:Literal>
        </div>
        </div>

        <div class="form-group"> <!--Degree-->
            <br />
            <asp:Label ID="Label10" runat="server" Text="Your Degree : " class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
             <asp:Literal ID="ltr_degree" runat="server"></asp:Literal>
        </div>
        </div>

        <div class="form-group"> <!--Joining Year-->
            <br />
            <asp:Label ID="Label11" runat="server" Text="Joining Year : " class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
            <asp:Literal ID="ltr_join" runat="server"></asp:Literal>
        </div>

        <div class="form-group" style="margin-top:15px;margin-bottom:35px"> <!--Email ID-->
              <br />
              <asp:Label ID="Label12" runat="server" Text="Your Email ID :" class="col-sm-2 control-label" ></asp:Label>
        <div class="col-sm-7">
              <asp:Literal ID="ltr_userid" runat="server"></asp:Literal>
        </div>
        </div>

            
        <br /><br />

        <div class="form-group">
        <asp:Button ID="btn_back" runat="server" Text="Back" OnClick="Back"  Width="60px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="Submit" Width="60px" /><br /> <br />
            <asp:Label runat="server" Text="" id="lb_status"></asp:Label>
        </div>
        
       </asp:View> <!--end of view 2-->


        </asp:MultiView>
        </div>
        </div> <!-- End of Multiview Container-->
            </div> <!--End of Panel Body-->
        </div> <!--End of Panel-->

        </div>
    
   

</asp:Content>

