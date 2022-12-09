<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeRecord.aspx.cs" Inherits="WRS2big_Web.Admin.EmployeeRecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
    <title>2BiG Admin </title>
    <%-- @*HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries
     WARNING: Respond.js doesn't work if you view the page via file://
    [if lt IE 10]>*@
      @*<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]
     Meta*@--%>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Mega Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs." />
    <meta name="keywords" content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
    <meta name="author" content="codedthemes" />
     <%--@*Favicon icon*@--%>
    <link rel="icon" href="../images/FinalLogo.png" type="image/x-icon"/>
     <%--@*Google font*@--%>
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500" rel="stylesheet"/>
     <%--@*waves.css*@--%>
    <link rel="stylesheet" href="../assets/pages/waves/css/waves.min.css" type="text/css" media="all"/>
     <%--@*Required Fremwork*@--%>
    <link href="../assets/css/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
     <%--@*waves.css*@--%>
    <link rel="stylesheet" href="../assets/pages/waves/css/waves.min.css" type="text/css" media="all"/>
     <%--@*themify icon*@--%>
    <link rel="stylesheet" type="text/css" href="../assets/icon/themify-icons/themify-icons.css"/>
     <%--@*Font Awesome*@--%>
    <link rel="stylesheet" type="text/css" href="../assets/icon/font-awesome/css/font-awesome.min.css"/>
     <%--@*scrollbar.css*@--%>
    <link rel="stylesheet" type="text/css" href="../assets/css/jquery.mCustomScrollbar.css"/>
     <%--@*am chart export.css*@--%>
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
     <%--@*Style.css*@--%>
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <%-- @*Pre-loader start*@--%>
    <div class="theme-loader">
        <div class="loader-track">
            <div class="preloader-wrapper">
                <div class="spinner-layer spinner-blue">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
                <div class="spinner-layer spinner-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>

                <div class="spinner-layer spinner-yellow">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>

                <div class="spinner-layer spinner-green">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%--     @*Pre-loader end*@--%>
        <%--navbar start--%>
    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">
            <nav class="navbar header-navbar pcoded-header">
                <div class="navbar-wrapper">
                    <div class="navbar-logo">
                        <div>
                            <img src="../images/secLogo.png" style="width:180px" alt="logo.png"/>
                        </div>
                        <a class="mobile-menu waves-effect waves-light text-left" id="mobile-collapse" href="#!">
                            <i class="ti-menu"></i>
                        </a>
                        <div class="mobile-search waves-effect waves-light">
                            <div class="header-search">
                                <div class="main-search morphsearch-search">
                                    <div class="input-group">
                                        <span class="input-group-addon search-close"><i class="ti-close"></i></span>
                                        <input type="text" class="form-control" placeholder="Enter Keyword"/>
                                        <span class="input-group-addon search-btn"><i class="ti-search"></i></span>
                                    </div>
                    </div>
                </div>
            </div>
            <a class="mobile-options waves-effect waves-light">
                <i class="ti-more"></i>
            </a>
        </div>

        <div class="navbar-container container-fluid">
            <ul class="nav-left">
                <li>
                    <div class="sidebar_toggle"><a href="javascript:void(0)"><i class="ti-menu"></i></a></div>
                </li>
                <li>
                    <a href="#!" onclick="javascript:toggleFullScreen()" class="waves-effect waves-light">
                        <i class="ti-fullscreen"></i>
                    </a>
                </li>
            </ul>
            <ul class="nav-left">
                <li>
                    <div class="sidebar_toggle"><a href="javascript:void(0)"><i class="ti-menu"></i></a></div>
                </li>
                <div class="text-center">
                    <img src="../images/imgLogo.png" style="width:750px;padding-top: 5px;" alt="logo.png" />
                </div>
            </ul>
            <%-- NOTIFICATIONS--%>
            <ul class="nav-right">
                <li class="header-notification">
                    <a href="#!" class="waves-effect waves-light">
                        <i class="ti-bell"></i>
                        <span class="badge bg-c-red"></span>
                    </a>
                    <ul class="show-notification">
                        <li>
                            <h6>Notifications</h6>
                            <label class="label label-danger">New</label>
                        </li>
                        <li class="waves-effect waves-light">
                            <div class="media">
                                <img class="d-flex align-self-center img-radius" src="assets/images/avatar-2.jpg" alt="Generic placeholder image" />
                                <div class="media-body">
                                    <h5 class="notification-user">John Doe</h5>
                                    <p class="notification-msg">Lorem ipsum dolor sit amet, consectetuer elit.</p>
                                    <span class="notification-time">30 minutes ago</span>
                                </div>
                            </div>
                        </li>
                        <li class="waves-effect waves-light">
                            <div class="media">
                                <img class="d-flex align-self-center img-radius" src="assets/images/avatar-4.jpg" alt="Generic placeholder image" />
                                <div class="media-body">
                                    <h5 class="notification-user">Joseph William</h5>
                                    <p class="notification-msg">Lorem ipsum dolor sit amet, consectetuer elit.</p>
                                    <span class="notification-time">30 minutes ago</span>
                                </div>
                            </div>
                        </li>
                        <li class="waves-effect waves-light">
                            <div class="media">
                                <img class="d-flex align-self-center img-radius" src="assets/images/avatar-3.jpg" alt="Generic placeholder image" />
                                <div class="media-body">
                                    <h5 class="notification-user">Sara Soudein</h5>
                                    <p class="notification-msg">Lorem ipsum dolor sit amet, consectetuer elit.</p>
                                    <span class="notification-time">30 minutes ago</span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </li>
                 <%--@*NOTIFICATIONS END*@--%>
                <li class="user-profile header-notification">
                    <a href="#!" class="waves-effect waves-light">
                        <%--user profile--%>
                        <img src="../images/rhea.png" class="img-radius" alt="User-Profile-Image" />
                        <span>ADMIN 1</span>
                        <i class="ti-angle-down"></i>
                    </a>
                    <ul class="show-notification profile-notification">
                        <li class="waves-effect waves-light">
                            <a href="#!">
                                <i class="ti-settings"></i> Settings
                            </a>
                        </li>
                        <li class="waves-effect waves-light">
                            <a href="user-profile.html">
                                <i class="ti-user"></i> Profile
                            </a>
                        </li>
                        <li class="waves-effect waves-light">
                            <a href="email-inbox.html">
                                <i class="ti-email"></i> My Messages
                            </a>
                        </li>
                        <li class="waves-effect waves-light">
                            <a href="auth-lock-screen.html">
                                <i class="ti-lock"></i> Lock Screen
                            </a>
                        </li>
                        <li class="waves-effect waves-light">
                            <a href="/Home/Index">
                                <i class="ti-layout-sidebar-left"></i> Logout
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
           <%-- side navbar start--%>
