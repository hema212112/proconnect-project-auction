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
                       ProConnect
                    </a>
                </li>
                <li>
                    <a href="ManagerHome.jsp"><i class="fa fa-fw fa-home"></i>Admin Home</a>
                </li>
                <li>
                    <a href="AssignProjects.jsp"><i class="fa fa-fw fa-cog"></i>Project Assignments</a>
                </li>
                <li>
                    <a href="ProjectsInfo.jsp"><i class="fa fa-fw fa-cog"></i>Projects info</a>
                </li>
                <li>
                    <a href="Risk_Assessment.jsp"><i class="fa fa-fw fa-bank"></i>Risk Assessment</a>
                </li>
                <li>
                    <a href="Assign_Bugs.jsp"><i class="fa fa-fw fa-file-o"></i>Project Feature Preview</a>
                </li>
                <li>
                    <a href="Bug_Status.jsp"><i class="fa fa-fw fa-file-o"></i>Defects Status</a>
                </li>
                 <li>
                    <a href="Appraisal.jsp"><i class="fa fa-fw fa-file-o"></i>Appraisal</a>
                </li>
                <li>
                    <a href="Graph.jsp"><i class="fa fa-fw fa-file-o"></i>Graph</a>
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
                        <h1 id="logo" style="text-transform: capitalize">Admin's View</h1>
                    </div>
                    <div class="main-header__bottom">
                        <nav class="main-header__menu">
                            <a href="ManagerHome.jsp" style="background: black;border-radius: 6px;">Home</a>
                            <a href="ProjectsInfo.jsp">Projects_Info</a>
                            <a href="Projects_Scope.jsp">Projects Scope</a>
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
            <h1 align="center">Admin Home Page</h1>
            <br><br><br>
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
