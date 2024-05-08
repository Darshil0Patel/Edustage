<%@page import="com.bean.StudentData"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from preview.colorlib.com/theme/edustage/course-details.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 29 Oct 2021 22:34:37 GMT -->
<head>

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link rel="icon" href="img/xfavicon.png.pagespeed.ic.d0CkosaLMT.png" type="image/png" />
<title>Courses Details</title>

<link rel="stylesheet" href="A.css%2c%2c_bootstrap.css%2bcss%2c%2c_flaticon.css%2bcss%2c%2c_themify-icons.css%2bvendors%2c%2c_owl-carousel%2c%2c_owl.carousel.min.css%2bvendors%2c%2c_nice-select%2c%2c_css%2c%2c_nice-select.css%2cMcc.B-c6Uo_zoN.css" />

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


<!-- <header class="header_area white-header">
<div class="main_menu">
<div class="search_input" id="search_input_box">
<div class="container">
<form class="d-flex justify-content-between" method="" action="#">
<input type="text" class="form-control" id="search_input" placeholder="Search Here" />
<button type="submit" class="btn"></button>
<span class="ti-close" id="close_search" title="Close Search"></span>
</form>
</div>
</div>
<nav class="navbar navbar-expand-lg navbar-light">
<div class="container">

<a class="navbar-brand" href="index.jsp">
<img class="logo-2" src="img/logo2.png" alt="" />
</a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
<span class="icon-bar"></span> <span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>

<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
<ul class="nav navbar-nav menu_nav ml-auto">
<li class="nav-item">
<a class="nav-link" href="index.jsp">Home</a>
</li>
<li class="nav-item">
<a class="nav-link" href="about-us.jsp">About</a>
</li>
<li class="nav-item submenu dropdown active">
<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages</a>
<ul class="dropdown-menu">
<li class="nav-item">
<a class="nav-link" href="courses.jsp">Courses</a>
</li>
<li class="nav-item">
<a class="nav-link" href="course-details.jsp">Course Details</a>
</li>
<li class="nav-item">
<a class="nav-link" href="elements.jsp">Elements</a>
</li>
</ul>
</li>
<li class="nav-item submenu dropdown">
<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Blog</a>
<ul class="dropdown-menu">
<li class="nav-item">
<a class="nav-link" href="blog.jsp">Blog</a>
</li>
<li class="nav-item">
<a class="nav-link" href="single-blog.jsp">Blog Details</a>
</li>
</ul>
</li>
<li class="nav-item">
<a class="nav-link" href="contact.jsp">Contact</a>
</li>
<li class="nav-item">
<a class="nav-link" href="login-index.jsp">Login</a>
</li>
<li class="nav-item">
<a class="nav-link" href="register-index.jsp">Register</a>
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
</header> -->

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
<li class="nav-item active">
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
<li class="nav-item">
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

<!-- <section class="banner_area">
<div class="banner_inner d-flex align-items-center">
<div class="overlay"></div>
<div class="container">
<div class="row justify-content-center">
<div class="col-lg-6">
<div class="banner_content text-center">
<h2>Course Details</h2>
<div class="page_link">
<a href="index.jsp">Home</a>
<a href="courses.jsp">Courses</a>
<a href="course-details.jsp">Courses Details</a>
</div>
</div>
</div>
</div>
</div>
</div>
</section>
 -->

<section class="course_details_area section_gap">
<div class="container">
<div class="row">
<div class="col-lg-8 course_details_left">
<div class="main_image">
<img class="img-fluid" src="img/courses/course-details.jpg" alt="">
</div>
<br>

	<h2 style="text-align: center; color: #002347;">Computer Network</h2>

<div class="content_wrapper">
<h4 class="title">Objectives</h4>
<div class="content">
This course is to provide students with an overview of the concepts and fundamentals of data communication
and computer networks. Topics to be covered include: data communication concepts and techniques in layered
network architecture, error detection and correction mechanisms in Data Link layer, multiple access protocols,
ip addressing, routing in Network layer, different routing protocols, concepts of process to process delivery in
Transport layer, congestion control techniques, different Application layer protocols and some modern
techniques of communication. The course is supplemented by a practical component covered in CS692
concurrently. 

