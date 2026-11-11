<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>ProConnect</title>
  <link rel="icon" type="image/png" href="images/Icon.ico"/>
  <link rel="stylesheet" href="css/bg1.css">
  <link rel='stylesheet prefetch' href='css/bg2.css'>
      <link rel="stylesheet" href="css/style.css">
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
                      Project Allocation
                    </a>
                </li>
                <li>
                    <a href="index.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
                </li>
                <li>
                    <a href="Employee.jsp"><i class="fa fa-fw fa-folder"></i>User</a>
                </li>
                <li>
                    <a href="Register.jsp"><i class="fa fa-fw fa-file-o"></i>Register</a>
                </li>
                <li>
                    <a href="Review.jsp"><i class="fa fa-fw fa-cog"></i>Admin</a>
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
                        <h1 id="logo">Project Auction System</h1>
                    </div>
                    <div class="main-header__bottom">
                        <nav class="main-header__menu">
                            <a href="index.jsp">Home</a>
                            <a href="Employee.jsp">User</a>
                            <a href="Register.jsp">Register</a>
                            <a href="Manager.jsp">Admin</a>
                            <a href="Review.jsp">Reviewer</a>
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
            <h1 align="center"> ProConnect</h1>
            <hr  style="border-bottom: dotted 3px;">
            <h1 align="center">User Login Page</h1>
            <br><br><br>
            <form action="User" method="post">
                <table align="center" style="
                    background:white;
                    width: 382px;
                    padding-left: 151px;
                    text-align: center;
                    line-height: 3;
                    border-radius: 12px;
                    font-family: cursive;
                    font-weight: bold;
                    font-size: 15px;
                    color: navy;
                " border="1">
                    <tr><td colspan="2"><h4 style="color: purple">User Login</h4></td></tr>
                        <tr><td>User Name</td><td><input type="text" name="username" required></td></tr>
                        <tr><td>Password</td><td><input type="password" name="password" required></td></tr>
                    <tr align="center"><td align="center" colspan="2"><input type="submit" value="Login" style="width: 100px;height: 33px;"></td></tr>
                </table>
            </form>
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
