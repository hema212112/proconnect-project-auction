  <%@page import="java.sql.*"%>
<%@page import="db.DB"%>
<!DOCTYPE html>
<html lang="en">
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
            <br>
            <div align="justify" style="
                width: 1000px;
                height: 950px;
                margin-left: 120px;
                font-family: cursive;
                font-size: 13px;
                border-radius: 18px;
                padding: 25px;
                border-style: groove;
            ">
                <%--<%@include file="PieChart.jsp"%>--%>
                <h1 align="center">Employee's Recommended for Appraisal</h1>
                <hr  style="border-bottom: dotted 3px;">
                <style>
                    #des
                    {
                        font-family: initial;
                        width: 210px;
                        height: 36px;
                        color: brown;
                        border-radius: 6px;
                        font-weight: bold;
                    }
                </style>
                <%
                    String id=request.getParameter("id");
                    String tit=request.getParameter("tit");
                    String ename=request.getParameter("ename");
                    String ski=request.getParameter("ski");
                    String mail=request.getParameter("mail");
                %>
                <form action="ProStatus_Update" method="post" enctype="multipart/form-data">
                <table align="center" style="line-height: 5;font-size: medium;font-family: -webkit-body;">
                    <tr><td style="color:navy; "><strong>User Name</strong></td><td style="padding-left: 30px;"><input type="text" name="ename" value="<%=ename%>"></td></tr>
                    <tr><td style="color:navy; "><strong>Project Id</strong></td><td style="padding-left: 30px;"><input type="text" name="pid" value="<%=id%>"></td></tr>
                    <tr><td style="color:navy; "><strong>Project Title</strong></td><td style="padding-left: 30px;"><input type="text" name="ptitle" value="<%=tit%>"></td></tr>
                    <tr><td style="color:navy; "><strong>Mail</strong></td><td style="padding-left: 30px;"><input type="text" name="p" value="<%=mail%>"></td></tr>
                        <tr>
                            <td style="color:navy; "><strong>Status</strong></td>
                            <td style="padding-left: 30px;">
                                <select name="satus">
                                    <option selected disabled>choose one</option>
                                    <option value="Completed">Complete</option>
                                    <option value="Ongoing">On-Going</option>
                                    <option value="Started">Start</option>
                                    <option value="Closed">Close</option>
                                </select>
                            </td>
                        </tr>
                    <tr><td style="color:navy; "><strong>Project Link</strong></td><td style="padding-left: 30px;"><input type="text" name="plink" required></td></tr>
                    <tr><td style="color:navy; "><strong>Upload File</strong></td><td style="padding-left: 30px;"><input type="file" name="file" required></td></tr>
                    <tr><td colspan="2" align="center"><input type="submit" value="Create" style="
                    width: 122px;
                    height: 39px;
                    border: black;
                    border-radius: 7px;
                    color: black;
                    background: darkkhaki;
                    font-weight: bold;
                    "></td></tr>
                </table>
                </form><br><br>
                 <h4 style="color: navy; margin-left: 30%;">Recommended Projects</h4>
                        <table align="left" style="width: 100%;text-align: center;font-size: 15px;">
                           <%
                    PreparedStatement query=new DB().Con().prepareStatement("SELECT * FROM pro_status WHERE ptitle='"+tit+"' GROUP BY ptitle ");
                    System.out.println(query);
                    ResultSet rs=query.executeQuery();
                    while(rs.next())
                    {
                        String plink=rs.getString("plink");
                 %>
                        <tr style="color: mediumvioletred;font-weight: bold;">
                            <td style="padding-bottom: 10px;"><%=plink%></td>
                            <%
                            }
                            %>
                        </tr>
                    </table>
            </div>
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
