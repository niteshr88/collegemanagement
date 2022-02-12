<%@ Page Title="Resume Builder" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentResumeBuilder.aspx.cs" Inherits="StudentResumeBuilder" %>

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
              <a href="StudentResumeBuilder.aspx" class="btn btn-success"><span class="glyphicon glyphicon-export"></span>&nbsp;Resume Builder</a>
            <br />
              <a href="StudentShowNotice.aspx" class="btn"><span class="glyphicon glyphicon-book"></span>&nbsp;Notice Board</a>
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
            <div class="panel panel-primary" style="margin:10px; padding:10px"> <!--Panel-->
        <div class="panel-heading"> <!--Panel Heading-->
            <span id="Span1" runat="server"></span>
            <h3 class="panel-title">Resume</h3>
        </div> <!--End of Panel Heading--> 
        <div class="panel-body"> <!--Panel Body-->
            <div class="text-left">
                <b><span id="name" runat="server"></span></b><br />
                   <span id="add" runat="server"></span><br />
                   <span id="userid" runat="server"></span><br />
                   <span id="mob" runat="server"></span><br />
             </div> <!--Top Left-->

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title text-left">CAREER OBJECTIVE</h4>
                </div>
                <div class="text-left">
                    <h5>&nbsp;&nbsp;To be Interned in a company that offers ample opportunities.</h5>
                </div>
            </div><!-- Career-->

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title text-left">BASIC ACADEMIC CREDENTIALS</h4>
                </div>
                <div class=" table-responsive">
                     <table class="table">
                         <thead>
                             <tr>
                             <th>Qualifications</th>
                             <th>School/College</th>
                             <th>Board/University</th>
                             <th>Passing Year</th>
                             <th>Percentage</th>
                         </tr>
                         </thead>
                         <tbody>
                             <tr>
                             <td>10th</td>
                             <td><asp:TextBox ID="txt_school10" runat="server"></asp:TextBox></td>
                             <td><asp:TextBox ID="txt_board10" runat="server"></asp:TextBox></td>
                             <td><span id="highschool" runat="server"></span></td>
                             <td><asp:TextBox ID="txt_percent10" runat="server"></asp:TextBox></td>
                         </tr>
                         <tr>
                             <td>12th</td>
                             <td><asp:TextBox ID="txt_school12" runat="server"></asp:TextBox></td>
                             <td><asp:TextBox ID="txt_board12" runat="server"></asp:TextBox></td>
                             <td><span id="inter" runat="server"></span></td>
                             <td><asp:TextBox ID="txt_percent12" runat="server"></asp:TextBox></td>
                         </tr>
                         <tr>
                             <td>Graduation</td>
                             <td><asp:TextBox ID="txt_grad" runat="server"></asp:TextBox></td>
                             <td><asp:TextBox ID="txt_university" runat="server"></asp:TextBox></td>
                             <td><span id="grad" runat="server"></span></td>
                             <td><asp:TextBox ID="txt_percentgrad" runat="server"></asp:TextBox></td>
                         </tr>
                         </tbody>
                     </table>
                </div>
                </div>

            <div class="panel panel-default"><!--Language-->
                <div class="panel-heading">
                    <h4 class="panel-title text-left">LANGUAGES</h4>
                </div>
                <span id="lang" runat="server"></span>
                </div>

            <div class="panel panel-default"><!--OS-->
                <div class="panel-heading">
                    <h4 class="panel-title text-left">OPERATING SYSTEMS</h4>
                </div>
                <span id="os" runat="server"></span>
                </div>

                <div class="panel panel-default"><!--Hobby-->
                <div class="panel-heading">
                    <h4 class="panel-title text-left">HOBBIES</h4>
                </div>
                   <asp:TextBox ID="txt_hobby" runat="server" placeholder="Enter Your Hobbies" Width="100%"></asp:TextBox>
                </div>
                        
                <div class="panel panel-default"><!--Interest-->
                <div class="panel-heading">
                    <h4 class="panel-title text-left">INTERESTS</h4>
                </div>
                    <asp:TextBox ID="txt_interest" runat="server" placeholder="Enter Your Interest" Width="100%"></asp:TextBox>
                </div>

                <div class="panel panel-default"><!--Personal Details-->
                <div class="panel-heading">
                    <h4 class="panel-title text-left">PERSONAL DETAILS</h4>
                </div>
                    <div class="panel-body">
                        <div class="col-md-5">
                            <b>Name</b><br />
                            <b>Father's Name</b><br />
                            <b>Address</b><br />
                            <b>Contact No.</b><br />
                            <b>Blood Group</b><br />
                            <b>Languages</b>
                        </div>
                        <div class="col-md-2">
                            <b>:</b><br />
                            <b>:</b><br />
                            <b>:</b><br />
                            <b>:</b><br />
                            <b>:</b><br />
                            <b>:</b>
                        </div>
                        <div class="col-md-5">
                            <asp:TextBox ID="txt_name" runat="server" Height="20%" Width="100%" placeholder="Enter Your Name" AutoPostBack="True"></asp:TextBox>
                            <asp:TextBox ID="txt_fname" runat="server" Height="20%" Width="100%" placeholder="Enter Your Father's Name"></asp:TextBox>
                            <asp:TextBox ID="txt_add" runat="server" Height="20%" Width="100%" placeholder="Enter Your Address"></asp:TextBox>
                            <asp:TextBox ID="txt_mob" runat="server" Height="20%" Width="100%" placeholder="Enter Your Mobile Number"></asp:TextBox>
                            <asp:TextBox ID="txt_blood" runat="server" Height="20%" Width="100%" placeholder="Enter Your Blood Group"></asp:TextBox>
                            <asp:TextBox ID="txt_lang" runat="server" Height="20%" Width="100%" placeholder="Enter Languages"></asp:TextBox>
                        </div>
                    </div>
                    </div>

                     <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title text-left">STRENGTH</h4>
                        </div>
                        <div class="text-left">
                            <h5>&nbsp;&nbsp;Building relationships, Communication skill</h5>
                        </div>
                    </div>

                <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title text-left">DECLARATION</h4>
                </div>
                <div class="text-left">
                    <h5>&nbsp;&nbsp;I hereby declare that the above written particulars are up to the mark.</h5>
                </div>
                 </div>
                    <br /><br />
                     <div class="col-lg-6 text-left">
                         <b class="text-left">Place: </b>
                         <asp:TextBox ID="txt_place" runat="server" Width="40%" Height="20%"></asp:TextBox>
                         </div>
                                            
                     <div class="col-lg-6 text-right">(<asp:Literal ID="ltr_name" runat="server">[Your Name]</asp:Literal>)
                         </div>
                       <br />
            <br />
                    <div class="col-lg-12">
                        <asp:Button ID="btn_save" runat="server" Text="Submit" OnClick="btn_save_Click" class="btn" />
                    </div>
                        


            </div><!--End of Main Panel-->

              </div>  
            
        </div>
    
    </div> <!--End of Container Row-->

</asp:Content>