<br>
<br>
At the end of the course, the students will be able to:<br>
1. Build an understanding of the fundamental concepts of data communication and computer networking.<br>
2. Understand how errors detected and corrected that occur in transmission<br>
3. How collisions to be handled when many stations share a single channel<br>
4. Know about routing mechanisms and different routing protocols<br>
5. Understand transport layer functions<br>
6. Know about different application layer protocol
</div>
<h4 class="title">Learning Outcomes:</h4>
<div class="content">
After completing this course the student must demonstrate the knowledge and ability to:<br>
1. Describe the basis and structure of an abstract layered protocol model<br>
2. Independently understand basic computer network technology.<br>
3. Identify the different types of network topologies and protocols.<br>
4. Enumerate the layers of the OSI model and TCP/IP. Explain the function(s) of each layer.<br>
5. Identify the different types of network devices and their functions within a network<br>
6. Understand and building the skills of subnetting and routing mechanisms.<br>
7. Familiarity with the basic protocols of computer networks, and how they can be used to assist in network
design and implementation<br>
8. Understand how the Internet works today.<br>
9. Conversant with primitives of network application programming. 
</div>
<h4 class="title">Course Outline</h4>
<div class="content">
<ul class="course_list">
<li class="justify-content-between d-flex">
<p>Introduction and Network Models</p>
</li>
<li class="justify-content-between d-flex">
<p>Data and Signals</p>
</li>
<li class="justify-content-between d-flex">
<p>Digital and Analog Transmission</p>
</li>
<li class="justify-content-between d-flex">
<p>Multiplexing, Error Detention, and Data Link Control</p>
</li>
<li class="justify-content-between d-flex">
<p>Media Access Control and Ethernet</p>
</li>
<li class="justify-content-between d-flex">
<p>Network Layer and Next Generation IP</p>
</li>
<li class="justify-content-between d-flex">
<p>Data-Link and Network-Layer Protocols</p>
</li>
<li class="justify-content-between d-flex">
<p>Wired Networks and Virtual LANs</p>
</li>
<li class="justify-content-between d-flex">
<p>Wireless Networks</p>
</li>
<li class="justify-content-center mx-sm-3 ">
<a style="text-decoration: none;" class="primary-btn text-uppercase " href="cn-lec.jsp">View Lectures</a>
<a style="text-decoration: none;" class="primary-btn text-uppercase " href="cn-notes.jsp">View Notes</a>
</li>
</ul>
</div>
</div>
</div>
<div class="col-lg-4 right-contents">
<!-- <ul>
<li>
<a class="justify-content-between d-flex" href="#">
<p>Trainer’s Name</p>
<span class="or">George Mathews</span>
</a>
</li>
<li>
<a class="justify-content-between d-flex" href="#">
<p>Course Fee </p>
<span>$230</span>
</a>
</li>
<li>
<a class="justify-content-between d-flex" href="#">
<p>Available Seats </p>
<span>15</span>
</a>
</li>
<li>
<a class="justify-content-between d-flex" href="#">
<p>Schedule </p>
<span>2.00 pm to 4.00 pm</span>
</a>
</li>
</ul>
<a href="#" class="primary-btn2 text-uppercase enroll rounded-0 text-white">Enroll the course</a>
 -->
<h4 class="title">Reviews</h4>
<div class="content">
<div class="review-top row pt-40">
<div class="col-lg-12">
<h6 class="mb-15">Provide Your Rating</h6>
<div class="d-flex flex-row reviews justify-content-between">
<span>Quality</span>
<div class="star">
<i class="ti-star checked"></i>
<i class="ti-star checked"></i>
<i class="ti-star checked"></i>
<i class="ti-star"></i>
<i class="ti-star"></i>
</div>
<span>Outstanding</span>
</div>
<div class="d-flex flex-row reviews justify-content-between">
<span>Puncuality</span>
<div class="star">
<i class="ti-star checked"></i>
<i class="ti-star checked"></i>
<i class="ti-star checked"></i>
<i class="ti-star"></i>
<i class="ti-star"></i>
</div>
<span>Outstanding</span>
</div>
<div class="d-flex flex-row reviews justify-content-between">
<span>Quality</span>
<div class="star">
<i class="ti-star checked"></i>
<i class="ti-star checked"></i>
<i class="ti-star checked"></i>
<i class="ti-star"></i>
<i class="ti-star"></i>
</div>
<span>Outstanding</span>
</div>
</div>
</div>
<div class="feedeback">
<h6>Your Feedback</h6>
<textarea name="feedback" class="form-control" cols="10" rows="10"></textarea>
<div class="mt-10 text-right">
<a href="#" class="primary-btn2 text-right" style="text-decoration: none;">Submit</a>
</div>
</div>
<div class="comments-area mb-30">
<div class="comment-list">
<div class="single-comment single-reviews justify-content-between d-flex">
<div class="user justify-content-between d-flex">
<div class="thumb">
<img src="img/blog/c1.jpg" alt="">
</div>
<div class="desc">
<h5><a href="#">Emilly Blunt</a>
<div class="star">
<span class="ti-star checked"></span>
<span class="ti-star checked"></span>
<span class="ti-star checked"></span>
<span class="ti-star"></span>
<span class="ti-star"></span>
</div>
</h5>
<p class="comment">
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
eiusmod tempor incididunt ut labore et dolore.
</p>
</div>
</div>
</div>
</div>
<div class="comment-list">
<div class="single-comment single-reviews justify-content-between d-flex">
<div class="user justify-content-between d-flex">
<div class="thumb">
<img src="img/blog/c2.jpg" alt="">
</div>
<div class="desc">
<h5><a href="#">Elsie Cunningham</a>
<div class="star">
<span class="ti-star checked"></span>
<span class="ti-star checked"></span>
<span class="ti-star checked"></span>
<span class="ti-star"></span>
<span class="ti-star"></span>
</div>
</h5>
<p class="comment">
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
eiusmod tempor incididunt ut labore et dolore.
</p>
</div>
</div>
</div>
</div>
<div class="comment-list">
<div class="single-comment single-reviews justify-content-between d-flex">
<div class="user justify-content-between d-flex">
<div class="thumb">
<img src="img/blog/c3.jpg" alt="">
</div>
<div class="desc">
<h5><a href="#">Maria Luna</a>
<div class="star">
<span class="ti-star checked"></span>
<span class="ti-star checked"></span>
<span class="ti-star checked"></span>
<span class="ti-star"></span>
<span class="ti-star"></span>
</div>
</h5>
<p class="comment">
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
eiusmod tempor incididunt ut labore et dolore.
</p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</section>


