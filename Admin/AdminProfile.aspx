<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="WRS2big_Web.Admin.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
                        <!-- SAMPLEEEE -->
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
                        <div class="pcoded-inner-content">
                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <!-- Page-body start -->
                                            <div class="row">
                                             <div class="col-xl-4 col-md-12">
                                                <div class="card ">
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
                                                      <img class="img-100 img-radius" style="width:200px" src="/images/DC.jpg" alt="User-Profile-Image">
                                                     
                                                          <br />
                                                      </center>
                                                  </div>


                                                    <div class="card-block" id="bttn">
                                                        <div class="align-middle m-b-30">
                                                            <div class="d-inline-block" >
                                                                <button type="button" id="btnProfile" class="togglebtn btn  waves-effect text-center active" onclick="Profile()" style="background-color:transparent"> <i class="ti-user" style="font-size:20px"></i>View Profile</button>
                                                        
                                                            </div> <br>
                                                            <div class="d-inline-block">
                                                                <button type="button"  style="background-color:transparent" id="btnSettings" class="togglebtn btn  waves-effect text-center active" onclick="Settings()"> <i class="ti-settings" style="font-size:20px"></i>Settings</button>
                                                            </div> <br>
                                                            <div class="d-inline-block">
                                                                
                                                                <button type="button"  style="background-color:transparent" id="btnSubscription" class="togglebtn btn  waves-effect text-center active" onclick="Subscription()"> <i class="ti-credit-card" style="font-size:20px"></i>Subscription</button>
                                                            </div><br>
                                                            
                                                            <div class="d-inline-block">
                                                                <button type="button"   style="background-color:transparent" id="btnLogout" class="togglebtn btn  waves-effect text-center active" onclick="Logout()"> <i class="ti-layout-sidebar-left" style="font-size:20px"></i>Logout</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            <!--  VIEW PROFILE -->
                                            <div class="col-xl-8 col-md-12" >
                                                <div class="card">
                                                    <div class="card-header"id="Profile">
                                                        <div class="card-header-right">
                                                            <ul class="list-unstyled card-option">
                                                                <li><i class="fa fa fa-wrench open-card-option"></i></li>
                                                                <li><i class="fa fa-window-maximize full-card"></i></li>
                                                                <li><i class="fa fa-minus minimize-card"></i></li>
                                                                <li><i class="fa fa-refresh reload-card"></i></li>
                                                                <li><i class="fa fa-trash close-card"></i></li>
                                                            </ul>
                                                        </div>
                                                        <h5>Profile</h5>

                                                    </div>
                                                    <div id="Profile">
                                                            
                                                   </div>
                                                </div>
                                            </div>


                                          </div>


                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <script src="/Scripts/MyScript/Profile.js"></script>
</form>

</asp:Content>
