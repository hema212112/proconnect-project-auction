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
            <br>
            <script type="text/javascript">
                function validate()
                {
                    var disp=document.getElementById("disp");
                    var name=document.myForm.username.value;
                    var password=document.myForm.password.value;
                    var mobile = document.myForm.mobile.value;
                    //For User Name
                    if (name === "")
                    {
                        disp.innerHTML = ("Please Enter a name");
                        //name.focus();
                        return false;
                    }
                    else if(!/^[a-zA-Z]*$/g.test(name))
                    {
                        disp.innerHTML = ("Please Enter Only Text (Remove Special Characters and Number)");
                        //name.focus();
                        return false;
                    }
                    else if(name.length<6)
                    {
                        disp.innerHTML = ("Please Enter Name Min 6 Characters");
                        return false;
                    }
                    //For Password
                    var newPassword = document.myForm.password.value;
                    var regularExpression  = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
                    if (password === "")
                    {
                        disp.innerHTML = ("Please Enter a Password");
                        //name.focus();
                        return false;
                    }
                    else if(!regularExpression.test(newPassword))
                    {
                        disp.innerHTML = ("Password Should Contain Atleast One Number and One Special character and Minimum Length 6");
                        return false;
                    }
                    else if(password.length<6)
                    {
                        disp.innerHTML = ("Please Enter Min 6 Characters");
                        return false;
                    }
                    //For Mobile Number
                    if(mobile === "")
                    {
                       disp.innerHTML = ("Please Enter Mobile Number");
                       return false;
                    }
                    else if(!mobile.match(/^[0-9]*$/))
                    {
                        disp.innerHTML = ("Please Enter Number Only for Mobile Number");
                        return false;
                    }
                    else if (mobile.length<10 || mobile.length>10)
                    {
                       disp.innerHTML = ("Please Enter 10 Digit Mobile Number");
                       return false;
                    }
                    //For Email Address
                    var email = document.myForm.email.value;
                    var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
                    if(email === "")
                    {
                       disp.innerHTML = ("Please Enter Email");
                       return false;
                    }
                    else if (reg.test(email) === false)
                    {
                        disp.innerHTML = ('Invalid Email Address');
                        return (false);
                    }
                }
            </script>
            <form action="Register" method="post" name="myForm" onsubmit="return validate()">
                <p align="center" id="disp" style="color: red !important;"></p>
                <table align="center" style="
                    width: 500px;
                    line-height: 3;
                    border-radius: 12px;
                    font-weight: bold;
                    border-style: double;
                    text-align: left;
                ">
                    <tr><td colspan="2" align="center"><h4 style="color: purple;">User Registration</h4></td></tr>
                    <tr><td style="padding-left: 60px;">User Name</td><td><input type="text" name="username"></td></tr>
                    <tr><td style="padding-left: 60px;">Password</td><td><input type="password" name="password"></td></tr>
                    <tr><td style="padding-left: 60px;">Date of Birth</td><td><input type="date" name="dob" required></td></tr>
                    <tr><td style="padding-left: 60px;">Gender</td><td>Male <input type="radio" name="gender" value="Male" required> Female <input type="radio" name="gender" value="Female" required ></td></tr>
                     <tr><td style="padding-left: 60px;">Address</td><td><input type="text" name="address"></td></tr>
                    <tr><td style="padding-left: 60px;">Mobile</td><td><input type="text" name="mobile"></td></tr>
                    <tr><td style="padding-left: 60px;">Email</td><td><input type="email" name="email"></td></tr>
                    <tr><td style="padding-left: 60px;">Qualification</td><td><input type="text" name="Qualification" required></td></tr>
                    <tr align="center"><td align="center" colspan="2"><input type="submit" value="Register" style="width: 100px;height: 33px;"></td></tr>
                </table>
                <input type="hidden" name="address" value="---">
            </form>
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
