<%@page import="com.bean.StudentData"%>
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
<title>Update</title>

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

<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
%>

<%
	StudentData sd = null;
	if(session!=null)
	{
		if(session.getAttribute("login")!=null)
		{
			sd = (StudentData)session.getAttribute("login");
		}
		else
		{
			response.sendRedirect("student-login.jsp");
		}
	}
	else
	{
		response.sendRedirect("student-login.jsp");
	}

%>

<header class="header_area">
<div class="main_menu">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
<div class="container">

<a class="navbar-brand logo_h" href=""><img src="img/logo.png" alt="" /></a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
<span class="icon-bar"></span> <span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>

<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
<ul class="nav navbar-nav menu_nav ml-auto">
<li class="nav-item">
<a class="nav-link" href="courses.jsp">Learnings</a>
</li>
<li class="nav-item">
<a class="nav-link" href="student-attendance.jsp">View Attendance</a>
</li>
<li class="nav-item">
<a class="nav-link" href="student-showexam.jsp">Exam</a>
</li>
<li class="nav-item">
<a class="nav-link" href="#">Fees Payment</a>
</li>
<li class="nav-item">
<a class="nav-link" href="contact-login.jsp">Contact</a>
</li>
<li class="nav-item active">
<a class="nav-link" href="student-update.jsp">Profile</a>
</li>
<li class="nav-item">
<a class="nav-link" href="StudentController?action=logout">Logout</a>
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
	<h4 class="card-title mt-3 text-center">Edit Account</h4>
	<form action="StudentController" method="post">
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-id-card" aria-hidden="true"></i> </span>
		 </div>
        <input name="uid" value=<%=sd.getErno() %> class="form-control" placeholder="Enrollment No" type="text" autocomplete="off" style="background-color: white;" disabled="disabled">
    </div>
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="fname" value=<%=sd.getFname() %> class="form-control" placeholder="First name" type="text" autocomplete="off" required>
    </div>
    <div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="lname" value=<%=sd.getLname() %> class="form-control" placeholder="Last name" type="text" autocomplete="off" required>
    </div>
     <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="email" value=<%=sd.getEmail() %> class="form-control" placeholder="Email address" type="email" autocomplete="off" required>
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
    	<input name="contact" value=<%=sd.getContact() %> class="form-control" placeholder="Phone number" type="number" autocomplete="off" required>
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-university"></i> </span>
		</div>
		<select class="form-control" name="college">
			<option class="hidden" selected disabled><%=sd.getCollege().toUpperCase() %></option>
			<option value="socet">SOCET</option>
			<option value="asoit">ASOIT</option>
		</select>
	</div>
	<div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-graduation-cap"></i> </span>
		</div>
		<select class="form-control" name="year">
			<option class="hidden" selected disabled><%=sd.getYear() %></option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
		</select>
	</div>
	 <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-graduation-cap"></i> </span>
		</div>
		<select class="form-control" name="branch">
			<option class="hidden" selected disabled><%=sd.getBranch().toUpperCase() %></option>
			<option value="cs">CS</option>
			<option value="it">IT</option>
		</select>
	</div>
	 <!-- form-group end.// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input name="password" value="<%=sd.getPassword() %>" class="form-control" placeholder="Create password" type="text" autocomplete="off" required>
    </div> <!-- form-group// -->
     <!-- form-group// -->                                       
    <div class="form-group">
                         <input type="hidden" name="id" class="form-control" value=<%=sd.getId() %>  />
                         <input type="hidden" name="fname" class="form-control" value=<%=sd.getFname() %>  />
                         <input type="hidden" name="lname" class="form-control" value=<%=sd.getLname() %>  />
                         <input type="hidden" name="password" class="form-control" value=<%=sd.getPassword() %>  />
                         <input type="hidden" name="contact" class="form-control" value=<%=sd.getContact() %>  />
                         <input type="hidden" name="email" class="form-control" value=<%=sd.getEmail() %>  />
                         <input type="hidden" name="college" class="form-control" value=<%=sd.getCollege() %>  />
                         <input type="hidden" name="branch" class="form-control" value=<%=sd.getBranch() %>  />
                         <input type="hidden" name="year" class="form-control" value=<%=sd.getYear() %>  />
                         <input type="hidden" name="erno" class="form-control" value=<%=sd.getErno() %>  />
        <input type="submit" name="action" value="Update" class="btn btn-primary btn-block"> 
    </div> <!-- form-group// -->      
                                                                     
</form>
</article>
</div> <!-- card.// -->

</div> 
</body>
<br>
<!-- Mirrored from colorlib.com/etc/regform/colorlib-regform-8/ by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 29 Oct 2021 22:59:15 GMT -->
</html>