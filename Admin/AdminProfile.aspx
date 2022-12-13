<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="WRS2big_Web.Admin.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form runat="server">
        <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">
            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
 
                    <div class="pcoded-content">
                        <!-- Page-header start -->
                        <div class="page-header">
                            <div class="page-block">
                                <div class="row align-items-center">
                                    <div class="col-md-8">
                                        <div class="page-header-title">
                                            <h5 class="m-b-10">ADMIN PROFILE </h5>
                                            <h6 class="m-b-0">2BiG: Water Refilling Station Management System</h6>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="breadcrumb-title">
                                            <li class="breadcrumb-item">
                                                <a href="/Admin/AdminIndex"> <i class="fa fa-home"></i> </a>
                                            </li>
                                            <li class="breadcrumb-item">
                                                <a href="/Admin/AdminIndex">Dashboard</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Page-header end -->
                        <div class="pcoded-inner-content" <%--style="background-color:#bae1ff"--%>>
                            <!-- Main-body start -->
                            <div class="main-body" >
                                <div class="page-wrapper">
                                    <!-- Page-body start -->
                                            <div class="row">
                                            <%-- <div class="col-xl-12 col-md-12" style="background-color:lightblue">--%>
                                                <div class="col-xl-4 col-md-12 " >
                                                <div class="card " style="background-color:	#deffea">
                                                    <div class="card-header">
                                                        <h5>My Profile</h5>
                                                        <div class="card-header-right">
                                                            <ul class="list-unstyled card-option">
                                                                <li><i class="fa fa fa-wrench open-card-option"></i></li>
                                                                <li><i class="fa fa-window-maximize full-card"></i></li>
                                                                <li><i class="fa fa-minus minimize-card"></i></li>
                                                                <li><i class="fa fa-refresh reload-card"></i></li>
                                                                <li><i class="fa fa-trash close-card"></i></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                  <div class="main-menu-header">
                                                      <center>
                                                     <asp:ImageButton ID="ImageButton_new" class="img-100 img-radius" style="width:200px" src="/images/rhea.png" runat="server" />
                                                          <br />
                                                          <h6 style="color:black;font-size:16px"> TRINIDAD, RHEA MAE A.</h6> <h8>Admin</h8>
                                                          <br />
                                                           <br />
                                                      </center>
                                                          
                                                          <center> 
                                                              <asp:FileUpload ID="FileUpload1" runat="server" /> <br />
                                                               <h7 style="background-color:transparent;color:black">Change Admin Picture</h7> 
                                                          </center>
                                                      
                                                  </div>
                                                    <hr />

                                                    <div class="nav-tabs col-xl-8 ">
