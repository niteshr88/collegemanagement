<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #h{
            background-color:#ff4b64;
        }
        .auto-style1 {
            display: block;
            max-width: 100%;
            height: 406px;
        }
    </style>
    
    <script src="jquery-3.0.0.min.js"></script>
    <script src="bootstrap-3.3.6-dist/js/bootstrap.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="container-fluid" style="margin-top:15px">
        <!--<h3 style="text-align:center"><b>Welcome To The Computer Science Department Portal </b></h3>-->
        <div class="row jumbotron" style="margin:5px">
            <div class="col-sm-4">
                <img src="images%20used/csdp.png" class="img-responsive" />
            </div>
            <div class="col-sm-8">
                <p style="text-align:justify">Teaching and research efforts in the department encompass algorithms and theory,
                    computer vision, artificial intelligence, and data mining, bioinformatics and computational biology,
                    security, Web services, computer architectures, software engineering, and distributed systems and grid computing.
                </p>
            </div>
           </div> <!--End of Row Jumbotron-->
        <br />
        <div class="container-fluid row"><!--Image Autochange-->
                <img src="images%20used/csdp(1).jpg" class="myslide img-responsive img-thumbnail"/>
                <img src="images%20used/csdp(2).jpg" class="myslide img-responsive img-thumbnail"/> 
                <img src="images%20used/csdp(3).jpg" class="myslide img-responsive img-thumbnail"/> 
        </div>
            <script>
                 var myIndex = 0;
                 carousel();
                 function carousel() {
                 var i;
                 var x = document.getElementsByClassName("myslide");
                 for (i = 0; i < x.length; i++) {
                 x[i].style.display = "none";
                    }
                 myIndex++;
                 if (myIndex > x.length) {myIndex = 1}
                 x[myIndex-1].style.display = "block";
                setTimeout(carousel, 2000); // Change image every 2 seconds
                        }
             </script> <!--End of Image Autochange-->
    </div> <!--End of Container-->        
            
        
            

    
</asp:Content>

