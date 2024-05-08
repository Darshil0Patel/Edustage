<%@page import="com.bean.AttendanceData"%>
<%@page import="com.dao.AttendanceDao"%>
<%@page import="com.dao.InstructorDao"%>
<%@page import="java.util.List"%>
<%@page import="com.bean.InstructorData"%>
<%@page import="com.bean.StudentData"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from preview.colorlib.com/theme/edustage/courses.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 29 Oct 2021 22:34:37 GMT -->
<head>

<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link rel="icon" href="img/xfavicon.png.pagespeed.ic.d0CkosaLMT.png"
	type="image/png" />
<title>Education</title>

<link rel="stylesheet"
	href="A.css%2c%2c_bootstrap.css%2bcss%2c%2c_flaticon.css%2bcss%2c%2c_themify-icons.css%2bvendors%2c%2c_owl-carousel%2c%2c_owl.carousel.min.css%2bvendors%2c%2c_nice-select%2c%2c_css%2c%2c_nice-select.css%2cMcc.B-c6Uo_zoN.css" />

<link rel="stylesheet"
	href="css/A.style.css.pagespeed.cf.rTJrCT-IG0.css" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="js/table2excel.js"></script>
</head>
<body>

	<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	%>

	<%
	InstructorData ind = null;
	if (session != null) {
		if (session.getAttribute("login") != null) {
			ind = (InstructorData) session.getAttribute("login");

		} else {
			response.sendRedirect("instructor-login.jsp");
		}
	} else {
		response.sendRedirect("instructor-login.jsp");
	}
	%>
	<%
	List<AttendanceData> list = AttendanceDao.ListOfStudent(ind);
	%>


	<header class="header_area">
		<div class="main_menu">

			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container">

					<a class="navbar-brand logo_h" href=""><img src="img/logo.png"
						alt="" /></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>

					<div class="collapse navbar-collapse offset"
						id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item"><a class="nav-link"
								href="instructor-video.jsp">Video Upload</a></li>
							<li class="nav-item"><a class="nav-link"
								href="instructor-notes.jsp">Notes Upload</a></li>
							<!-- <li class="nav-item">
<a class="nav-link" href="instructor-contact.jsp">Contact</a>
</li> -->
							<li class="nav-item active"><a class="nav-link"
								href="instructor-attendance.jsp">Attendance</a></li>
							<li class="nav-item"><a class="nav-link"
								href="instructor-addexam.jsp">Exam</a></li>
							<li class="nav-item"><a class="nav-link"
								href="instructor-update.jsp">Profile</a></li>
							<li class="nav-item"><a class="nav-link"
								href="InstructorController?action=logout">Logout</a></li>
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
<h2>Courses</h2>
<div class="page_link">
<a href="index.jsp">Home</a>
<a href="courses.jsp">Courses</a>
</div>
</div>
</div>
</div>
</div>
</div>
</section> -->


	<!-- <div class="popular_courses section_gap_top">
<div class="container">
<div class="row justify-content-center">
<div class="col-lg-5">
<div class="main_title">
<h2 class="mb-3">Subjects</h2>
<p>
Replenish man have thing gathering lights yielding shall you
</p>
</div>
</div>
</div>
<div class="row">

