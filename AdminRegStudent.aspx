<%@ Page Title="Student Registration" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminRegStudent.aspx.cs" Inherits="AdminRegStudent" %>

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
              <a href="AdminAdd.aspx" class="btn-responsive btn btn-success"><span class="glyphicon glyphicon-export"></span>&nbsp;Add new Student or Faculty</a>
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
            <h3 class="panel-title">Student Registration Form</h3>
        </div> <!--End of Panel Heading--> 
        <div class="panel-body"> <!--Panel Body-->
    <div class="container">
        <div class="row">
            <h3>---Personal Details---</h3>
              <div class="form-group"> <!--Name-->
            <br />
            <asp:Label ID="lb_name" runat="server" Text="Name" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
             <asp:TextBox placeholder="Enter Your Name" ID="txt_name" runat="server" class="form-control" required="Name" pattern="[^0-9][^!@#$%^&*][a-zA-Z][^0-9][^!@#$%^&*]{20,3}" title="Name cannot contain special characters or numbers"></asp:TextBox>
        </div>
        </div>

        <div class="form-group"> <!--DOB-->
            <br />
            <asp:Label ID="lb_dob" runat="server" Text="Date of Birth" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
             <asp:TextBox placeholder="" ID="txt_dob" runat="server" class="form-control" TextMode="Date" required max="1998-12-31" min="1988-01-01"></asp:TextBox>
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
            <asp:TextBox placeholder="Enter Your Mobile No." ID="txt_mob" runat="server" class="form-control" MaxLength="10" required pattern="(7|8|9)[0-9]{9}" title="Number must be 10 digit staring from 7,8,9"></asp:TextBox>        
        </div>
        </div>
        
        <div class="form-group"> <!--Address-->
            <br />
          <asp:Label ID="lb_department" runat="server" Text="Address" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
           <asp:TextBox placeholder="Enter Your Address" ID="txt_address" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
        </div>
        </div>

        <div class="form-group" style="margin-top:35px;margin-bottom:35px"> <!--Email ID-->
              <br />
              <asp:Label ID="Label1" runat="server" Text="Email ID" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
              <div class="input-group input-group-sm">
              <span class="input-group-addon">@</span>
              <asp:TextBox placeholder="Enter Your Email ID" ID="txt_userid" runat="server" TextMode="Email" class="form-control" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required title="e.g:abc@def.com"></asp:TextBox>       
        </div>
        </div>
        </div>

        <div class="form-group"> <!--Password-->
            <asp:Label ID="Label7" runat="server" Text="Password" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
              <asp:TextBox placeholder="Enter Your Password" ID="txt_pass" runat="server" TextMode="Password" class="form-control" required="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="password must contain a upper case,a lower case and one number and should be longer than 8 digit"></asp:TextBox>
              <asp:HiddenField ID="hidden_pass" runat="server" />       
        </div>
        </div>
    </div> 
        <!--End of Personal Details Row-->

        
        <div class="row"> <!--Row-->
            <h3>---Academic Details---</h3>
              <div class="form-group"> <!--Enrollment Number-->
            <br />
            <asp:Label ID="Label2" runat="server" Text="Enrollment Number" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
             <asp:TextBox placeholder="Enter Your Enrollment Number" ID="txt_rollno" runat="server" class="form-control" required pattern="[0-9][^a-zA-Z!@#$%^*]{1,8}" MaxLength="8"></asp:TextBox>
        </div>
        </div>

        <div class="form-group"> <!--Batch-->
            <br />
            <asp:Label ID="Label3" runat="server" Text="Batch" class="col-sm-2 control-label"  ></asp:Label>
        <div class="col-sm-7">
             <asp:TextBox placeholder="Enter Your Batch" ID="txt_batch" runat="server" class="form-control" required  MaxLength="4" title="Batch Year cannot contain special symbols or character and must be between(2000-2020)"></asp:TextBox>
        </div>
        </div>

       <div class="form-group"> <!--Degree-->
            <br />
            <asp:Label ID="Label8" runat="server" Text="Degree" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7 text-left">
         <asp:RadioButton ID="btech" runat="server" groupname="degree" Text="B.Tech/B.E."/>
         &nbsp;&nbsp;&nbsp;
         <asp:RadioButton ID="mtech" runat="server" groupname="degree" Text="M.Tech"  />
            
        </div>
        </div>

        <div class="form-group"> <!--Branch-->
            <br />
            <asp:Label ID="Label5" runat="server" Text="Branch" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7 text-left">
           <asp:RadioButton ID="Cs" runat="server" Text="Computer Science" GroupName="branch"/>&nbsp&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="IT" runat="server" Text="Information Technology" GroupName="branch"/>
            
        </div>
        </div> 

        <div class="form-group"> <!--Joining Year-->
            <br />
            <asp:Label ID="Label4" runat="server" Text="Joining Year" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
            <asp:TextBox placeholder="Enter Your Joining Year" ID="txt_join" runat="server" class="form-control" MaxLength="4" required pattern="[2][0-9]{3}" ></asp:TextBox>        
        </div>
        </div> 
        </div> 
        <!--End of Academic Details Row-->

        <div class="row"> <!--Row-->
            <h3>---Academic Achievement Details---</h3>
              <div class="form-group"> <!--Academic Achievement-->
            <br />
            <asp:Label ID="Label6" runat="server" Text="Academic Achievement" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
             <asp:TextBox placeholder="Enter Your Academic Achievement" ID="txt_acdachvmt" runat="server" class="form-control"></asp:TextBox>
        </div>
        </div>

        <div class="form-group"> <!--Sports Achievement-->
            <br />
            <asp:Label ID="Label9" runat="server" Text="Sports Achievement" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
             <asp:TextBox placeholder="Enter Your Sports Achievement" ID="txt_sports" runat="server" class="form-control"></asp:TextBox>
        </div>
        </div>

       <div class="form-group"> <!--Cultural Achievement-->
            <br />
            <asp:Label ID="Label10" runat="server" Text="Cultural Achievement" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
        <asp:TextBox placeholder="Enter Your Cultural Achievement" ID="txt_cultural" runat="server" class="form-control"></asp:TextBox>
        </div>
        </div>

        <div class="form-group"> <!--Other Achievement-->
            <br />
            <asp:Label ID="Label11" runat="server" Text="Other Achievement" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
            <asp:TextBox placeholder="Enter Your Other Achievement" ID="txt_other" runat="server" class="form-control"></asp:TextBox>        
        </div>
        </div> 

        <div class="form-group"> <!--Graduation Year-->
            <br />
            <asp:Label ID="Label12" runat="server" Text="Graduation Year" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
            <asp:TextBox placeholder="Enter Your Graduation Completion Year" ID="txt_grad" runat="server" class="form-control" MaxLength="4" required pattern="[2][0-9]{3}" ></asp:TextBox>        
        </div>
        </div> 

        <div class="form-group"> <!--12th Year-->
            <br />
            <asp:Label ID="Label13" runat="server" Text=" Senior Secondary" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
            <asp:TextBox placeholder="Enter Your Senior Secondary Completion Year" ID="txt_sensec" runat="server" class="form-control" MaxLength="4" required pattern="[2][0-9]{3}" ></asp:TextBox>        
        </div>
        </div>
            
        <div class="form-group"> <!--10th Year-->
            <br />
            <asp:Label ID="Label14" runat="server" Text=" Secondary" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
            <asp:TextBox placeholder="Enter Your Secondary Completion Year" ID="txt_sec" runat="server" class="form-control" MaxLength="4" required pattern="[2][0-9]{3}" ></asp:TextBox>        
        </div>
        </div> 
        </div> <!--End of Academic Achievement Details Row-->

        <div class="row"> <!--Row-->
            <h3>---Technical Skills Details---</h3>
              <div class="form-group"> <!--Programing Language known-->
            <br />
            <asp:Label ID="Label15" runat="server" Text="Programming Language" class="col-sm-2 control-label" ></asp:Label>
        <div class="col-sm-7">
             <asp:TextBox placeholder="Enter Programming Language You Known" ID="txt_prgm" runat="server" class="form-control" MaxLength="30"></asp:TextBox>
        </div>
        </div>

        <div class="form-group"> <!--DataBases known-->
            <br />
            <asp:Label ID="Label16" runat="server" Text="Databases" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
             <asp:TextBox placeholder="Enter Databases You Known" ID="txt_db" runat="server" class="form-control" MaxLength="30"></asp:TextBox>
        </div>
        </div>

       <div class="form-group"> <!--OS known-->
            <br />
            <asp:Label ID="Label17" runat="server" Text="Operating System" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7 text-left">
            <asp:TextBox ID="txt_os" runat="server" placeholder="Enter your operating system" class="form-control" MaxLength="30"></asp:TextBox>
        </div>
        </div>

        <div class="form-group"> <!--Software Known-->
            <br />
            <asp:Label ID="Label18" runat="server" Text="Software" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
            <asp:TextBox placeholder="Enter Software You Known" ID="txt_software" runat="server" class="form-control" MaxLength="30"></asp:TextBox>        
        </div>
        </div> 

        <div class="form-group"> <!--Other Skills-->
            <br />
            <asp:Label ID="Label19" runat="server" Text="Other Skills" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
            <asp:TextBox placeholder="Enter Other Skills You Known" ID="txt_otherskl" runat="server" class="form-control" MaxLength="30"></asp:TextBox>        
        </div>
        </div> 

        <div class="form-group"> <!--Industrial Experience-->
            <br />
            <asp:Label ID="Label20" runat="server" Text="Industrial Experience" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
            <asp:TextBox placeholder="Enter Your Industrial Experience" ID="txt_indexp" runat="server" class="form-control" MaxLength="30"></asp:TextBox>        
        </div>
        </div>
            
        <div class="form-group"> <!--Academic Project-->
            <br />
            <asp:Label ID="Label21" runat="server" Text="Academic Project" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-7">
            <asp:TextBox placeholder="Enter Academic Project Have You Done" ID="txt_acdprjct" runat="server" class="form-control" MaxLength="30"></asp:TextBox>        
        </div>
        </div> 
        </div> <!--End of Technical Skills Details Row-->
        <br />

        <div class="form-group col-sm-9" > <!--Button-->
        <asp:Button ID="btn_submit" runat="server" Text="Submit" Width="60px" OnClick="Submit"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label runat="server" Text="" id="lb_status"></asp:Label>
        </div>
        
 </div> <!--End of Container-->
 </div><!--End of Panel Body-->
 </div><!--End of Panel-->     

        </div>
    
    </div> <!--End of Container Row-->

</asp:Content>

