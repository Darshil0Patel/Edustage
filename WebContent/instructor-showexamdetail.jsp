<%@page import="com.bean.ExamDetails"%>
<%@page import="com.bean.InstructorData"%>
<%@page import="com.bean.Exam"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.ExamDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="icon" href="img/xfavicon.png.pagespeed.ic.d0CkosaLMT.png"
	type="image/png" />

<link rel="stylesheet"
	href="A.css%2c%2c_bootstrap.css%2bcss%2c%2c_flaticon.css%2bcss%2c%2c_themify-icons.css%2bvendors%2c%2c_owl-carousel%2c%2c_owl.carousel.min.css%2bvendors%2c%2c_nice-select%2c%2c_css%2c%2c_nice-select.css%2cMcc.B-c6Uo_zoN.css" />

<link rel="stylesheet"
	href="css/A.style.css.pagespeed.cf.rTJrCT-IG0.css" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Show Details</title>
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
	List<ExamDetails> list = ExamDao.getExamDetails(ind);
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
							<li class="nav-item"><a class="nav-link"
								href="instructor-attendance.jsp">Attendance</a></li>
							<li class="nav-item active"><a class="nav-link"
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

	<br>
	<br>
	<br>
	<br>
	<br>

	<section class="feature_area ">
		<div class="container">

			<div class=""
				style="padding: 25px; width: 100%; font-size: 25px; font-weight: 500; background-color: #f8f9fa; padding-bottom: 0px;">
				<div>

					<div class="main_title">
						<h3 style="text-align: center; color: red;">Exam Schedule</h3>
						<div
							style="padding-bottom: 45px; padding-top: 15px; letter-spacing: 2px;">
							<table class="table table-bordered text-center">
								<thead class="text-uppercase" style="font-size: 15px;">
									<tr>
										<th>Exam Date-Time</th>
										<th>Exam Type</th>
										<th>Subject</th>
										<th>Duration</th>
										<th>Maximum Marks</th>
										<th>Action</th>
										<th>Edit</th>
										<th>Delete</th>
									</tr>
								</thead>
								
								<%
								for (ExamDetails e : list) {
								%>
								<form action="ExamController" method="post">
								<tbody style="font-size: 18px;">
									<tr>
										<td><%=e.getDate()%></td>
										<td><%=e.getExamtype().substring(0, 1).toUpperCase() + e.getExamtype().substring(1).toLowerCase()%></td>
										<td><%=e.getSubject()%></td>
										<td><%=e.getDuration() + " hrs"%></td>
										<td><%=e.getMaxmarks() + " Marks"%></td>
										<input type="hidden" name="id" value=<%=e.getId() %>>
										<input type="hidden" name="subject" value=<%=e.getSubject() %>>
										<input type="hidden" name="college" value=<%=e.getCollege() %>>
										<input type="hidden" name="year" value=<%=e.getYear() %>>
										<input type="hidden" name="date" value=<%=e.getDate() %>>
										<input type="hidden" name="duration" value=<%=e.getDuration() %>>
										<input type="hidden" name="maxmarks" value=<%=e.getMaxmarks() %>>
										<input type="hidden" name="examtype" value=<%=e.getExamtype() %>>
										<input type="hidden" name="enable" value=<%=e.getEnable() %>>
										<td>
											<%
											if (e.getEnable().equalsIgnoreCase("no")) {
											%>
											<button type="submit" name="action" value="enable"
												class="btn btn-success">Enable</button> <%
 } else {
 %>
											<button type="submit" name="action" value="disable"
												class="btn btn-danger">Disable</button> <%
 }
 %>
										</td>
										<td>
											<a href="instructor-updateexamdetails.jsp?id=<%=e.getId() %>" class="btn btn-primary" style="letter-spacing: 0px;">
												Edit
											</a>
										</td>
										<td>
											<button type="submit" name="action" value="deleteexamdetail"
												class="btn btn-danger">Delete</button>
										</td>
									</tr>
								</tbody>
								</form>
								<%
								}
								%>
								
							</table>
						</div>
					</div>

				</div>
			</div>
			<div class="form-group" style="text-align: center; padding: 0px;">
					<a class="btn btn-outline-success" style="text-decoration: none;"
						href="instructor-addexam.jsp"> Back </a>
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


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>