<div class="col-lg-12">
<div class="owl-carousel active_course">
<div class="single_course">
<div class="course_head">
<img class="img-fluid" src="img/courses/xc1.jpg.pagespeed.ic.Ab0Q9xXaxS.jpg" alt="" />
</div>
<div class="course_content">
<span class="price">$25</span>
<span class="tag mb-4 d-inline-block">subject</span>
<h4 class="mb-3">
<a href="cn-details.jsp">Computer Network</a>
</h4>
<p>
One make creepeth man bearing their one firmament won't fowl
meat over sea
</p>
<div class="course_meta d-flex justify-content-lg-between align-items-lg-center flex-lg-row flex-column mt-4">
<div class="authr_meta">
<img src="img/courses/xauthor1.png.pagespeed.ic.1cBIlCzYUO.png" alt="" />
<span class="d-inline-block ml-2">Cameron</span>
</div>
<div class="mt-lg-0 mt-3">
<span class="meta_info mr-4">
<a href="#"> <i class="ti-user mr-2"></i>25 </a>
</span>
<span class="meta_info"><a href="#"> <i class="ti-heart mr-2"></i>35 </a></span>
</div>
</div>
</div>
</div>
<div class="single_course">
<div class="course_head">
<img class="img-fluid" src="img/courses/xc2.jpg.pagespeed.ic.c7HNP12k4u.jpg" alt="" />
</div>
<div class="course_content">
<span class="price">$25</span>
<span class="tag mb-4 d-inline-block">subject</span>
<h4 class="mb-3">
<a href="ada-details.jsp">Analysis and Design of Algorithm</a>
</h4>
<p>
One make creepeth man bearing their one firmament
</p>
<div class="course_meta d-flex justify-content-lg-between align-items-lg-center flex-lg-row flex-column mt-4">
<div class="authr_meta">
<img src="img/courses/xauthor2.png.pagespeed.ic.YO9u15_PmW.png" alt="" />
<span class="d-inline-block ml-2">Cameron</span>
</div>
<div class="mt-lg-0 mt-3">
<span class="meta_info mr-4">
<a href="#"> <i class="ti-user mr-2"></i>25 </a>
</span>
<span class="meta_info"><a href="#"> <i class="ti-heart mr-2"></i>35 </a></span>
</div>
</div>
</div>
</div>
<div class="single_course">
<div class="course_head">
<img class="img-fluid" src="img/courses/xc3.jpg.pagespeed.ic.8RzYZu_6Zi.jpg" alt="" />
</div>
<div class="course_content">
<span class="price">$25</span>
<span class="tag mb-4 d-inline-block">subject</span>
<h4 class="mb-3">
<a href="se-details.jsp">Software Engineering</a>
</h4>
<p>
One make creepeth man bearing their one firmament won't fowl
meat over sea
</p>
<div class="course_meta d-flex justify-content-lg-between align-items-lg-center flex-lg-row flex-column mt-4">
<div class="authr_meta">
<img src="img/courses/xauthor3.png.pagespeed.ic.cjcBMijpme.png" alt="" />
<span class="d-inline-block ml-2">Cameron</span>
</div>
<div class="mt-lg-0 mt-3">
<span class="meta_info mr-4">
<a href="#"> <i class="ti-user mr-2"></i>25 </a>
</span>
<span class="meta_info"><a href="#"> <i class="ti-heart mr-2"></i>35 </a></span>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
 -->

	<!-- <div class="section_gap registration_area">
