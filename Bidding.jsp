<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
                        <h1 id="logo" style="text-transform: capitalize"><%=username%> &emsp;(Dash Board)</h1>
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
                <button class="menu-button" id="js-menu-button">
                    <div class="menu-button__hb" id="js-hamburger"><span></span></div>
                </button>
            </header>
            </div>
            <br><br>
            <div align="justify" style="
                width: 1046px;
                margin-left: 148px;
                font-family: cursive;
                font-size: 22px;
                color: navy;
                background: aliceblue;
                border-radius: 18px;
                padding: 21px;
                border-style: groove;
            ">
            <!---------------------------------------------------------------------------------------->
                <%
                    String s_no=request.getParameter("id");
                    String ptit=request.getParameter("tit");
                    String ename=request.getParameter("ename");
                    String mail=request.getParameter("mail");
                    String ski=request.getParameter("ski");
                    Connection con=new DB().Con();
                    PreparedStatement select=con.prepareStatement("select * from projects where id='"+s_no+"' and project_name='"+ptit+"' ");
                    ResultSet ds=select.executeQuery();
                    String des="",cat="",sdate="",edate="",skill="",req="";
                    while(ds.next())
                    {
                        des=ds.getString("des");
                        cat=ds.getString("cat");
                        sdate=ds.getString("sdate");
                        edate=ds.getString("edate");
                        skill=ds.getString("skill");
                        req=ds.getString("req");
                    }
                %>
                <form action="Bidding_Action.jsp">
                <table align="center" style="line-height: 5;font-size: medium;font-family: -webkit-body;">
                    <tr>
                        <td>Username:</td>
                        <td><input type="text" name="ename" required="" value="<%=ename%>" id="des"></td>
                    </tr>
                    <tr>
                        <td>Mail ID:</td>
                        <td><input type="text" name="mail" required="" value="<%=mail%>" id="des"></td>
                    </tr>
                    <tr>
                        <td>Designation:</td>
                        <td><input type="text" name="desig" required="" value="<%=ski%>" id="des"></td>
                    </tr>
                    <tr>
                        <td>Project Title:</td>
                        <td><input type="text" name="ptitle" required="" value="<%=ptit%>" id="des" readonly></td>
                    </tr>
                    <tr>
                        <td>Project Description</td>
                        <td>
                            <input type="text" name="des" id="des" value="<%=des%>" style="font-size: 14px; margin: 0px; height: 100px; width: 250px; color: navy; line-height: 2;" readonly>
                        </td>
                    </tr>
                    <tr>
                        <td>Category:</td>
                        <td>
                            <select name="cat" id="des" readonly>
                                <option value="<%=cat%>"><%=cat%></option>
                                <option value="Logo Creation">Logo Creation</option>
                                <option value="Website Design">Website Design</option>
                                <option value="Database Connection">Database Connection</option>
                                <option value="Bugs Solution">Bugs Solution</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>End Date For Bidding</td>
                        <td>
                            <input type="date" class="sdate" name="sdate" value=<%=sdate%> required="" id="des" readonly >
                        </td>
                    </tr>
                    <tr>
                        <td>End Date for Project</td>
                        <td>
                            <input type="date" class="edate" name="edate" value="<%=edate%>" required="" id="des" readonly>
                        </td>
                    </tr>
                    <tr>
                        <td>Skills</td>
                        <td>
                            <input name="skill" id="des" value=<%=skill%> required  readonly>
                        </td>
                    </tr>
                    <tr>
                        <td>Requirement</td>
                        <td>
                            <input type="text" name="req" id="des" value=<%=req%> readonly style="font-size: 14px; margin: 0px; height: 100px; width: 250px; color: navy; line-height: 2;" required>
                        </td>
                    </tr>
                    <tr>
                        <td>price</td>
                        <td>
                            <input name="bid" id="des"  required >
                        </td>
                    </tr>
                    <tr><td colspan="2" align="center"><input type="submit" value="Update" style="
                    width: 122px;
                    height: 39px;
                    border: black;
                    border-radius: 7px;
                    color: black;
                    background: darkkhaki;
                    font-weight: bold;
                    "></td></tr>
                </table>
                    <input type="hidden" value="<%=s_no%>" name="id">
                </form>
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
