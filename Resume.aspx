<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Resume.aspx.cs" Inherits="Resume" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Resume</title>
     <link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap.min.css" />
    <script src="bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
    <script src="bootstrap-3.3.6-dist/js/jquery.js"></script>
    <link href="MasterPageDesign.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">
            
         <div class="panel panel-primary" style="margin-top:10px"> <!--Panel-->
                <div class="panel-heading"> <!--Panel Heading-->
            <span id="Span1" runat="server"></span>
            <h3 class="panel-title text-center">Resume</h3>
                </div> <!--End of Panel Heading--> 
                <div class="panel-body"> <!--Panel Body-->
            <div class="text-left">
                <b>&nbsp;&nbsp;<span id="name" runat="server"></span></b><br />
                   &nbsp;&nbsp;<span id="add" runat="server"></span><br />
                   &nbsp;&nbsp;<span id="userid" runat="server"></span><br />
                   &nbsp;&nbsp;<span id="mob" runat="server"></span><br />
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
                             <td>
                                 <asp:Label ID="lb_school10" runat="server" Text=""></asp:Label></td>
                             <td><asp:Label ID="lb_board10" runat="server" Text=""></asp:Label></td>
                             <td><asp:Label ID="lb_highschool" runat="server" Text=""></asp:Label></td>
                             <td><asp:Label ID="lb_percent10" runat="server" Text=""></asp:Label></td>
                         </tr>
                         <tr>
                             <td>12th</td>
                             <td><asp:Label ID="lb_school12" runat="server" Text=""></asp:Label></td>
                             <td><asp:Label ID="lb_board12" runat="server" Text=""></asp:Label></td>
                             <td><asp:Label ID="lb_inter" runat="server" Text=""></asp:Label></td>
                             <td><asp:Label ID="lb_percent12" runat="server" Text=""></asp:Label></td>
                         </tr>
                         <tr>
                             <td>Graduation</td>
                             <td><asp:Label ID="lb_grad" runat="server" Text=""></asp:Label></td>
                             <td><asp:Label ID="lb_univer" runat="server" Text=""></asp:Label></td>
                             <td><asp:Label ID="lb_gra" runat="server" Text=""></asp:Label></td>
                             <td><asp:Label ID="lb_percentgrad" runat="server" Text=""></asp:Label></td>
                         </tr>
                         </tbody>
                         </table>
                </div>
                </div>

            <div class="panel panel-default"><!--Language-->
                <div class="panel-heading">
                    <h4 class="panel-title text-left">LANGUAGES</h4>
                </div>
                &nbsp;&nbsp;<asp:Label ID="lb_language" runat="server" Text="Label"></asp:Label>
                </div>

            <div class="panel panel-default"><!--OS-->
                <div class="panel-heading">
                    <h4 class="panel-title text-left">OPERATING SYSTEMS</h4>
                </div>
                &nbsp;&nbsp;<asp:Label ID="lb_os" runat="server" Text="Label"></asp:Label>
                </div>

                <div class="panel panel-default"><!--Hobby-->
                <div class="panel-heading">
                    <h4 class="panel-title text-left">HOBBIES</h4>
                </div>
                   &nbsp;&nbsp;<asp:Label ID="lb_hobby" runat="server" Text=""></asp:Label>
                </div>
                        
                <div class="panel panel-default"><!--Interest-->
                <div class="panel-heading">
                    <h4 class="panel-title text-left">INTERESTS</h4>
                </div>
                    &nbsp;&nbsp;<asp:Label ID="lb_interest" runat="server" Text=""></asp:Label>
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
                            <asp:Label ID="lb_name" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="lb_fname" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="lb_add" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="lb_mob" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="lb_blood" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="lb_lan" runat="server" Text=""></asp:Label><br />
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
                         <b class="text-left">Place:</b>
                         <asp:Label ID="lb_place" runat="server"></asp:Label>
                         </div>
                     <div class="col-lg-6 text-right">
                         <b class="text-right">(<asp:Literal ID="ltr_name" runat="server"></asp:Literal>)</b>
                     </div >
                       <br /><br /><br />
                 


            </div><!--End of Main Panel-->

    </div>
        </div>
    </form>
</body>
</html>
