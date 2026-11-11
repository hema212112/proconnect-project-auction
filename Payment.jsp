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
      <!--java compiler-->
        <script type="text/javascript" src="js/jquery.js"></script>
        <!--<link rel="stylesheet" type="text/css" href="css/style3.css">-->
        <script language="javascript" type="text/javascript" src="editarea/edit_area_full.js"></script>
        <script language="javascript" type="text/javascript">
        editAreaLoader.init({
                id : "editor",      // textarea id
                syntax: "java",     // syntax to be uses for highgliting
                start_highlight: true,      // to display with highlight mode on start-up
                allow_toggle: false,
                toolbar: "search, go_to_line, fullscreen, |, undo, redo, |, select_font, |, syntax_selection, |, change_smooth_selection, highlight, reset_highlight, |, help",
                show_line_colors: true,
                syntax_selection_allow: "css,html,js,sql,java",
                replace_tab_by_spaces: 4,
                language: "zh",
                submit_callback: "Run()"
        });
        </script>
<!--end code-->
</head>
<body onload="autofill()">
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
                            <a href="ReviewHome.jsp" style="background: black;border-radius:     6px;">Home</a>
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
            <%
                String id=request.getParameter("id");
                String pid=request.getParameter("pid");
                String ptitle=request.getParameter("tit");
                String mail=request.getParameter("mail");
                String uname=request.getParameter("uname");
                String status=request.getParameter("status");
                if(status.equalsIgnoreCase("Completed")){
                %>
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
                <h1 align="center">Payment Gateway</h1>
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
                <form action="Pay_Action.jsp">
                <table align="center" style="line-height: 5;font-size: medium;font-family: -webkit-body;">
                    <tr>
                        <td>Project ID:</td>
                        <td><input type="text" name="pid" required="" value="<%=pid%>" id="des"></td>
                    </tr>
                    <input type="hidden" name="sid" value="<%=id%>">
                    <tr>
                        <td>Project Title:</td>
                        <td>
                            <input type="text" name="ptitle" value="<%=ptitle%>" id="des" required="">
                        </td>
                    </tr>
                    <tr>
                        <td>Username:</td>
                        <td>
                            <input type="text"  name="uname" value="<%=uname%>" required="" id="des" >
                        </td>
                    </tr>
                    <tr>
                        <td>Mail ID</td>
                        <td>
                            <input type="text"  name="mail" value="<%=mail%>" required="" id="des">
                        </td>
                    </tr>
                    <tr>
                        <td>Choose Bank</td>
                        <td>
                            <select name="bank">
                                <option value="0">Select One</option>
                                <option value="State Bank">State Bank</option>
                                <option value="Indian Bank">Indian Bank</option>
                                <option value="Canara Bank">Canara Bank</option>
                                <option value="KVB Bank">KVB</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Card Number</td>
                        <td>
                            <input type="text"  name="cnum" required="" id="des">
                        </td>
                    </tr>
                    <tr>
                        <td>Expiry Date</td>
                        <td>
                            <input type="date"  name="edate" required="" id="des">
                        </td>
                    </tr>
                    <tr>
                        <td>CCV</td>
                        <td>
                            <input type="text"  name="ccv" required="" id="des">
                        </td>
                    </tr>
                    <tr><td colspan="2" align="center"><input type="submit" value="PAY" style="
                    width: 122px;
                    height: 39px;
                    border: black;
                    border-radius: 7px;
                    color: black;
                    background: darkkhaki;
                    font-weight: bold;
                    "></td></tr>
                </table>
                </form>
            </div>
              <%
                }
                else{
                    out.println("<script>"
                            +"alert('Project Status is not Complete')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("View_staprojects.jsp");
 rd.include(request, response);
                }
              %>
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
