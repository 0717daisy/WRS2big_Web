<!DOCTYPE html>
<html lang="en">
<head>
    <title>2BiG: WRS Management System </title>
    <!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 10]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Mega Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs." />
    <meta name="keywords" content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
    <meta name="author" content="codedthemes" />
    <!-- Favicon icon -->
    <link rel="icon" src="/images/FinalLogo.png" type="image/x-icon">

    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500" rel="stylesheet">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="/assets/css/bootstrap/css/bootstrap.min.css">
    <!-- waves.css -->
    <link rel="stylesheet" href="/assets/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- themify-icons line icon -->
    <link rel="stylesheet" type="text/css" href="/assets/icon/themify-icons/themify-icons.css">
    <!-- ico font -->
    <link rel="stylesheet" type="text/css" href="/assets/icon/icofont/css/icofont.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" type="text/css" href="/assets/icon/font-awesome/css/font-awesome.min.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="/assets/css/style.css">
</head>

<body themebg-pattern="theme1">
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
    <section class="login-block">
        <!-- Container-fluid starts -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <form class="md-float-material form-material">
                        <div class="text-center">
                            <img src="/images/2ndLogo.png" style="width:500px" alt="logo.png">
                        </div>
                        <div class="auth-box card">
                            <div class="card-block">
                                <div class="button-box">
                                    <center>
                                        <div id="bttn"></div>
                                        <button type="button" id="btnregister" class="togglebtn btn btn-primary waves-effect text-center active" onclick="register()">Sign Up</button>
                                        <button type="button" id="btnlogin" class="togglebtn btn btn-primary waves-effect text-center active" onclick="login()">Login</button>                                   
                                        </center>
                                </div> <br />
                                <br><br>
<%--                                @*      SIGN UP     *@--%>
                            <div class="active" id="register" ">
                                <div class="row ">
<%--                                    @*last name*@--%>
                                    <div class="col">
                                        <div class="form-group">
                                            <label>Last Name</label>
                                            <div class="input-group-sm">
                                                <input id="txtLname" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
<%--                                    @*first name*@--%>
                                    <div class="col">
                                        <div class="form-group">
                                            <label>First Name</label>
                                            <div class="input-group-sm">
                                                <input id="txtfname" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
<%--                                    @*middle name*@--%>
                                    <div class="col">
                                        <div class="form-group">
                                            <label>Middle Name</label>
                                            <div class="input-group-sm">
                                                <input id="txtmname" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
<%--                                    @*birthdate*@--%>
                                    <div class="col">
                                        <div class="form-group">
                                            <label>Birthdate</label>
                                            <div class="input-group-sm">
                                                <input id="txtbirthdate" type="date" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
<%--                                    @*Phone Number*@--%>
                                    <div class="col">
                                        <div class="form-group">
                                            <label>Phone Number</label>
                                            <div class="input-group-sm">
                                                <input id="txtphoneNum" type="number" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
<%--                                    @*email*@--%>
                                    <div class="col">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <div class="input-group-sm">
                                                <input id="txtEmail" type="email" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
<%--                                    @*password*@--%>
                                    <div class="col">
                                        <div class="form-group">
                                            <label>Password</label>
                                            <div class="input-group-sm">
                                                <input id="id_passwordreg" type="password" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                </div>

<%--                                @*Show Password checkbox*@--%>
                                <div class="row m-t-25 text-left">
                                    <div class="col-md-12">
                                        <div class="checkbox-fade fade-in-primary">
                                            <label>
                                                <input type="checkbox" value="" id="togglePasswordreg">
                                                <span class="cr"><i class="cr-icon icofont icofont-ui-check txt-primary"></i></span>
                                                <span class="text-inverse">Show Password</span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
