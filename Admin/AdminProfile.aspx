<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="WRS2big_Web.Admin.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<%--Rheaahhhhhhhhhhhhhhhh--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                                    <!-- Page-header end -->
                                    <div class="container bootstrap snippet">
                                        <div class="row">
                                            <div class="col-sm-10"><h1>My Profiles</h1></div>
                                            <div class="col-sm-2">
                                                <img title="profile image" src="/images/FinalLogo.png" alt="Theme-Logo" style="width:200px">

                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <!--left col-->
                                                <div class="text-center">
                                                    <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
                                                    <h6>Upload photo here...</h6>
                                                    <input type="file" class="text-center center-block file-upload">
                                                </div>
                                                <br>
                                            </div><!--/col-3-->
                                            <div class="col-sm-9">
                                                <ul class="nav nav-tabs">
                                                    <li class="active"><a data-toggle="tab" href="#home">Profile</a></li>
                                                    <li><a data-toggle="tab" href="#about">About</a></li>
                                                    <li><a data-toggle="tab" href="#editprofile">Edit Profile</a></li>
                                                </ul>


                                                <div class="tab-content">
                                                    <div class="tab-pane active" id="home">
                                                        <hr>
                                                        <form class="form" action="##" method="POST" id="registrationForm">
                                                            <div class="form-group">
                                                                <div class="col-xs-12">
                                                                    <h4><strong>Firstname: </h4>  <br>
                                                                    <h4><strong>Middlename: </h4><br>
                                                                    <h4><strong>Lastname: </h4><br>
                                                                    <h4><strong>Contact number: </strong> </h4><br>
                                                                    <h4><strong>Email Address: </strong> </h4><br>
                                                                    <h4><strong>Address: </strong> </h4><br>
                                                                    <h4><strong>Member Since: </strong></h4><br>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class="col-xs-12">
                                                                    <br>
                                                                    <button class="btn btn-lg btn-outline-danger pull-right" style=" color: #FA8072; border-color: #FA8072 " type="close"><a href="dashboard.php"><i class="glyphicon glyphicon-backward"></i>Exit  </a> </button>
                                                                </div>
                                                            </div>
                                                        </form>

                                                        <hr>

                                                    </div><!--/tab-pane-->
                                                    <div class="tab-pane" id="about">

                                                        <h2></h2>

                                                        <hr>
                                                        <form class="form" action="##" method="post" id="registrationForm">
                                                            <div class="form-group">
                                                                <div class="col-xs-12">
                                                                    <h4><strong>Firstname: </strong> </h4>  <br>
                                                                    <h4><strong>Middlename: </strong></h4><br>
                                                                    <h4><strong>Lastname: </strong> </h4><br>
                                                                    <h4><strong>Contact number: </strong> </h4><br>
                                                                    <h4><strong>Email Address: </strong> </h4><br>
                                                                    <h4><strong>Address: </strong> </h4><br>
                                                                    <h4><strong>Member Since: </strong></h4><br>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class="col-xs-12">
                                                                    <br>
                                                                    <button class="btn btn-lg btn-outline-danger pull-right" style=" color: #FA8072; border-color: #FA8072 " type="close"><a href="dashboard.php"><i class="glyphicon glyphicon-backward"></i>Exit  </a> </button>
                                                                </div>
                                                            </div>
                                                        </form>


                                                    </div><!--/tab-pane-->
                                                    <div class="tab-pane" id="editprofile">


                                                        <hr>
                                                        <form class="form" action="##" method="post" id="registrationForm">
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

                                                                <div class="col-xs-6">
                                                                    <label for="password"><h4>Password</h4></label>
                                                                    <input type="password" class="form-control" name="password" id="password" placeholder="password" title="enter your password.">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class="col-xs-6">
                                                                    <label for="password2"><h4>Verify</h4></label>
                                                                    <input type="password" class="form-control" name="con_pass" id="password2" placeholder="password2" title="enter your password2.">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class="col-xs-12">
                                                                    <br>
                                                                    <input type="submit" name="update" value="Update Profile">
                                                                    <!-- <button class="btn btn-lg btn-success pull-left" type="submit" name="update"><i class="glyphicon glyphicon-ok-sign"></i> Update Profile</button>-->
                                                                    <button class="btn btn-lg btn-outline-danger pull-right" style=" color: #FA8072; border-color: #FA8072 " type="close"><a href="dashboard.php"><i class="glyphicon glyphicon-backward"></i>Exit  </a> </button>
                                                                    <!--<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>-->
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div><!--/tab-pane-->
                                            </div><!--/tab-content-->
                                        </div><!--/col-9-->
                                    </div><!--/row-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
