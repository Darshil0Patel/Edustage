<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from colorlib.com/etc/regform/colorlib-regform-8/ by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 29 Oct 2021 22:59:14 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up</title>

<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

<link rel="stylesheet" href="css/style.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
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
<li class="nav-item submenu dropdown">
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
<li class="nav-item submenu dropdown active">
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
<div class="container">

<div class="bg-light">
<article class="card-body mx-auto" style="max-width: 400px;">
	<h4 class="card-title mt-3 text-center">Create Account</h4>
	<form action="InstructorController" method="post">
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="fname" class="form-control" placeholder="First name" type="text" autocomplete="off" required>
    </div>
    <div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="lname" class="form-control" placeholder="Last name" type="text" autocomplete="off" required>
    </div>
    <div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-id-card" aria-hidden="true"></i> </span>
		 </div>
        <input name="uid" class="form-control" placeholder="Unique ID" type="text" autocomplete="off" required>
    </div>
     <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="email" class="form-control" placeholder="Email address" type="email" autocomplete="off" required>
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
		</div>
		<!-- <select class="custom-select" style="max-width: 120px;">
		    <option selected="">+971</option>
		    <option value="1">+972</option>
		    <option value="2">+198</option>
		    <option value="3">+701</option>
		</select> -->
    	<input name="contact" class="form-control" placeholder="Phone number" type="number" autocomplete="off" required>
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-university"></i> </span>
		</div>
		<select class="form-control" name="college">
			<option class="hidden" selected disabled> Select College</option>
			<option value="socet">SOCET</option>
			<option value="asoit">ASOIT</option>
		</select>
	</div>
	<div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-graduation-cap"></i> </span>
		</div>
		<select class="form-control" name="year">
			<option class="hidden" selected disabled> Select Teaching Year</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
		</select>
	</div>
	<div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-book"></i> </span>
		</div>
		<select class="form-control" name="subject">
			<option class="hidden" selected disabled> Select Teaching Subject</option>
			<option value="CN">Computer Network</option>
			<option value="ADA">Analysis and Design of Algorithms</option>
			<option value="SE">Software Engineering</option>
		</select>
	</div>
	 <!-- form-group end.// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input name="password" class="form-control" placeholder="Create password" type="password" required>
    </div> <!-- form-group// -->
     <!-- form-group// -->                                      
    <div class="form-group">
        <input type="submit" name="action" value="Register" class="btn btn-primary btn-block"> 
    </div> <!-- form-group// -->      
    <p class="text-center">Have an account? <a href="instructor-login.jsp">Log In</a> </p>                                                                 
</form>
</article>
</div> <!-- card.// -->

</div> 
</body>
<br>
<!-- Mirrored from colorlib.com/etc/regform/colorlib-regform-8/ by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 29 Oct 2021 22:59:15 GMT -->
</html>