<%--                                @*Show Password script*@--%>
                                <script>
                                    const toggleregPassword = document.querySelector('#togglePasswordreg');
                                    const regpassword = document.querySelector('#id_passwordreg');

                                    toggleregPassword.addEventListener('click', function (e) {
                                        // toggle the type attribute
                                        const type = regpassword.getAttribute('type') === 'password' ? 'text' : 'password';
                                        regpassword.setAttribute('type', type);
                                        // toggle the eye slash icon
                                        this.classList.toggle('fa-eye-slash');
                                    });
                                </script>
                                <!-- Show Password -->
                                <div class="row m-t-25 text-left">
                                    <div class="col-md-12">
                                        <div class="checkbox-fade fade-in-primary">
                                            <label>
                                                <input type="checkbox" value="">
                                                <span class="cr"><i class="cr-icon icofont icofont-ui-check txt-primary"></i></span>
                                                <span class="text-inverse">
                                                    I agree to 2BiG's <a href="/Terms"> Terms and Conditions </a>
                                                </span>

                                            </label>

                                        </div>
                                    </div>
                                </div>


                                <!-- SignUp  -->
                                <div class="row m-t-30">
                                    <div class="col-md-12">
<%--                                        @*buttons*@--%>
                                        <div class="d-flex justify-content-center">
                                            <button id="btnCreateAcc" class="btn" style="background: linear-gradient(to right, #5bc0de, #9dd9eb);">
                                        
                                                Sign up
                                            </button>
                                        </div>
                                        <p>
                                            <br />
                                            <a href="/Home/Login" style="font-size:16px;"> Already have an account? Login now.</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                                    <div id="login" style="display:none;">
                                        <div class="row">
<%--                                            @*email*@--%>
                                            <div class="col">
                                                <div class="">
                                                    <label>Email</label>
                                                    <div class="input-group">
                                                        <input id="txtemail" type="email" class="form-control" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
<%--                                            @*password*@--%>
                                            <div class="col">
                                                <div class="form-group">
                                                    <label>Password</label>
                                                    <div class="input-group">
                                                        <input id="id_password" type="password" class="form-control" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
<%--                                        @*Show Password checkbox*@--%>
                                        <div class="row m-t-25 text-left">
                                            <div class="col-md-12">
                                                <div class="checkbox-fade fade-in-primary">
                                                    <label>
                                                        <input type="checkbox" value="" id="togglePassword">
                                                        <span class="cr"><i class="cr-icon icofont icofont-ui-check txt-primary"></i></span>
                                                        <span class="text-inverse">Show Password</span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
<%--                                        @*Show Password script*@--%>
                                        <script>
                                            const togglePassword = document.querySelector('#togglePassword');
                                            const password = document.querySelector('#id_password');

                                            togglePassword.addEventListener('click', function (e) {
                                                // toggle the type attribute
                                                const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
                                                password.setAttribute('type', type);
                                                // toggle the eye slash icon
                                                this.classList.toggle('fa-eye-slash');
                                            });
                                        </script>

                                        <div class="d-flex justify-content-center">
                                            <button id="btnLogin" class="btn" style="background: linear-gradient(to right, #5bc0de, #9dd9eb);">Login</button>
                                        </div>
                                        <div class="row m-t-30">
                                            <div class="col-md-12">
                                                <p>
                                                    <a href="/Home/CreateAccount" style="font-size:16px;"> No account yet? Create account now.</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- end of col-sm-12 -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container-fluid -->
    </section>
    <!-- Required Jquery -->
    <script type="text/javascript" src="/assets/js/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="/assets/js/jquery-ui/jquery-ui.min.js "></script>
    <script type="text/javascript" src="/assets/js/popper.js/popper.min.js"></script>
    <script type="text/javascript" src="/assets/js/bootstrap/js/bootstrap.min.js "></script>
    <!-- waves js -->
    <script src="/assets/pages/waves/js/waves.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="/assets/js/jquery-slimscroll/jquery.slimscroll.js "></script>
    <!-- modernizr js -->
    <script type="text/javascript" src="/assets/js/SmoothScroll.js"></script>
    <script src="/assets/js/jquery.mCustomScrollbar.concat.min.js "></script>
    <!-- i18next.min.js -->
    <script type="text/javascript" src="~/bower_components/i18next/js/i18next.min.js"></script>
    <script type="text/javascript" src="~/bower_components/i18next-xhr-backend/js/i18nextXHRBackend.min.js"></script>
    <script type="text/javascript" src="~/bower_components/i18next-browser-languagedetector/js/i18nextBrowserLanguageDetector.min.js"></script>
    <script type="text/javascript" src="~/bower_components/jquery-i18next/js/jquery-i18next.min.js"></script>
    <script type="text/javascript" src="/assets/js/common-pages.js"></script>
    <script src="/Scripts/MyScript/Index.js"></script>
</body>
</html>