<%--                                                        <ul class=" nav nav-tabs" style="font-family:Arial, Helvetica, sans-serif   ">
                                                            <li class="d-inline-block" style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" >
                                                                <a data-toggle="tab" class="active togglebtn btn waves-effect text-center " href="#home" style="background-color:transparent;font-size:18px;color:black"><i class=" ti-user "></i> Manage Profile</a>
                                                        
                                                            </li> 
                                                            <li class="d-inline-block" style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">
                                                                <a data-toggle="tab" class="active togglebtn btn waves-effect text-center active" href="#about" style="background-color:transparent;font-size:18px;color:black"> <i class=" ti-settings "></i>Settings</a>

                                                            </li>
                                                            <li class="d-inline-block" style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">
                                                                <a data-toggle="tab" class="active togglebtn btn waves-effect text-center active" href="#Subscription" style="background-color:transparent;font-size:18px;color:black"> <i class="ti-credit-card"></i>Subscription</a>                                                               
                                                            </li>
                                                            
                                                            <li  style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">
                                                                <a data-toggle="tab" class="active togglebtn btn waves-effect text-center active" href="#about" style="background-color:transparent;font-size:18px;color:black"> <i class="ti-layout-sidebar-left"></i>Logout</a>                                                               

                                                            </li>
                                                        </ul>--%>
                                                            <div class="nav nav-tabs" style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;color:black">
                                                                <button class="active btn waves-effect text-center" style="background-color:transparent;font-size:20px;"><a data-toggle="tab" href="#ManageProfile"><i class=" ti-user "></i> Update Profile</a></button> 
                                                                 <button class="active btn waves-effect text-center" style="background-color:transparent;font-size:20px;"><a data-toggle="tab" href="#Settings"><i class=" ti-settings "></i>Profile Settings</a></button> 
                                                               <button class="active btn waves-effect text-center" style="background-color:transparent;font-size:20px;"><a data-toggle="tab" href="##"><i class=" ti-layout-sidebar-left"></i>Logout</a></button> 
                                                               
                                                            </div>
                                                    </div>

                                                </div>
                                            </div>

                                       <%-- </div>--%>
                                            <div class="col-xl-8 col-md-12">
                                                <div class="card" style="background-color:#f2e2ff">
                                                    <div class="card-header">
                                                        <h5>PROFILE MANAGEMENT</h5>
                                                        <div class="card-header-right">
                                                            <ul class="list-unstyled card-option">
                                                                <li><i class="fa fa fa-wrench open-card-option"></i></li>
                                                                <li><i class="fa fa-window-maximize full-card"></i></li>
                                                                <li><i class="fa fa-minus minimize-card"></i></li>
                                                                <li><i class="fa fa-refresh reload-card"></i></li>
                                                                <li><i class="fa fa-trash close-card"></i></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="card-block">
                                                        <div class="table-responsive">
                                                            <div class="tab-content">
                                                            <div class="tab-pane active" id="Profile">
                                                                <h6>Personal Information</h6>
                                                                <hr>
                                                                  <form class="form" action="##" method="POST" id="ProfilePage">
                                                                      <div class="form-group">                
                                                                        <div class="col-xs-12" style="font-size:16px">
                                                                           <h5>Firstname:</h5> 
                                                                              <p class=" btn btn-round waves-effect text-center" style="background-color:#bae1ff;font-size:18px;color:black;font-family:Bahnschrift;width:700px">First Name</p>
                                                                            <br>
                                                                            <h5>Middlename: </h5>
                                                                            <p class=" btn   btn-round waves-effect text-center" style="background-color:#bae1ff;font-size:18px;color:black;font-family:Bahnschrift;width:700px">Middle Name</p><br>
                                                                            <h5>Lastname: </h5>
                                                                            <p class=" btn  btn-round waves-effect text-center" style="background-color:#bae1ff;font-size:18px;color:black;font-family:Bahnschrift;width:700px">Last Name</p><br>
                                                                             <h5>Contact number:  </h5>
                                                                            <p class=" btn  btn-round waves-effect text-center" style="background-color:#bae1ff;font-size:18px;color:black;font-family:Bahnschrift;width:700px">Contact number</p><br> 
                                                                              <h5>Email Address: </h5>
                                                                            <p class=" btn  btn-round waves-effect text-center" style="background-color:#bae1ff;font-size:18px;color:black;font-family:Bahnschrift;width:700px">Email Address</p><br>  
                                                                               <h5>Address:  </h5>
                                                                            <p class=" btn  btn-round waves-effect text-center" style="background-color:#bae1ff;font-size:18px;color:black;font-family:Bahnschrift;width:700px">Address</p><br>  
                                                                                             
                                                                          </div>
                                                                      </div>

                                                                </form>
              
                                                             
              
                                                             </div><!--/SETTINGS TAB-pane-->
                                                             <div class="tab-pane" id="Settings">
               
                                                               <h6>Profile Settings and Privacy</h6>
               
                                                               <hr> <center>
                                                                   <button class="active btn btn-round waves-effect text-center" style="background-color:#bae1ff;font-size:20px;"><a data-toggle="tab" href="#ManageProfile"><i class=" ti-key "></i> Change Password</a></button> 
                                                                    </center>
                                                                     

               
                                                             </div><!--/ SETTINGS tab-pane-->


                                                             <div class="tab-pane" id="ManageProfile">
                    
                                                                          <h6>Edit Profile</h6> <hr />
                                                              
                                                                  <form class="form" action="##" method="post" id="ManageProfilePage">
                                                                  <div class="form-group">                         
                                                                          <div class="col-xs-6">
                                                                              <label for="firstname"><h4>First name</h4></label>
                                                                              <input type="text" class="form-control" name="first_name" id="firstname" placeholder="first name" title="enter your first name if any.">
                                                                          </div>
                                                                      </div>
                                                                      <div class="form-group">                          
                                                                          <div class="col-xs-6">
                                                                            <label for="lastname"><h4>Last name</h4></label>
                                                                              <input type="text" class="form-control" name="last_name" id="lastname" placeholder="last name" title="enter your last name if any.">
                                                                          </div>
                                                                      </div>         
                                                                      <div class="form-group">                         
                                                                          <div class="col-xs-6">
                                                                              <label for="mid_name"><h4>Middle Name (Optional)</h4></label>
                                                                              <input type="text" class="form-control" name="mid_name" id="mid_name" placeholder="enter middle name " title="enter your middle name if any.">
                                                                          </div>
                                                                      </div>
          
                                                                      <div class="form-group">
                                                                          <div class="col-xs-6">
                                                                             <label for="contactno"><h4>Mobile</h4></label>
                                                                              <input type="number" class="form-control" name="contact_num" id="contactno" placeholder="enter mobile number" title="enter your mobile number if any.">
                                                                          </div>
                                                                      </div>
                                                                      <div class="form-group">
                          
                                                                          <div class="col-xs-6">
                                                                              <label for="email"><h4>Email</h4></label>
                                                                              <input type="email" class="form-control" name="email" id="email" placeholder="you@email.com" title="enter your email.">
                                                                          </div>
                                                                      </div>
                                                                         <div class="form-group">                          
                                                                          <div class="col-xs-6">
                                                                              <label for="address"><h4>Address</h4></label>
                                                                              <input type="address" class="form-control" id="address" placeholder="enter address" title="enter your address">
                                                                          </div>
                                                                      </div>
                                                                     
                                                                      <div class="form-group">
                                                                           <div class="col-xs-12">
                                                                                <br>
                                                                                <button class=" btn waves-effect text-center" style="background-color:#bae1ff;font-size:18px;color:black;font-family:Bahnschrift">Update</button>
                                                                               <!-- <button class="btn btn-lg btn-success pull-left" type="submit" name="update"><i class="glyphicon glyphicon-ok-sign"></i> Update Profile</button>-->
                                                                                   <button class=" btn waves-effect text-center pull-right" style="background-color:#bae1ff;font-size:18px;color:black;font-family:Bahnschrift">Back</button>
                                                                             <%--  <button class="btn btn-lg btn-outline-danger pull-right" style=" color: #FA8072; border-color: #FA8072 " type="close"><a href="dashboard.php"><i class="glyphicon glyphicon-backward"></i>Exit  </a> </button>--%>
                                                                                <!--<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>-->
                                                                            </div>
                                                                      </div>
                                                                </form>
                                                              </div>

                                                              </div><!--/tab-pane-->
                                                          </div><!--/tab-content-->
                                                           
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                           </div>
                        </div>
 


                                    
     </form>
 
</asp:Content>
