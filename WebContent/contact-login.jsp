<%@page import="com.bean.StudentData"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from preview.colorlib.com/theme/edustage/contact.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 29 Oct 2021 22:35:06 GMT -->
<head>

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link rel="icon" href="img/xfavicon.png.pagespeed.ic.d0CkosaLMT.png" type="image/png" />
<title>Contact</title>

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
<li class="nav-item active">
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
<h2>Contact Us</h2>
<div class="page_link">
<a href="index.jsp">Home</a>
<a href="contact.jsp">Contact</a>
</div>
</div>
</div>
</div>
</div>
</div>
</section>
 -->
<br><br><br><br>

	<h1 style="text-align: center; color: #002347;">Contact Us</h1>

<br><br>
<section class="contact_area ">
<div class="container">
<div id="mapBox" class="mapBox" data-lat="40.701083" data-lon="-74.1522848" data-zoom="13" data-info="PO Box CT16122 Collins Street West, Victoria 8007, Australia." data-mlat="40.701083" data-mlon="-74.1522848"></div>
<div class="row">
<div class="col-lg-3">
<div class="contact_info">
<div class="info_item">
<i class="ti-home"></i>
<h6>California, United States</h6>
<p>Santa monica bullevard</p>
</div>
<div class="info_item">
<i class="ti-headphone"></i>
<h6><a href="#">00 (440) 9865 562</a></h6>
<p>Mon to Fri 9am to 6 pm</p>
</div>
<div class="info_item">
<i class="ti-email"></i>
<h6><a href="#"><span class="__cf_email__" data-cfemail="ccbfb9bcbca3beb88cafa3a0a3bea0a5aee2afa3a1">[email&#160;protected]</span></a></h6>
<p>Send us your query anytime!</p>
</div>
</div>
</div>
<div class="col-lg-9">
<form class="row contact_form" action="https://preview.colorlib.com/theme/edustage/contact_process.php" method="post" id="contactForm" novalidate>
<div class="col-md-6">
<div class="form-group">
<input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" required />
</div>
<div class="form-group">
<input type="email" class="form-control" id="email" name="email" placeholder="Enter email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" required />
</div>
<div class="form-group">
<input type="text" class="form-control" id="subject" name="subject" placeholder="Enter Subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" required />
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<textarea class="form-control" name="message" id="message" rows="1" placeholder="Enter Message" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" required></textarea>
</div>
</div>
<div class="col-md-12 text-right">
<button type="submit" value="submit" class="btn primary-btn">
Send Message
</button>
</div>
</form>
</div>
</div>
</div>
</section>
<br><br>

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
<input class="form-control" name="EMAIL" placeholder="Your Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '" required type="email" />
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

Copyright &copy;<script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com/" target="_blank">Colorlib</a>

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


<div id="success" class="modal modal-message fade" role="dialog">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<i class="ti-close"></i>
</button>
<h2>Thank you</h2>
<p>Your message is successfully sent...</p>
</div>
</div>
</div>
</div>

<div id="error" class="modal modal-message fade" role="dialog">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<i class="ti-close"></i>
</button>
<h2>Sorry !</h2>
<p>Something went wrong</p>
</div>
</div>
</div>
</div>



<script src="js/jquery-3.2.1.min.js"></script>
<script src="js%2c_popper.js%2bjs%2c_bootstrap.min.js%2bjs%2c_stellar.js%2bvendors%2c_nice-select%2c_js%2c_jquery.nice-select.min.js.pagespeed.jc.5SNc8vvStm.js"></script><script>eval(mod_pagespeed_Mfm6u8Plws);</script>
<script>eval(mod_pagespeed_ZwL22onz9D);</script>
<script>eval(mod_pagespeed_gvBD8twuPF);</script>
<script>eval(mod_pagespeed_9N3wpQb3XU);</script>
<script src="vendors%2c_owl-carousel%2c_owl.carousel.min.js%2bjs%2c_owl-carousel-thumb.min.js%2bjs%2c_jquery.validate.min.js%2bjs%2c_jquery.ajaxchimp.min.js%2bjs%2c_mail-script.js.pagespeed.jc.85e1FQg5-u.6e.d"></script><script>eval(mod_pagespeed_bwTxFhPZwg);</script>
<script>eval(mod_pagespeed_hk82EG4XqQ);</script>
<script>eval(mod_pagespeed_MMTC1oAWVb);</script>
<script>eval(mod_pagespeed_NYRRdzXfxA);</script>
<script>eval(mod_pagespeed_MoVb2HcGde);</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
<script src="js/gmaps.min.js"></script>
<script src="js/contact.js%2btheme.js.pagespeed.jc.vCk7HrmfY7.js"></script><script>eval(mod_pagespeed_MKlSKO9ddI);</script>
<script>eval(mod_pagespeed_OYs3JCY97K);</script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>
<script defer src="../../../static.cloudflareinsights.com/beacon.min.js" data-cf-beacon='{"rayId":"6ab883a5a443d5fc","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2021.10.0","si":100}'></script>
<script defer src="../../../static.cloudflareinsights.com/beacon.min.js" data-cf-beacon='{"rayId":"6ab883a59df6d5fc","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2021.10.0","si":100}'></script>
</body>

<!-- Mirrored from preview.colorlib.com/theme/edustage/contact.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 29 Oct 2021 22:35:07 GMT -->
</html>