<div class="container">
<div class="row align-items-center">
<div class="col-lg-7">
<div class="row clock_sec clockdiv" id="clockdiv">
<div class="col-lg-12">
<h1 class="mb-3">Register Now</h1>
<p>
There is a moment in the life of any aspiring astronomer that
it is time to buy that first telescope. It’s exciting to think
about setting up your own viewing station.
</p>
</div>
<div class="col clockinner1 clockinner">
<h1 class="days">150</h1>
<span class="smalltext">Days</span>
</div>
<div class="col clockinner clockinner1">
<h1 class="hours">23</h1>
<span class="smalltext">Hours</span>
</div>
<div class="col clockinner clockinner1">
<h1 class="minutes">47</h1>
<span class="smalltext">Mins</span>
</div>
<div class="col clockinner clockinner1">
<h1 class="seconds">59</h1>
<span class="smalltext">Secs</span>
</div>
</div>
</div>
<div class="col-lg-4 offset-lg-1">
<div class="register_form">
<h3>Courses for Free</h3>
<p>It is high time for learning</p>
<form class="form_area" id="myForm" action="https://preview.colorlib.com/theme/edustage/mail.jsp" method="post">
<div class="row">
<div class="col-lg-12 form_group">
<input name="name" placeholder="Your Name" required type="text" />
<input name="name" placeholder="Your Phone Number" required type="tel" />
<input name="email" placeholder="Your Email Address" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" required type="email" />
</div>
<div class="col-lg-12 text-center">
<button class="primary-btn">Submit</button>
</div>
</div>
</form>
</div>
</div>
</div>
</div>
</div> -->

	<br>
	<br>
	<br>
	<br>
	<br>
	<section class="feature_area ">
		<div class="container">
			<div class="row justify-content-center">
				<div>
					<div class="" style="padding-bottom: 10px;">
						<h2 class="mb-3">Student Attendance</h2>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div>
					<div class="" style="padding-bottom: 30px;">
						<a class="btn btn-success" href="instructor-attendance.jsp">Back</a>
						<a id="downloadexcel" class="btn btn-primary" href="">Export Data to Excel</a>
					</div>
				</div>
			</div>
			<table id="attendance-table" class="table table-bordered text-center">
				<thead class="text-uppercase" style="font-size: 15px;">
					<tr>
						<th>Date</th>
						<th>Time</th>
						<th>First name</th>
						<th>Last name</th>
						<th>Enrollment No</th>
						<th>College</th>
						<th>Subject</th>
						<th>Branch</th>
						<th>Year</th>
						<th>Present</th>
						<th>Absent</th>
					</tr>
				</thead>
				<%
				for (AttendanceData a : list) {
				%>
				<tbody style="font-size: 18px;">
					<tr>
						<td><%=a.getDate()%></td>
						<td><%=a.getTime()%></td>
						<td><%=a.getFname()%></td>
						<td><%=a.getLname()%></td>
						<td><%=a.getErno()%></td>
						<td><%=a.getCollege().toUpperCase()%></td>
						<td><%=a.getSubject()%></td>
						<td><%=a.getBranch().toUpperCase()%></td>
						<td><%=a.getYear()%></td>
						<td style="color: green;"><%=a.getPresent().toUpperCase()%></td>
						<td style="color: red;"><%=a.getAbsent().toUpperCase()%></td>
					</tr>
				</tbody>
				<%
				}
				%>
			</table>
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
						<form target="_blank"
							action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
							class="form-inline">
							<input class="form-control" name="EMAIL"
								placeholder="Your Email Address" onfocus="this.placeholder = ''"
								onblur="this.placeholder = 'Your Email Address'" required
								type="email" />
							<button class="click-btn btn btn-default">
								<span>subscribe</span>
							</button>
							<div style="position: absolute; left: -5000px;">
								<input name="b_36c4fd991d266f23781ded980_aefe40901a"
									tabindex="-1" value="" type="text" />
							</div>
							<div class="info"></div>
						</form>
					</div>
				</div>
			</div>
			<div class="row footer-bottom d-flex justify-content-between">
				<p class="col-lg-8 col-sm-12 footer-text m-0 text-white">

					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | This template is made with <i
						class="ti-heart" aria-hidden="true"></i> by <a
						href="https://colorlib.com/" target="_blank">Colorlib</a>

				</p>
				<div class="col-lg-4 col-sm-12 footer-social">
					<a href="#"><i class="ti-facebook"></i></a> <a href="#"><i
						class="ti-twitter"></i></a> <a href="#"><i class="ti-dribbble"></i></a>
					<a href="#"><i class="ti-linkedin"></i></a>
				</div>
			</div>
		</div>
	</footer>


	<script type="text/javascript">
		document.getElementById('downloadexcel').addEventListener('click',function(){
			var table2excel = new Table2Excel();
			table2excel.export(document.querySelectorAll("#attendance-table"));
		})
	</script>
	
	<script src="js/jquery-3.2.1.min.js"></script>
	<script
		src="js%2c_popper.js%2bjs%2c_bootstrap.min.js%2bvendors%2c_nice-select%2c_js%2c_jquery.nice-select.min.js.pagespeed.jc.bpB8ipHmhM.js"></script>
	<script>
		eval(mod_pagespeed_Mfm6u8Plws);
	</script>
	<script>
		eval(mod_pagespeed_ZwL22onz9D);
	</script>
	<script>
		eval(mod_pagespeed_9N3wpQb3XU);
	</script>
	<script
		src="vendors%2c_owl-carousel%2c_owl.carousel.min.js%2bjs%2c_owl-carousel-thumb.min.js%2bjs%2c_jquery.ajaxchimp.min.js%2bjs%2c_mail-script.js.pagespeed.jc.1ly_4XtkaH.js"></script>
	<script>
		eval(mod_pagespeed_bwTxFhPZwg);
	</script>
	<script>
		eval(mod_pagespeed_hk82EG4XqQ);
	</script>
	<script>
		eval(mod_pagespeed_NYRRdzXfxA);
	</script>
	<script>
		eval(mod_pagespeed_MoVb2HcGde);
	</script>

	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="js/gmaps.min.js"></script>
	<script src="js/theme.js"></script>

	<script async
		src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-23581568-13');
	</script>
	<script defer
		src="../../../static.cloudflareinsights.com/beacon.min.js"
		data-cf-beacon='{"rayId":"6ab88397f0f96e9e","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2021.10.0","si":100}'></script>
	<script defer
		src="../../../static.cloudflareinsights.com/beacon.min.js"
		data-cf-beacon='{"rayId":"6ab88397efba6e9e","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2021.10.0","si":100}'></script>
</body>

<!-- Mirrored from preview.colorlib.com/theme/edustage/courses.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 29 Oct 2021 22:34:37 GMT -->
</html>