<footer class="footer-area section_gap">
<div class="container">
<div class="row">
<div class="col-lg-2 col-md-6 single-footer-widget">
<h4>Top Products</h4>
<ul>
<li><a href="#">Managed Website</a></li>
<li><a href="#">Manage Reputation</a></li>
<li><a href="#">Power Tools</a></li>
<li><a href="#">Marketing Service</a></li>
</ul>
</div>
<div class="col-lg-2 col-md-6 single-footer-widget">
<h4>Quick Links</h4>
<ul>
<li><a href="#">Jobs</a></li>
<li><a href="#">Brand Assets</a></li>
<li><a href="#">Investor Relations</a></li>
<li><a href="#">Terms of Service</a></li>
</ul>
</div>
<div class="col-lg-2 col-md-6 single-footer-widget">
<h4>Features</h4>
<ul>
<li><a href="#">Jobs</a></li>
<li><a href="#">Brand Assets</a></li>
<li><a href="#">Investor Relations</a></li>
<li><a href="#">Terms of Service</a></li>
</ul>
</div>
<div class="col-lg-2 col-md-6 single-footer-widget">
<h4>Resources</h4>
<ul>
<li><a href="#">Guides</a></li>
<li><a href="#">Research</a></li>
<li><a href="#">Experts</a></li>
<li><a href="#">Agencies</a></li>
</ul>
</div>
<div class="col-lg-4 col-md-6 single-footer-widget">
<h4>Newsletter</h4>
<p>You can trust us. we only send promo offers,</p>
<div class="form-wrap" id="mc_embed_signup">
<form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" class="form-inline">
<input class="form-control" name="EMAIL" placeholder="Your Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address'" required type="email" />
<button class="click-btn btn btn-default">
<span>subscribe</span>
</button>
<div style="position: absolute; left: -5000px;">
<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text" />
</div>
<div class="info"></div>
</form>
</div>
</div>
</div>
<div class="row footer-bottom d-flex justify-content-between">
<p class="col-lg-8 col-sm-12 footer-text m-0 text-white">

Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com/" target="_blank">Colorlib</a>

</p>
<div class="col-lg-4 col-sm-12 footer-social">
<a href="#"><i class="ti-facebook"></i></a>
<a href="#"><i class="ti-twitter"></i></a>
<a href="#"><i class="ti-dribbble"></i></a>
<a href="#"><i class="ti-linkedin"></i></a>
</div>
</div>
</div>
</footer>



<script src="js/jquery-3.2.1.min.js"></script>
<script src="js%2c_popper.js%2bjs%2c_bootstrap.min.js%2bvendors%2c_nice-select%2c_js%2c_jquery.nice-select.min.js.pagespeed.jc.bpB8ipHmhM.js"></script><script>eval(mod_pagespeed_Mfm6u8Plws);</script>
<script>eval(mod_pagespeed_ZwL22onz9D);</script>
<script>eval(mod_pagespeed_9N3wpQb3XU);</script>
<script src="vendors%2c_owl-carousel%2c_owl.carousel.min.js%2bjs%2c_owl-carousel-thumb.min.js%2bjs%2c_jquery.ajaxchimp.min.js%2bjs%2c_mail-script.js.pagespeed.jc.1ly_4XtkaH.js"></script><script>eval(mod_pagespeed_bwTxFhPZwg);</script>
<script>eval(mod_pagespeed_hk82EG4XqQ);</script>
<script>eval(mod_pagespeed_NYRRdzXfxA);</script>
<script>eval(mod_pagespeed_MoVb2HcGde);</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
<script src="js/gmaps.min.js"></script>
<script src="js/theme.js"></script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>
<script defer src="../../../static.cloudflareinsights.com/beacon.min.js" data-cf-beacon='{"rayId":"6ab8839a10f0d5fc","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2021.10.0","si":100}'></script>
<script defer src="../../../static.cloudflareinsights.com/beacon.min.js" data-cf-beacon='{"rayId":"6ab8839a0a76d5fc","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2021.10.0","si":100}'></script>
</body>

<!-- Mirrored from preview.colorlib.com/theme/edustage/course-details.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 29 Oct 2021 22:34:42 GMT -->
</html>