<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subscription.aspx.cs" Inherits="WRS2big_Web.LandingPage.Subscription" %>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>2BiG: WRS Management System</title>
    <link href="/assets/css/animate.css/css/animate.css" rel="stylesheet" />
    <link href="/assets/css/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/assets/css/chartist/chartist.css" rel="stylesheet" />
    <link href="/assets/css/morris.js/css/morris.css" rel="stylesheet" />
    <link href="/assets/css/ionicons.css" rel="stylesheet" />
    <link href="/assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="/assets/css/jquery.mCustomScrollbar.css" rel="stylesheet" />
    <link href="/assets/css/style.css" rel="stylesheet" />
    <link href="/assets/icon/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="/assets/icon/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <a href="/assets/icon/font-awesome/fonts/fontawesome-webfont.eot"></a>
    <a href="/assets/icon/font-awesome/fonts/fontawesome-webfont.ttf"></a>
    <a href="/assets/icon/font-awesome/fonts/fontawesome-webfont.woff"></a>
    <a href="/assets/icon/font-awesome/fonts/fontawesome-webfont.woff2"></a>
    <a href="/assets/icon/font-awesome/fonts/FontAwesome.otf"></a>
    <link href="/assets/icon/icofont/css/icofont.css" rel="stylesheet" />
    <a href="/assets/icon/icofont/fonts/icofont.eot"></a>
    <a href="/assets/icon/icofont/fonts/icofont.ttf"></a>
    <a href="/assets/icon/icofont/fonts/icofont.woff"></a>
    <a href="/assets/icon/themify-icons/fonts/themify.eot"></a>
    <a href="/assets/icon/themify-icons/fonts/themify.ttf"></a>
    <a href="/assets/icon/themify-icons/fonts/themify.woff"></a>
    <link href="/assets/icon/themify-icons/themify-icons.css" rel="stylesheet" />
    <script src="/assets/js/bootstrap/js/bootstrap.min.js"></script>
    <script src="/assets/js/chart.js/Chart.js"></script>
    <script src="/assets/js/jquery/jquery.min.js"></script>
    <script src="/assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>
    <script src="/assets/js/jquery-ui/jquery-ui.min.js"></script>
    <script src="/assets/js/modernizr/css-scrollbars.js"></script>
    <script src="/assets/js/modernizr/modernizr.js"></script>
    <script src="/assets/js/morris.js/morris.js"></script>
    <script src="/assets/js/popper.js/popper.min.js"></script>
    <script src="/assets/js/raphael/raphael.min.js"></script>
    <script src="/assets/js/bootstrap-growl.min.js"></script>
    <script src="/assets/js/common-pages.js"></script>
    <script src="/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="/assets/js/jquery.mousewheel.min.js"></script>
    <script src="/assets/js/morris-custom-chart.js"></script>
    <script src="/assets/js/pcoded.min.js"></script>
    <script src="/assets/js/script.js"></script>
    <script src="/assets/js/script.min.js"></script>
    <script src="/assets/js/SmoothScroll.js"></script>
    <script src="/assets/js/vertical-layout.min.js"></script>
    <script src="/assets/pages/accordion/accordion.js"></script>
    <script src="/assets/pages/accordion/accordion.min.js"></script>
    <link href="/assets/pages/dashboard/amchart/css/amchart.css" rel="stylesheet" />
    <link href="/assets/pages/dashboard/amchart/css/export.css" rel="stylesheet" />
    <script src="/assets/pages/dashboard/amchart/js/amcharts.js"></script>
    <script src="/assets/pages/dashboard/amchart/js/custom-amchart.js"></script>
    <script src="/assets/pages/dashboard/amchart/js/export.min.js"></script>
    <script src="/assets/pages/dashboard/amchart/js/light.js"></script>
    <script src="/assets/pages/dashboard/amchart/js/serial.js"></script>
    <script src="/assets/pages/dashboard/custom-dashboard.js"></script>
    <script src="/assets/pages/google-maps/gmaps.js"></script>
    <script src="/assets/pages/google-maps/google-maps.js"></script>
    <link href="/assets/pages/notification/notification.css" rel="stylesheet" />
    <script src="/assets/pages/todo/todo.js"></script>
    <link href="/assets/pages/waves/css/waves.min.css" rel="stylesheet" />
    <script src="/assets/pages/waves/js/waves.min.js"></script>
        <!-- Favicon icon -->
    <link rel="icon" src="/images/FinalLogo.png" type="image/x-icon">

    <style>
        .divider {
            background: linear-gradient(100deg, white 0%, rgba(66, 135, 245) 100%, rgba(66, 135, 245) 80%);
            width: 100%;
            height: 6px;
        }

        .background {
            background-color: white;
        }

        .Lightblue-background {
            background-color: #9CE6F7;
        }

        .bodytext {
            font-family: "Nunito Sans", "Arial", sans-serif;
            font-weight: normal;
            line-height: 1.5;
            color: #00053e;
        }

        .grid-container {
            padding-right: 0.9375rem;
            padding-left: 0.9375rem;
            max-width: 75rem;
        }

        .videosize {
            width: 100%;
        }

        .texts {
            font-size: 200%;
            line-height: 1.6;
            font-weight: 500;
            color: #001242;
            font-family: "Nunito Sans", "Arial", sans-serif;
        }

        .h2 {
            font-family: "Nunito Sans", "Arial", sans-serif;
            text-transform: uppercase;
            line-height: normal;
            font-weight: 100;
            color: #001242;
            font-size: 400%;
        }

        .h3 {
            font-family: "Nunito Sans", "Arial", sans-serif;
            text-transform: uppercase;
            line-height: normal;
            font-weight: 200;
            color: #001242;
            font-size: 280%;
        }

        .h4 {
            font-family: "Nunito Sans", "Arial", sans-serif;
            text-transform: uppercase;
            line-height: normal;
            font-weight: 200;
            color: #001242;
            font-size: 150%;
        }

        .h5 {
            font-family: "Nunito Sans", "Arial", sans-serif;
            text-transform: uppercase;
            line-height: normal;
            font-weight: 200;
            color: #001242;
            font-size: 100%;
        }

        .h6 {
            font-family: "Nunito Sans", "Arial", sans-serif;
            line-height: normal;
            font-weight: 200;
            color: #001242;
            font-size: 100%;
        }

        .h7 {
            font-family: "Nunito Sans", "Arial", sans-serif;
            line-height: normal;
            font-weight: 100;
            color: #001242;
            font-size: 50%;
        }

        .h1 {
            font-family: "Nunito Sans", "Arial", sans-serif;
            text-transform: uppercase;
            line-height: normal;
            font-weight: 200;
            color: #001242;
            font-size: 650%;
        }

        .verticalLine {
            height: 200px;
            border-right: 7px solid #001242;
            position: absolute;
            right: 50%;
        }

        .secbackground {
            background-image: url('images/FinalLogo.png');
            background-repeat: no-repeat;
            background-size: cover;
        }

        .teal-gradient {
            background: #00A8E4;
            background: linear-gradient(180deg, #00a8e4 0%, #9ce6f7 70%, #e7f6fd 100%);
        }

        .orange-gradient {
            background: #7ADBF0;
            background: linear-gradient(180deg, #7ADBF0 0%, #9AE8F9 70%, #D0F1F9 100%);
        }

        .button {
            text-transform: uppercase;
            text-decoration: none;
            font-weight: 700;
            border-radius: 50px;
        }

        .margin-0 {
            margin-top: 0rem !important;
            margin-right: 0rem !important;
            margin-bottom: 0rem !important;
            margin-left: 0rem !important;
        }
    </style>
</head>


<body>
    <!-- Pre-loader start -->
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
    <!-- Pre-loader end -->
    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">
            <nav class="navbar header-navbar pcoded-header">
                <div class="navbar-wrapper">

                    <div class="navbar-container container-fluid">
                        <ul class="nav-center">
                            <li>
                                <div class="text-center">
                                    <img src="/images/secLogo.png" style="width:170px" alt="logo.png">
                                </div>
                            </li>
                        </ul>

                    </div>
                </div>
            </nav>
            <div class="pcoded-main-container background">
                <div class="pcoded-wrapper">
                    <!-- Page-header start -->
                    <div class="page-header">
                        <div class="page-block">
                            <div class="row align-items-center">
                                <div class="col-md-8">
                                    <div class="page-header-title">
                                        <h3 class="m-b-0 text-center"></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Page-header end -->
                    <!-- MAIN CONTENT -->


                        <!-- <img src="images/FinalLogo.PNG" style="width:40%"> -->






                    <div class="text-center page-block ">
                        <section class="cell medium-8 teal-gradient padding-vertical-4">
                            <div class="row">
                                <div class="col-sm-4">
                                    <ul class="nav-left">
                                        <li>
                                            <br>
                                            <div class="text-right">
                                                <img src="/images/water.cartoon.png" style="width:320px" alt="logo.png">
                                            </div>

                                        </li>
                                    </ul>
                                </div>

                                <div class="col-sm-4">
                                    <br><br><br><br>
                                    <div cell small-24 class="text-center">
                                        <a href="#subscription" class="button" style="color:darkblue;font-size: 25px;background-color: pink;padding: 6px;">
                                            SUBSCRIBE TO 2BIG NOW!
                                            <!--
                                            <img src="images/playstore.PNG" style="width:80px"> <br>
                                            Download <br> 2BiG Mobile ! <br> <br> -->
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <ul class="nav-left">
                                        <li>
                                            <div class="text-left">
                                                <h6 style="color:black;font-size: 100%;" class="">
                                                    <br><br> <br><br><br>
                                                    <a class="h3">
                                                        Boost
                                                    </a>
                                                    <a class="h4">
                                                        your
                                                    </a>
                                                    <a class="h3">
                                                        Water Refilling Business
                                                    </a>
                                                    <a class="h4">
                                                        <br>
                                                        now,  and attract new <br>
                                                    </a>
                                                    <a class="h3">
                                                        Loyal Customers!
                                                    </a>
                                                </h6>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </section>

                        <!-- SUBSCRIPTION-->
                        <section class="cell medium-8 padding-vertical-4">
                            <a name="subscription"> </a>
                            <div>
                                <h1 class="h3 text-center">
                                    <br> SUBSCRIPTION <br>
                                </h1>
                            </div>
                            <br>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-sm-3" style="background-color: white;">
                                    </div>

                                    <div class="col-sm-3" style="background-color: pink;">
                                        <div class="">
                                            <div class="text-center">
                                                <img src="/images/delivery.PNG" style="width:50%">
                                            </div>
                                            <p class="h3 text-center">BASIC PLAN</p>
                                            <h2 class="texts text-center " style="font-size:20px;">
                                                P500 Monthly
                                            </h2> 
                                                <div class="auth-box card">
                                                    <div class="card-block text-left" style="font-size:20px; background-color:papayawhip">
                                                        <i class="ti-check-box"> Admin Dashboard</i> <br />
                                                        <i class="ti-check-box"> Point of Sale</i><br />
                                                        <i class="ti-check-box"> Reports</i><br />
                                                        <i class="ti-check-box"> Admin Profile</i><br />
                                                         <i class="ti-check-box"> Employee Records</i><br />
                                                        <i class="ti-check-box"> Water Orders</i><br />
                                                        <i class="ti-check-box"> Deliveries</i><br />
                                                        <i class="ti-check-box"> Reservations</i><br />
                                                        <i class="ti-check-box"> Refilling Station</i><br />
                                                        <i class="ti-check-box"> Products</i><br />
                                                        <i class="ti-check-box"> Services</i><br />
                                                        <i class="ti-check-box"> Customer Reviews</i><br />
                                                        <i class="ti-check-box"> List and Graph</i><br />
                                                        <i class="ti-check-box"> Loyalty Program</i><br />
                                                    </div>
                                                </div>
                                            <br>
                                            <div cell small-24 class="text-center">
                                                <a href="#subscription" class="button" style="color:darkblue;font-size: 18px;background-color: lightskyblue;padding: 10px;">
                                                    SUBSCRIBE
                                                </a>
                                            </div> <br>
                                        </div>
                                    </div>


                                    <div class="col-sm-3" style="background-color: lightskyblue;">
                                        <div class="service-item second-service">
                                            <div class="text-center">
                                                <img src="/images/orders.PNG" style="width:50%">
                                            </div>
                                            <p class="h3 text-center">PREMIUM PLAN</p>
                                            <h2 class="texts text-center" style="font-size:20px;">
                                               P5000 Annually
                                            </h2> 
                                                <div class="auth-box card">
                                                    <div class="card-block text-left" style="font-size:20px; background-color:papayawhip">
                                                        <i class="ti-check-box"> Admin Dashboard</i> <br />
                                                        <i class="ti-check-box"> Point of Sale</i><br />
                                                        <i class="ti-check-box"> Reports</i><br />
                                                        <i class="ti-check-box"> Admin Profile</i><br />
                                                         <i class="ti-check-box"> Employee Records</i><br />
                                                        <i class="ti-check-box"> Water Orders</i><br />
                                                        <i class="ti-check-box"> Deliveries</i><br />
                                                        <i class="ti-check-box"> Reservations</i><br />
                                                        <i class="ti-check-box"> Refilling Station</i><br />
                                                        <i class="ti-check-box"> Products</i><br />
                                                        <i class="ti-check-box"> Services</i><br />
                                                        <i class="ti-check-box"> Customer Reviews</i><br />
                                                        <i class="ti-check-box"> List and Graph</i><br />
                                                        <i class="ti-check-box"> Loyalty Program</i><br />
                                                    </div>
                                                </div>
                                            <br>
                                            <div cell small-24 class="text-center">
                                                <a href="#subscription" class="button" style="color:darkblue;font-size: 18px;background-color: pink;padding: 10px;">
                                                    SUBSCRIBE
                                                </a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-sm-3" style="background-color: white;">
                                        <div class="service-item second-service">
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </section>

                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

