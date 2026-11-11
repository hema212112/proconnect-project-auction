<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>ProConnect</title>
  <link rel="stylesheet" href="css/bg1.css">
  <link rel='stylesheet prefetch' href='css/bg2.css'>
      <link rel="stylesheet" href="css/style.css">
      <link rel="icon" type="image/png" href="images/Icon.ico"/>
      <!--This is Header red color Style only-->
      <link href="css/header.css" rel="stylesheet" type="text/css"/>
      <link rel="stylesheet" href="css/header1.css">
      <!--End Code-->
</head>
<body>
     <div id="wrapper">
        <div class="overlay"></div>
        <!-- Sidebar -->
        <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation"  style="background: url('images/menu1.jpg')">
            <ul class="nav sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                      Project Allocation And Auction
                    </a>
                </li>
                <li>
                    <a href="ReviewHome.jsp"><i class="fa fa-fw fa-home"></i>Admin Home</a>
                </li>
                <li>
                    <a href="AssignProjects.jsp"><i class="fa fa-fw fa-file-o"></i>Task Creation</a>
                </li>
                 <li>
                    <a href="ProjectsInfoAction.jsp"><i class="fa fa-fw fa-file-o"></i>Manage Assigned Projects</a>
                </li>
                 <li>
                    <a href="Appreq.jsp"><i class="fa fa-fw fa-file-o"></i>Auction Confirmation</a>
                </li>
                 <li>
                    <a href="View_staprojects.jsp"><i class="fa fa-fw fa-file-o"></i>View Projects Status</a>
                </li>
                <li>
                    <a href="index.jsp"><i class="fa fa-fw fa-file-o"></i>Logout</a>
                </li>
            </ul>
        </nav>
        <!-- /#sidebar-wrapper -->
        <!-- Page Content -->
        <div id="page-content-wrapper">
          <button type="button" class="hamburger is-closed animated fadeInLeft" data-toggle="offcanvas">
            <span class="hamb-top"></span>
            <span class="hamb-middle"></span>
            <span class="hamb-bottom"></span>
          </button>
            <!--Header Coding -->
            <div class="container">
            <header id="js-rotate" class="main-header">
                <div class="main-header__content">
                    <div class="main-header__perspective">
                    <div class="main-header__front">
                        <h1 id="logo" style="text-transform: capitalize">Admin Dashboard</h1>
                    </div>
                    <div class="main-header__bottom">
                        <nav class="main-header__menu">
                            <a href="ReviewHome.jsp" style="background: black;border-radius: 6px;">Home</a>
                            <a href="AssignProjects.jsp">Task Creation</a>
                            <a href="ProjectsInfoAction.jsp">Manage Assigned Projects</a>
                            <a href="Projects_Scope.jsp">Auction Confirmation</a>
                            <a href="index.jsp">Logout</a>
                        </nav>
                    </div>
                    </div>
                </div>
                <button class="menu-button" id="js-menu-button">
                    <div class="menu-button__hb" id="js-hamburger"><span></span></div>
                </button>
            </header>
            </div>
            <br><br>
            <h1 align="center" style="font-weight: bold;">ProConnect</h1>
            <hr  style="border-bottom: dotted 3px;">
            <br><br><br>
            <p align="justify" style="
                width: 1046px;
                margin-left: 148px;
                font-size: 22px;
                border-radius: 18px;
                padding: 21px;
                border-style: groove;
                color: navy;
            ">
                &emsp;Management by objectives, or MBOs, is a type of performance management system that requires the manager and employee to identify employee goals as they relate to the overall business.
            </p>
        </div>
        <!-- /#page-content-wrapper -->
    </div>
    <!-- /#wrapper -->
  <script src='js/bgjs.js'></script>
<script src='js/bgjs1.js'></script>
    <script  src="js/index.js"></script>
     <script  src="js/index1.js"></script>
</body>
</html>
