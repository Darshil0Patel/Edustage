<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%@page import="com.dao.AdminDao"%>
<%@page import="com.bean.StudentData"%>
<%@page import="java.util.List"%>
<%@page import="com.bean.AdminData"%>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, AdminWrap lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, AdminWrap lite design, AdminWrap lite dashboard bootstrap 5 dashboard template">
<meta name="description"
	content="AdminWrap Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
<meta name="robots" content="noindex,nofollow">
<title>AdminWrap Lite Template by WrapPixel</title>
<link rel="canonical"
	href="https://www.wrappixel.com/templates/adminwrap-lite/" />
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="admin/assets/images/favicon.png">
<!-- Bootstrap Core CSS -->
<link href="admin/assets/node_modules/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="admin/css/style.css" rel="stylesheet">
<!-- You can change the theme colors from here -->
<link href="admin/css/colors/default.css" id="theme" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header card-no-border fix-sidebar">
	<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	%>

	<%
	List<StudentData> list = AdminDao.GetStudents();
	AdminData a3 = null;
	session.getAttribute("ad");
	if (session != null) {
		if (session.getAttribute("ad") != null) {
			a3 = (AdminData) session.getAttribute("ad");
		} else {
			response.sendRedirect("admin-login.jsp");
		}
	} else {
		response.sendRedirect("admin-login.jsp");
	}
	%>

	<!-- ============================================================== -->
	<!-- Preloader - style you can find in spinners.css -->
	<!-- ============================================================== -->
	<div class="preloader">
		<div class="loader">
			<div class="loader__figure"></div>
			<p class="loader__label">Admin Wrap</p>
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- Main wrapper - style you can find in pages.scss -->
	<!-- ============================================================== -->
	<div id="main-wrapper">
		<!-- ============================================================== -->
		<!-- Topbar header - style you can find in pages.scss -->
		<!-- ============================================================== -->
		<header class="topbar">
			<nav class="navbar top-navbar navbar-expand-md navbar-light">
				<!-- ============================================================== -->
				<!-- Logo -->
				<!-- ============================================================== -->
				<div class="navbar-header">
					<a class="navbar-brand" href="admin-index1.jsp"> <!-- Logo icon -->
						<b> <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
							<!-- Dark Logo icon --> <img
							src="admin/assets/images/logo-icon.png" alt="homepage"
							class="dark-logo" /> <!-- Light Logo icon --> <img
							src="admin/assets/images/logo-light-icon.png" alt="homepage"
							class="light-logo" />
					</b> <!--End Logo icon --> <!-- Logo text --> <span> <!-- dark Logo text -->
							<img src="admin/assets/images/logo-text.png" alt="homepage"
							class="dark-logo" /> <!-- Light Logo text --> <img
							src="admin/assets/images/logo-light-text.png" class="light-logo"
							alt="homepage" /></span>
					</a>
				</div>
				<!-- ============================================================== -->
				<!-- End Logo -->
				<!-- ============================================================== -->
				<div class="navbar-collapse">
					<!-- ============================================================== -->
					<!-- toggle and nav items -->
					<!-- ============================================================== -->
					<ul class="navbar-nav me-auto">
						<li class="nav-item"><a
							class="nav-link nav-toggler hidden-md-up waves-effect waves-dark"
							href="javascript:void(0)"><i class="fa fa-bars"></i></a></li>
						<!-- ============================================================== -->
						<!-- Search -->
						<!-- ============================================================== -->
						<li class="nav-item hidden-xs-down search-box"><a
							class="nav-link hidden-sm-down waves-effect waves-dark"
							href="javascript:void(0)"><i class="fa fa-search"></i></a>
							<form class="app-search">
								<input type="text" class="form-control"
									placeholder="Search & enter"> <a class="srh-btn"><i
									class="fa fa-times"></i></a>
							</form></li>
					</ul>
					<!-- ============================================================== -->
					<!-- User profile and search -->
					<!-- ============================================================== -->
					<ul class="navbar-nav my-lg-0">
						<!-- ============================================================== -->
						<!-- Profile -->
						<!-- ============================================================== -->
						<li class="nav-item dropdown u-pro"><a
							class="nav-link dropdown-toggle waves-effect waves-dark profile-pic"
							href="" data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"><img
								src="admin/assets/images/users/1.jpg" alt="user" class="" /> <span
								class="hidden-md-down"><%=a3.getName().toUpperCase()%>
									&nbsp;</span> </a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown"></ul>
						</li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- ============================================================== -->
		<!-- End Topbar header -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<aside class="left-sidebar">
			<!-- Sidebar scroll-->
			<div class="scroll-sidebar">
				<!-- Sidebar navigation-->
				<nav class="sidebar-nav">
					<ul id="sidebarnav">
                        <li> <a class="waves-effect waves-dark" href="admin-index1.jsp" aria-expanded="false"><i
                                    class="fa fa-tachometer"></i><span class="hide-menu">Dashboard</span></a>
                        </li>
                        <li> <a class="waves-effect waves-dark" href="admin-StudentData.jsp" aria-expanded="false"><i
                                    class="fa fa-table"></i><span class="hide-menu">Student Data</span></a>
                        </li>
                        <li> <a class="waves-effect waves-dark" href="admin-InstructorData.jsp" aria-expanded="false"><i
                                    class="fa fa-table"></i><span class="hide-menu">Instructor Data</span></a>
                        </li>
                        <li> <a class="waves-effect waves-dark" href="admin-StudentRegister.jsp" aria-expanded="false"><i
                                    class="fa fa-user-circle-o"></i><span class="hide-menu">Student Register</span></a>
                        </li>
                        <li> <a class="waves-effect waves-dark" href="admin-InstructorRegister.jsp" aria-expanded="false"><i
                                    class="fa fa-user-circle-o"></i><span class="hide-menu">Instructor Register</span></a>
                        </li>
                    </ul>
					<div class="text-center mt-4">
						<a href="AdminController?action=logout"
							class="btn waves-effect waves-light btn-info hidden-md-down text-white">
							Logout</a>
					</div>
				</nav>
				<!-- End Sidebar navigation -->
			</div>
			<!-- End Sidebar scroll-->
		</aside>
		<!-- ============================================================== -->
		<!-- End Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Page wrapper  -->
		<!-- ============================================================== -->
		<div class="page-wrapper">
			<!-- ============================================================== -->
			<!-- Container fluid  -->
			<!-- ============================================================== -->
			<div class="container-fluid">
				<!-- ============================================================== -->
				<!-- Bread crumb and right sidebar toggle -->
				<!-- ============================================================== -->
				<div class="row page-titles">
					<div class="col-md-5 align-self-center">
						<h3 class="text-themecolor">Student Data</h3>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
							<li class="breadcrumb-item active">Student Data</li>
						</ol>
					</div>
					<div class="col-md-7 align-self-center">
						<a href="https://www.wrappixel.com/templates/adminwrap/"
							class="btn waves-effect waves-light btn btn-info pull-right hidden-sm-down text-white">
							Upgrade to Pro</a>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- End Bread crumb and right sidebar toggle -->
				<!-- ============================================================== -->
				<!-- ============================================================== -->
				<!-- Start Page Content -->
				<!-- ============================================================== -->
				<div class="row">
					<!-- column -->
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">Student Data</h4>
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>ID</th>
												<th>First Name</th>
												<th>Last Name</th>
												<th>Er No</th>
												<th>Email</th>
												<th>Contact</th>
												<th>College</th>
												<th>Year</th>
												<th>Branch</th>
												<th>Password</th>
												<th>Update</th>
												<th>Delete</th>
											</tr>
										</thead>
										<%
										for (StudentData s : list) {
										%>
										<tbody>
											<%-- <tr>
												<td>${item.id }</td>
											</tr> --%>
											<tr>

												<td><%=s.getId()%></td>
												<td><%=s.getFname()%></td>
												<td><%=s.getLname()%></td>
												<td><%=s.getErno()%></td>
												<td><%=s.getEmail()%></td>
												<td><%=s.getContact()%></td>
												<td><%=s.getCollege()%></td>
												<td><%=s.getYear()%></td>
												<td><%=s.getBranch()%></td>
												<td><%=s.getPassword()%></td>
												<form action="AdminController" method="post">
													<input type="hidden" name="id" value=<%=s.getId()%>>
													<input type="hidden" name="fname" value=<%=s.getFname()%>>
													<input type="hidden" name="lname" value=<%=s.getLname()%>>
													<input type="hidden" name="erno" value=<%=s.getErno()%>>
													<input type="hidden" name="email" value=<%=s.getEmail()%>>
													<input type="hidden" name="contact"
														value=<%=s.getContact()%>> <input type="hidden"
														name="college" value=<%=s.getCollege()%>> <input
														type="hidden" name="year" value=<%=s.getYear()%>>
													<input type="hidden" name="branch" value=<%=s.getBranch()%>>
													<input type="hidden" name="password"
														value=<%=s.getPassword()%>>
													<td><a
														href="admin-StudentUpdate.jsp?id=<%=s.getId()%>"
														class="btn btn-success btn-sm"> Update </a> <!-- <button name="action" value="updatestudent"
															class="btn btn-success btn-sm">Update</button> --></td>
													<td>
														<button name="action" value="deletestudent"
															class="btn btn-danger btn-sm">Delete</button>
													</td>
												</form>
											</tr>

										</tbody>
										<%
										}
										%>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- End PAge Content -->
				<!-- ============================================================== -->
			</div>
			<!-- ============================================================== -->
			<!-- End Container fluid  -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- footer -->
			<!-- ============================================================== -->
			<footer class="footer">
				� 2021 Adminwrap by <a href="https://www.wrappixel.com/">wrappixel.com</a>
			</footer>
			<!-- ============================================================== -->
			<!-- End footer -->
			<!-- ============================================================== -->
		</div>
		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- End Wrapper -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- All Jquery -->
	<!-- ============================================================== -->
	<script src="admin/assets/node_modules/jquery/jquery.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script
		src="admin/assets/node_modules/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script src="admin/js/perfect-scrollbar.jquery.min.js"></script>
	<!--Wave Effects -->
	<script src="admin/js/waves.js"></script>
	<!--Menu sidebar -->
	<script src="admin/js/sidebarmenu.js"></script>
	<!--Custom JavaScript -->
	<script src="admin/js/custom.min.js"></script>
	<!-- jQuery peity -->
	<script src="admin/assets/node_modules/peity/jquery.peity.min.js"></script>
	<script src="admin/assets/node_modules/peity/jquery.peity.init.js"></script>
</body>

</html>