<div class="pcoded-main-container">
    <div class="pcoded-wrapper">
        <nav class="pcoded-navbar">
            <div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
            <div class="pcoded-inner-navbar main-menu">
                <div class="">
                    <div>
                        <img class="img-fluid" src="../images/FinalLogo.png" alt="Theme-Logo" style="width:200px" />
                    </div>
                    <div class="pcoded-navigation-label" data-i18n="nav.category.navigation">MAIN</div>
                    <ul class="pcoded-item pcoded-left-item">
                        <li class="">
                            <a href="/Home/AdminIndex" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-home"></i><b>D</b></span>
                                <span class="pcoded-mtext" data-i18n="nav.dash.main">Dashboard</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                        <li>
                            <a href="/Home/POS" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="fa fa-dollar"></i></span>
                                <span class="pcoded-mtext" data-i18n="nav.basic-components.main">Point of Sales</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                        <li>
                            <a href="/Home/Reports" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-stats-up"></i></span>
                                <span class="pcoded-mtext" data-i18n="nav.basic-components.main">Reports </span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                    </ul>
                    <div class="pcoded-navigation-label" data-i18n="nav.category.forms">MANAGEMENT</div>
                    <ul class="pcoded-item pcoded-left-item">
                        <li>
                            <a href="/Home/AdminProfile" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="fa fa-user"></i><b>FC</b></span>
                                <span class="pcoded-mtext" data-i18n="nav.form-components.main">Profile </span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                        <li class="active">
                            <a href="/Home/Employees" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-notepad"></i><b>FC</b></span>
                                <span class="pcoded-mtext" data-i18n="nav.form-components.main">Employee Records</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                        <li>
                            <a href="/Home/WaterOrders" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-package"></i><b>FC</b></span>
                                <span class="pcoded-mtext" data-i18n="nav.form-components.main">Water Orders </span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                        <li class=" pcoded-hasmenu">
                            <a href="javascript:void(0)" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-receipt"></i></span>
                                <span class="pcoded-mtext" data-i18n="nav.basic-components.main">Deliveries</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                            <ul class="pcoded-submenu">
                                <li class=" ">
                                    <a href="/Home/DeliveryRecords" class="waves-effect waves-dark">
                                        <span class="pcoded-micon">
                                            <i class="ti-angle-left"></i>
                                        </span>
                                        <span class="pcoded-mtext" data-i18n="nav.basic-components.alert">
                                            Delivery Record
                                        </span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                                <li class="">
                                    <a href="/Home/DeliveryDetails" class="waves-effect waves-dark">

                                        <span class="pcoded-mtext" data-i18n="nav.basic-components.alert">Delivery Details</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="/Home/Reservations" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="fa fa-book"></i><b>FC</b></span>
                                <span class="pcoded-mtext" data-i18n="nav.form-components.main">Reservations </span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                        <li>
                            <a href="/Home/Station" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-map"></i><b>FC</b></span>
                                <span class="pcoded-mtext" data-i18n="nav.form-components.main">Refilling Station</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                        <li class=" pcoded-hasmenu">
                            <a href="javascript:void(0)" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="fa fa-bar-chart-o"></i></span>
                                <span class="pcoded-mtext" data-i18n="nav.basic-components.main">Products</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                            <ul class="pcoded-submenu ">
                                <li class=" ">
                                    <a href="/Home/Gallons" class="waves-effect waves-dark">
                                        <span class="pcoded-micon">
                                            <i class="ti-angle-right"></i>
                                        </span>
                                        <span class="pcoded-mtext" data-i18n="nav.basic-components.alert">
                                            Gallons
                                        </span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                                <li class="">
                                    <a href="/Home/WaterProduct" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext" data-i18n="nav.basic-components.alert">Water</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="pcoded-hasmenu">
                            <a href="javascript:void(0)" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-settings"></i></span>
                                <span class="pcoded-mtext" data-i18n="nav.basic-components.main">Services</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                            <ul class="pcoded-submenu">
                                <li class="">
                                    <a href="/Home/WaterRefill" class="waves-effect waves-dark">
                                        <span class="pcoded-micon">
                                            <i class="fa fa-bar-chart-o"></i><i class="ti-angle-right"></i>
                                        </span>
                                        <span class="pcoded-mtext" data-i18n="nav.basic-components.alert">Water Refill</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>

                    <div class="pcoded-navigation-label" data-i18n="nav.category.forms">CUSTOMER</div>
                    <ul class="pcoded-item pcoded-left-item">
                        <li>
                            <a href="/Home/Reviews" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-star"></i><b>FC</b></span>
                                <span class="pcoded-mtext" data-i18n="nav.form-components.main">Reviews</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                        <li>
                            <a href="/Home/ListGraph.php" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-pie-chart"></i><b>FC</b></span>
                                <span class="pcoded-mtext" data-i18n="nav.form-components.main">Lists and Graph</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                        <li>
                            <a href="/Home/Rewards" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-gift"></i><b>FC</b></span>
                                <span class="pcoded-mtext" data-i18n="nav.form-components.main">Rewards</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <%--side navbar end--%>
        <div class="pcoded-content">
           <%--  @*Page-header start*@--%>
            <div class="page-header">
                <div class="page-block">
                    <div class="row align-items-center">
                        <div class="col-md-8">
                            <div class="page-header-title">
                                <h5 class="m-b-10"> EMPLOYEE RECORDS </h5>
                                <h6 class="m-b-0">2BiG: Water Refilling Station Management System</h6>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <ul class="breadcrumb-title">
                                <li class="breadcrumb-item">
                                    <a href="/Home/AdminIndex"> <i class="fa fa-home"></i> </a>
                                </li>
                                <li class="breadcrumb-item">
                                    <a href="/Home/AdminIndex">Dashboard</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
   <%-- @*Page-header end--%>
       <div class="pcoded-inner-content">
                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
             <%--page content*@--%>
  <div class="right_col" role="main">
    <div class="">
     <div class="clearfix">
        <%-- add employee button--%>
         <button type="button" class="btn btn-success btn-md" data-toggle="modal" data-target=".add"><i class="fa fa-plus"></i> Add Employee</button>
         <%--input employee id to search record--%>  
          <%--<div class="input-group form-group md-6 sm-6">                                                                                  
          <asp:TextBox ID="txtidno" class="form-control" runat="server" placeholder="Employee ID" style="position:relative; float:right; margin-right:50px; width:auto"></asp:TextBox>    --%>    
          <%-- search button--%>         
           <%-- <asp:Button ID="btnSearch" class="btn btn-primary" runat="server" Text="Search" OnClick="btnSearch_Click"  style="position:relative; float:right; margin-right:63px;" />--%>
    
       <div class="modal fade add" tabindex="-1" role="dialog" aria-hidden="true">
       <div class="modal-dialog modal-dialog-centered modal-md">
        <div class="modal-content">
        <form id="demo-form" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
        <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Add Employee Records</h4>
            <%--exit button--%>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">X</span> </button>
        </div>
        <div class="modal-body">
        <div class="col-md-12 col-sm-12 ">
        <div class="x_content">
       <%-- <div class="item form-group">--%>
        <div class="col-md-12 col-sm-12 ">
           <%-- input lastname--%>
        <strong>Lastname:</strong>
        <asp:TextBox ID="txtlastname" runat="server" class="form-control" placeholder="Employees' Lastname"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqlname" runat="server" ErrorMessage="***" ForeColor="Red" Font-Bold="true" ControlToValidate="txtlastname" ValidationGroup="a"></asp:RequiredFieldValidator>
        </div>
        <%--</div>--%>
        <%--<div class="item form-group">--%>
         <div class="col-md-12 col-sm-12">
             <%--firstname--%>
         <strong>Firstname:</strong>
          <asp:TextBox ID="txtfirstname" runat="server" class="form-control" placeholder="Employees' Firstname"></asp:TextBox>
             <asp:RequiredFieldValidator ID="reqfname" runat="server" ErrorMessage="***" ForeColor="Red" Font-Bold="true" ControlToValidate="txtfirstname" ValidationGroup="a"></asp:RequiredFieldValidator>
          </div>
          <%--</div>--%>
            <%--<div class="item form-group">--%>
         <div class="col-md-12 col-sm-12">
             <%--middlename--%>
         <strong>Middlename (Optional):</strong>
          <asp:TextBox ID="txtmidname" runat="server" class="form-control" placeholder="Employees' Middlename"></asp:TextBox>   
          </div>
          <%--</div>--%>
          <%--<div class="item form-group">--%>
          <div class="col-md-12 col-sm-12">
              <%--date of birth--%>
          <strong>Date of Birth:</strong>
            <asp:TextBox ID="txtbirthdate" runat="server" class="form-control" placeholder="Employees' Date of Birth" TextMode="Date"></asp:TextBox>                                         <asp:RequiredFieldValidator ID="reqdob" runat="server" ErrorMessage="***" ForeColor="Red" Font-Bold="true" ControlToValidate="txtbirthdate" ValidationGroup="a"></asp:RequiredFieldValidator>    
           </div>
           <%--</div>--%>
          <%-- <div class="item form-group">--%>
           <div class="col-md-12 col-sm-12">
               <%--gender--%>
           <strong>Gender:</strong>
               <asp:DropDownList ID="drdgender" runat="server" Height="40px" Width="364px">
                   <asp:ListItem Text="Select" Value="select" Selected="True"></asp:ListItem>
                   <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                   <asp:ListItem Text="Female" Value="Female" ></asp:ListItem>
               </asp:DropDownList>
           <%--</div>--%>
           </div>
          <%-- <div class="item form-group">--%>
           <div class="col-md-12 col-sm-12">
               <%--address--%>
           <strong>Address:</strong>
               <asp:TextBox ID="txtaddress" runat="server" class="form-control" placeholder="Employees' Address"></asp:TextBox>
               <asp:RequiredFieldValidator ID="reqaddress" runat="server" ErrorMessage="***" ForeColor="Red" Font-Bold="true" ControlToValidate="txtaddress" ValidationGroup="a"></asp:RequiredFieldValidator> 
          <%-- </div>--%>
           </div>
         <%-- <div class="item form-group">--%>
           <div class="col-md-12 col-sm-12">
               <%--contact number--%>
           <strong>Contact Number:</strong>
                <asp:TextBox ID="txtcontactnum" runat="server" class="form-control" placeholder="Employees' Contact number" TextMode="Phone" Value=""></asp:TextBox>
               <asp:RequiredFieldValidator ID="reqcontact" runat="server" ErrorMessage="***" ForeColor="Red" Font-Bold="true" ControlToValidate="txtcontactnum" ValidationGroup="a"></asp:RequiredFieldValidator> 
           <%--</div>--%>
           </div>
           <%--<div class="item form-group">--%>
           <div class="col-md-12 col-sm-12">
              <%-- email--%>
           <strong>Email Address:</strong>
               <asp:TextBox ID="txtemail"  runat="server" class="form-control" placeholder="Employees' email@example.com"></asp:TextBox>
               <asp:RequiredFieldValidator ID="reqemail" runat="server" ErrorMessage="***" ForeColor="Red" Font-Bold="true" ControlToValidate="txtemail" ValidationGroup="a"></asp:RequiredFieldValidator>
          <%-- </div>--%>
           </div>
           <%--<div class="item form-group">--%>
           <div class="col-md-12 col-sm-12">
              <%-- date hired--%>
           <strong>Date Hired:</strong>
               <asp:TextBox ID="txtdateHired" TextMode="Date" runat="server" class="form-control" placeholder="Employees' Date Hired"></asp:TextBox>
               <asp:RequiredFieldValidator ID="reqdoh" runat="server" ErrorMessage="***" ForeColor="Red" Font-Bold="true" ControlToValidate="txtdateHired" ValidationGroup="a"></asp:RequiredFieldValidator>
         <%--   </div>--%>
            </div>
           <%--<div class="item form-group">--%>
           <div class="col-md-12 col-sm-12">
               <%--emergency contact--%>
           <strong>In case of emergency, Contact:</strong>
               <asp:TextBox ID="txtemergencycontact" runat="server" class="form-control" placeholder="Employees' emergencey contact" TextMode="Phone" Value=""></asp:TextBox>
               <asp:RequiredFieldValidator ID="reqemercontact" runat="server" ErrorMessage="***" ForeColor="Red" Font-Bold="true" ControlToValidate="txtemergencycontact" ValidationGroup="a"></asp:RequiredFieldValidator>
           <%-- </div>--%>
            </div>
           <%-- <div class="item form-group">--%>
            <div class="col-md-12 col-sm-12">
                <%--role--%>
                <strong>Role:</strong>
               <asp:DropDownList ID="drdrole" runat="server" Height="40px" Width="364px">
                   <asp:ListItem Text="-----Choose One-----" Value="select" Selected="True"></asp:ListItem>
                   <asp:ListItem Text="Cashier" Value="Cashier"></asp:ListItem>
                   <asp:ListItem Text="Driver" Value="Driver" ></asp:ListItem>
                   <asp:ListItem Text="Water Refiller" Value="Water Refiller" ></asp:ListItem>
                   <asp:ListItem Text="WRS Helper" Value="WRS Helper" ></asp:ListItem>
               </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="***" ForeColor="Red" Font-Bold="true" ControlToValidate="drdrole" ValidationGroup="a"></asp:RequiredFieldValidator>
            <%--  </div>--%>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
           <%-- add data button--%>
           <asp:Button ID="btnAdd" class="btn btn-primary" runat="server" Text="Add Data" ValidationGroup="a" OnClick="btnAdd_Click"/>
            </div>
           </form>
         </div>
        </div>
      </div>
        <%-- end add employee--%>
         <%--display table starts--%>
       <div class="row">
        <div class="col-md-12 col-sm-12">
         <div class="x_panel">
         <div class="x_title">
           <h2>Employee Records' <small>List</small></h2>
            <div class="clearfix"></div>
            </div>
             <div class="x_content">
              <div class="row">
               <div class="col-sm-12">
                <div class="card-box table-responsive">
                <table id="datatable1" class="table table-striped table-bordered" style="width:100%">
                   <%-- display table--%>

                  <%--  table head--%>
                 <thead>
                 <tr id="trialtable">
                  <th>Employee ID</th>
                  <th>Full Name</th>
                  <th style="width:10%">Date of birth</th>
                  <th>Gender</th>
                  <th style="width:15%">Address</th>
                  <th>Contact</th>
                  <th>Email Address</th>
                  <th>Date hired</th>
                  <th>In case of emergency, contact:</th>
                  <th>Role</th>
                  <th width="280px">Action</th>
                  </tr>
                  </thead>

                   <%-- tble body--%>
                  <tbody id="emprecords">
                  <tr>
                  <td> <asp:TextBox ID="idno" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox> </td>               
                  <td> <asp:TextBox ID="fullname" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox> </td>
                  <td> <asp:TextBox ID="dob" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox> </td>
                  <td> <asp:TextBox ID="gender" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox> </td>
                  <td> <asp:TextBox ID="address" runat="server" BorderColor="transparent" BackColor="transparent" Width="250"></asp:TextBox> </td>
                  <td> <asp:TextBox ID="contact" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox> </td>
                  <td> <asp:TextBox ID="emailadd" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox> </td>
                  <td> <asp:TextBox ID="datehired" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox> </td>
                  <td> <asp:TextBox ID="emergencycontact" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox> </td>
                  <td align="center"> <asp:TextBox ID="role" runat="server" BorderColor="transparent" BackColor="Transparent"> </asp:TextBox> </td>
                  <td align="center">

                  <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".edit" title="Edit Employee Record"><i class="fa fa-edit">Edit</i></button>
                   <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" class="btn btn-danger btn-sm" title="Delete Employee Record"/>       
                  </td>
                </tr>
               </tbody>
             </table>
    <div class="modal fade edit" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered modal-md">
        <div class="modal-content">
         <form id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
             <div class="modal-header">
              <h4 class="modal-title" id="myModalLabel2">Edit Employee Details</h4>
               <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">X</span></button>
            </div>
        <div class="modal-body">
        <div class="col-md-12 col-sm-12 ">
        <div class="x_content">
        <div class="item form-group">
        <div class="col-md-12 col-sm-12 ">
            <%--MODIFY RECORDS--%>
            <%--input lastname--%>
        <strong>Lastname:</strong>
        <asp:TextBox ID="txtlname" runat="server" class="form-control" placeholder="Employees' Lastname"></asp:TextBox>
        </div>
        </div>
        <div class="item form-group">
         <div class="col-md-12 col-sm-12">
             <%--firstname--%>
         <strong>Firstname:</strong>
          <asp:TextBox ID="txtfname" runat="server" class="form-control" placeholder="Employees' Firstname"></asp:TextBox>
          </div>
          </div>
            <div class="item form-group">
         <div class="col-md-12 col-sm-12">
             <%--middlename--%>
         <strong>Middlename (Optional):</strong>
          <asp:TextBox ID="txtmname" runat="server" class="form-control" placeholder="Employees' Middlename"></asp:TextBox>   
          </div>
          </div>
          <%--<div class="item form-group">--%>
          <div class="col-md-12 col-sm-12">
              <%--date of birth--%>
          <strong>Date of Birth:</strong>
            <asp:TextBox ID="txtdob" runat="server" class="form-control" placeholder="Employees' Date of Birth" TextMode="Date"></asp:TextBox>
           </div>
           <%--<div class="item form-group">--%>
           <div class="col-md-12 col-sm-12">
               <%--gender--%>
           <strong>Gender:</strong>
               <asp:DropDownList ID="drd_Gender" runat="server" Height="40px" Width="364px">
                   <asp:ListItem Text="Select" Value="select" Selected="True"></asp:ListItem>
                   <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                   <asp:ListItem Text="Female" Value="Female" ></asp:ListItem>
               </asp:DropDownList>
           <%--</div>--%>
           </div>
           <%--<div class="item form-group">--%>
           <div class="col-md-12 col-sm-12">
               <%--address--%>
           <strong>Address:</strong>
               <asp:TextBox ID="txt_Address" runat="server" class="form-control" placeholder="Employees' Address"></asp:TextBox>
           </div>
          <%--<div class="item form-group">--%>
           <div class="col-md-12 col-sm-12">
               <%--contact number--%>
           <strong>Contact Number:</strong>
                <asp:TextBox ID="txt_Contactnum" runat="server" class="form-control" placeholder="Employees' Contact number" TextMode="Phone" Value=""></asp:TextBox>
           </div>
           <%--<div class="item form-group">--%>
           <div class="col-md-12 col-sm-12">
              <%-- email--%>
           <strong>Email Address:</strong>
               <asp:TextBox ID="txtemailAdd"  runat="server" class="form-control" placeholder="Employees' email@example.com"></asp:TextBox>
           </div>
           <%--<div class="item form-group">--%>
           <div class="col-md-12 col-sm-12">
                <%-- date hired--%>
           <strong>Date Hired:</strong>
               <asp:TextBox ID="txtD8hired" TextMode="Date" runat="server" class="form-control" placeholder="Employees' Date Hired"></asp:TextBox>
            </div>
          <%-- <div class="item form-group">--%>
           <div class="col-md-12 col-sm-12">
                <%-- emergency contact--%>
           <strong>In case of emergency, Contact:</strong>
               <asp:TextBox ID="txtEmContactnum" runat="server" class="form-control" placeholder="Employees' emergencey contact" TextMode="Phone" Value=""></asp:TextBox>
            </div>
           <%-- <div class="item form-group">--%>
            <div class="col-md-12 col-sm-12">
                 <%-- role--%>
                <strong>Role:</strong>
               <asp:DropDownList ID="drd_Role" runat="server" Height="40px" Width="364px">
                   <asp:ListItem Text="-----Choose One-----" Value="select" Selected="True"></asp:ListItem>
                   <asp:ListItem Text="Cashier" Value="Cashier"></asp:ListItem>
                   <asp:ListItem Text="Driver" Value="Driver" ></asp:ListItem>
                   <asp:ListItem Text="Water Refiller" Value="Water Refiller" ></asp:ListItem>
                   <asp:ListItem Text="WRS Helper" Value="WRS Helper" ></asp:ListItem>
               </asp:DropDownList>
                <%--</div>--%>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
            <%--button save --%>
            <asp:Button ID="btnUpdate" class="btn btn-primary" runat="server" Text="Save" OnClick="btnUpdate_Click" />
                                      </div>
                                    </form>
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
         </div>
       </div>
        <%-- /page content--%>
        </div>
       </div>
      </div>
     </div>
    </div>
   </div>
  </div>
    <%-- Warning Section Ends
     Required Jquery--%>
    <script type="text/javascript" src="../assets/js/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="../assets/js/jquery-ui/jquery-ui.min.js "></script>
    <script type="text/javascript" src="../assets/js/popper.js/popper.min.js"></script>
    <script type="text/javascript" src="../assets/js/bootstrap/js/bootstrap.min.js "></script>
    <script type="text/javascript" src="../assets/pages/widget/excanvas.js "></script>
     <%--waves js--%>
    <script src="../assets/pages/waves/js/waves.min.js"></script>
     <%--jquery slimscroll js--%>
    <script type="text/javascript" src="../assets/js/jquery-slimscroll/jquery.slimscroll.js "></script>
     <%--modernizr js--%>
    <script type="text/javascript" src="../assets/js/modernizr/modernizr.js "></script>
    <%-- slimscroll js--%>
    <script type="text/javascript" src="../assets/js/SmoothScroll.js"></script>
    <script src="../assets/js/jquery.mCustomScrollbar.concat.min.js "></script>
     <%--Chart js--%>
    <script type="text/javascript" src="../assets/js/chart.js/Chart.js"></script>
     <%--amchart js--%>
    <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
    <script src="../assets/pages/widget/amchart/gauge.js"></script>
    <script src="../assets/pages/widget/amchart/serial.js"></script>
    <script src="../assets/pages/widget/amchart/light.js"></script>
    <script src="../assets/pages/widget/amchart/pie.min.js"></script>
    <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
     <%--menu js--%>
    <script src="../assets/js/pcoded.min.js"></script>
    <script src="../assets/js/vertical-layout.min.js "></script>
     <%--custom js--%>
    <script type="text/javascript" src="../assets/pages/dashboard/custom-dashboard.js"></script>
    <script type="text/javascript" src="../assets/js/script.js "></script>

   </form>
</body>
</html>

