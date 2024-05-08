<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from colorlib.com/etc/lf/Login_v16/index.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 29 Oct 2021 22:54:57 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
<title>Login V16</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="icon" type="image/png" href="images/icons/favicon.ico" />

<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">

<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">

<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">

<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">

<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">

<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">

<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

<meta name="robots" content="noindex, follow">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link rel="icon" href="img/xfavicon.png.pagespeed.ic.d0CkosaLMT.png" type="image/png" />

<link rel="stylesheet" href="css%2c_bootstrap.css%2bcss%2c_flaticon.css%2bcss%2c_themify-icons.css%2bvendors%2c_owl-carousel%2c_owl.carousel.min.css%2bvendors%2c_nice-select%2c_css%2c_nice-select.css.pagespeed.cc.B-c6Uo_zoN.1.de" />

<link rel="stylesheet" href="css/A.style.css.pagespeed.cf.rTJrCT-IG0.css" />

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

<header class="header_area">
<div class="main_menu">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
<div class="container">

<a class="navbar-brand logo_h" href="index.jsp"><img src="img/logo.png" alt="" /></a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
<span class="icon-bar"></span> <span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>

<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
<ul class="nav navbar-nav menu_nav ml-auto">
<li class="nav-item ">
<a class="nav-link" href="index.jsp">Home</a>
</li>
<li class="nav-item">
<a class="nav-link" href="about-us.jsp">About</a>
</li>
<li class="nav-item">
<a class="nav-link" href="blog.jsp">Blog</a>
</li>
<li class="nav-item">
<a class="nav-link" href="contact.jsp">Contact</a>
</li>
<li class="nav-item submenu dropdown active">
<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Login</a>
<ul class="dropdown-menu">
<li class="nav-item">
<a class="nav-link" href="student-login.jsp">Student Login</a>
</li>
<li class="nav-item">
<a class="nav-link" href="instructor-login.jsp">Instructor Login</a>
</li>
<li class="nav-item">
<a class="nav-link" href="admin-login.jsp">Admin Login</a>
</li>
</ul>
</li>
<li class="nav-item submenu dropdown">
<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Register</a>
<ul class="dropdown-menu">
<li class="nav-item">
<a class="nav-link" href="student-register.jsp"> As Student</a>
</li>
<li class="nav-item">
<a class="nav-link" href="instructor-register.jsp">As Instructor</a>
</li>
</ul>
</li>
<li class="nav-item">
<a href="#" class="nav-link search" id="search">
<i class="ti-search"></i>
</a>
</li>
</ul>
</div>
</div>
</nav>
</div>
</header>
<br><br><br><br>

<div class="container" >

<div class="bg-light">
<br><br><br><br>
<article class="card-body mx-auto" style="max-width: 400px;">
	<h4 class="card-title mt-3 text-center " style="font-size: 30px;">Instructor Login</h4>
	<form action="InstructorController" method="post">
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="uid" class="form-control" placeholder="Unique ID" type="text" autocomplete="off">
    </div> <!-- form-group// -->
    <div class="form-group input-group">
        <div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input name="password" class="form-control" placeholder="Password" type="password">
    </div> <!-- form-group// -->
        <div class="form-group">
        <input type="submit" name="action" value="Login" class="btn btn-primary btn-block">
    </div> <!-- form-group// -->      
    <p class="text-center" style="font-size: 16px; color:#7b838a;line-height: 25px;">Don't have an account? <a href="instructor-register.jsp">Register</a> </p>                                                                 
</form>
<br><br><br><br><br>
</article>
</div> <!-- card.// -->

</div>

</body>

<!-- Mirrored from colorlib.com/etc/lf/Login_v16/index.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 29 Oct 2021 22:55:02 GMT -->
</html>
