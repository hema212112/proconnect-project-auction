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
                    <a href="ReviewHome.jsp"><i class="fa fa-fw fa-home"></i>Reviewer Home</a>
                </li>
                <li>
                    <a href="Employee_Details.jsp"><i class="fa fa-fw fa-file-o"></i>View Employee Details</a>
                </li>
                 <li>
                    <a href="Appreq.jsp"><i class="fa fa-fw fa-file-o"></i>View Appraisal Request</a>
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
                        <h1 id="logo" style="text-transform: capitalize">Reviewer's View</h1>
                    </div>
                    <div class="main-header__bottom">
                        <nav class="main-header__menu">
                            <a href="ReviewHome.jsp">Home</a>
                        </nav>
                    </div>
                    </div>
                </div>
                <button class="menu-button" id="js-menu-button">
                    <div class="menu-button__hb" id="js-hamburger"><span></span></div>
                </button>
            </header>
            </div>
            <br>
            <h1 align="center">Employee Detailed View</h1>
            <hr  style="border-bottom: dotted 3px;">
            <div style="
                width: 1122px;
                margin-left: 148px;
                font-family: cursive;
                font-size: 13px;
                border-radius: 18px;
                border-style: groove;
                ">
                <br><br>
                <table align="center" style="width: 1091px;line-height: 3;font-size: medium;font-family: -webkit-pictograph;text-align: center;font-weight: bold;color: papayawhip;background: black;border-radius: 11px;" border="1">
                    <tr style="color: yellow">
                        <td>Employee Name</td>
                        <td>Password</td>
                        <td>Mobile</td>
                        <td>Date of Birth</td>
                        <td>Email</td>
                        <td>Gender</td>
                        <td>Address</td>
                        <td>Designation</td>
                        <td>Delete</td>
                        <td>Modify</td>
                    </tr>
                <%
                    PreparedStatement query=new DB().Con().prepareStatement("select * from employee");
                    ResultSet rs=query.executeQuery();
                    int i=0;
                    while(rs.next())
                    {
                        i++;
                        String id=rs.getString("id");
                        String ename=rs.getString("employee_name");
                        String password=rs.getString("password");
                        String mobile=rs.getString("mobile");
                        String dob=rs.getString("dob");
                        String email=rs.getString("email");
                        String gender=rs.getString("gender");
                        String address=rs.getString("address");
                        String designation=rs.getString("designation");
                        %>
                            <tr>
                                <td><%=ename%></td>
                                <td><%=password%></td>
                                <td><%=mobile%></td>
                                <td><%=dob%></td>
                                <td><%=email%></td>
                                <td><%=gender%></td>
                                <td><%=address%></td>
                                <td><%=designation%></td>
                                <td><a href="Delete_Emp.jsp?id=<%=id%>" style="color: red!important;">Del_Emp</a></td>
                                <td><a href="Modify_Emp.jsp?id=<%=id%>" style="color: green !important;">Mod_Emp</a></td>
                            </tr>
                        <%
                    }
                    %>
                </table>
                <br><br>
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
