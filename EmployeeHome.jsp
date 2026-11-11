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
<%
    String username=(String)session.getAttribute("ename");
%>
<body>
      <div id="wrapper">
        <div class="overlay"></div>
        <!-- Sidebar -->
        <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation"  style="background: url('images/menu1.jpg')">
            <ul class="nav sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                      Project Allocation
                    </a>
                </li>
                <li>
                    <a href="EmployeeHome.jsp"><i class="fa fa-fw fa-home"></i>User Home</a>
                </li>
                <li>
                    <a href="MyProfile.jsp"><i class="fa fa-fw fa-folder"></i>View My Profile</a>
                </li>
                <li>
                    <a href="My_Projects.jsp"><i class="fa fa-fw fa-cog"></i>Search  Projects</a>
                </li>
               <li>
                    <a href="View_Projects.jsp"><i class="fa fa-fw fa-cog"></i>View Assigned Projects</a>
                </li>
                <li>
                    <a href="Feedback_User.jsp"><i class="fa fa-fw fa-cog"></i>Feedback</a>
                </li>
                <li>
                    <a href="Logout.jsp"><i class="fa fa-fw fa-bank"></i>Logout</a>
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
                        <h1 id="logo" style="text-transform: capitalize"><%=username%> Home Page</h1>
                    </div>
                    <div class="main-header__bottom">
                        <nav class="main-header__menu">
                            <a href="EmployeeHome.jsp">User Home</a>
                            <a href="MyProfile.jsp">View My Profile</a>
                            <a href="Logout.jsp">Logout</a>
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
