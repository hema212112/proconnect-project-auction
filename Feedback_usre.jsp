      <%@page import="java.sql.*"%>
<%@page import="db.DB"%>
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
                        <h1 id="logo" style="text-transform: capitalize"><%=username%> &emsp; (Dash Board)</h1>
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
            <br>
            <div align="justify" style="width: 1106px;margin-left: 148px;font-size: 22px;border-radius: 18px;padding: 21px;border-style: groove;">
<!---------------------------------------------------------------------------------------->
                <style>
                    table,tr,td,th
                    {
                        padding: 5px;
                        align:center;
                        font-family: sans-serif!important;
                    }
                </style>
                <hr  style="border-bottom: dotted 3px;">
               <div>
                        <h4 style="color: navy; margin-left: 30%;">Feedbacks of Projects</h4>
                        <table align="left" style="width: 100%;text-align: center;font-size: 15px;" border="1">
                        <tr style="color: mediumvioletred;font-weight: bold;">
                            <td>Project ID</td>
                            <td>Project Title</td>
                            <td>Project Link</td>
                            <td>Project File</td>
                            <td>Feedback</td>
                        </tr>
                           <%
                           String m=(String)session.getAttribute("des");
                           String n=(String)session.getAttribute("ename");
                           String mail=(String)session.getAttribute("email");
                    PreparedStatement query=new DB().Con().prepareStatement("SELECT * FROM pro_status WHERE username='"+username+"' ");
                    System.out.println(query);
                    ResultSet rs=query.executeQuery();
                    while(rs.next())
                    {
                        String pid=rs.getString("pid");
                        String ptitle=rs.getString("ptitle");
                        String plink=rs.getString("plink");
                        String pfile=rs.getString("fname");
                        String feedback=rs.getString("feedback");
                 %>
                        <tr>
                            <td><%=pid%></td>
                            <td><%=ptitle%></td>
                            <td><%=plink%></td>
                            <td><%=pfile%></td>
                            <td><%=feedback%></td>
                             <%
                            }
                            %>
                        </tr>
                    </table>
                        <br><br>
        </div>
                            ==================================================================================
                            </div>
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
