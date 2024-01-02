<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">

<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Mobile Web-app fullscreen -->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="mobile-web-app-capable" content="yes">

<!-- Meta tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="favicon.ico">

<!--Title-->
<title>Login & register</title>

<!--CSS bundle -->
<link rel="stylesheet" media="all" href="css/bootstrap.css" />
<link rel="stylesheet" media="all" href="css/animate.css" />
<link rel="stylesheet" media="all" href="css/font-awesome.css" />
<link rel="stylesheet" media="all" href="css/ion-range-slider.css" />
<link rel="stylesheet" media="all" href="css/linear-icons.css" />
<link rel="stylesheet" media="all" href="css/magnific-popup.css" />
<link rel="stylesheet" media="all" href="css/owl.carousel.css" />
<link rel="stylesheet" media="all" href="css/theme.css" />

<!--Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&amp;subset=latin-ext"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Rajdhani:400,600,700&amp;subset=latin-ext"
	rel="stylesheet">
<script type="text/javascript" src="YZMImg.js"></script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div class="page-loader">
		<div class="spinner-border" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>

	<div class="wrapper">

		<div class="inc:_header.jsp"></div>

		<!-- ========================  Login & register ======================== -->

		<section class="login">

			<!--Header-->

			<header class="d-none">
				<div class="container">
					<h2 class="title">Login & registration</h2>
					<div class="text">
						<p>Suspendisse scelerisque odio eu felis eleifend, vitae
							gravida magna iaculis. Vestibulum volutpat, purus in consectetur
							porta, velit felis suscipit metus, et pharetra enim augue
							suscipit est. Aenean non ante tortor. Nam egestas tincidunt
							turpis, quis accumsan est vestibulum non</p>
						<hr />
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item"><a href="#">Library</a></li>
							<li class="breadcrumb-item active" aria-current="page">Data</li>
						</ol>
					</div>
				</div>
			</header>

			<!--Content-->

			<div class="container">

				<div class="row">

					<!-- === left content === -->

					<div class="col-md-6 offset-md-3">

						<div class="login-wrapper">

							<!--signin-->

							<div class="login-block login-block-signin">

								<div class="h4">
									Sign in <a href="javascript:void(0);"
										class="btn btn-main btn-sm btn-register pull-right">Create
										an account</a>
								</div>

								<hr />

								<div class="row">
									<form action="<%=path%>/buyerLogin1.do" method="post">
										<div class="col-12">
											<div class="form-group">
												<input name="account" type="text" value="" class="form-control"
													placeholder="User ID">
											</div>
										</div>

										<div class="col-12">
											<div class="form-group">
												<input name="password" type="password" value="" class="form-control"
													placeholder="Password">
											</div>
										</div>
										<div class="col-12">
											<div class="form-group">
												<input name="yzm" type="text" value="" class="form-control" placeholder="Please enter the verification code">
											</div>
												<img class="left-side" src="<%=path%>/yzmImg.do" onclick="getYZMImg()" id="yzmimg">
												<input class="btn btn-main btn-sm btn-register pull-right" type=button onclick="location.reload()" value="看不清换一张？">
												
										</div>
										<div class="col-12">
											<hr />
											<input  class="btn btn-primary"  type="submit" value="Sign in">
										</div>
									</form>

										<div class="col-12">
											<span class="checkbox"> <input type="checkbox"
												id="checkBoxId3"> <label for="checkBoxId3">Remember
													me &nbsp;<a href="<%=path%>/forgetpassword.jsp">Forgot password?</a>
											</label>
											</span>
										</div>

										
								</div>
							</div>
							<!--/signin-->
							<!--signup-->



							<div class="login-block login-block-signup">

								<div class="h4">
									Register now <a href="javascript:void(0);"
										class="btn btn-main btn-sm btn-login pull-right">Already
										member?</a>
								</div>

								<hr />
								<form action="<%=path%>/buyerRegSave.do">
								<div class="row">
									
									<div class="col-md-12">
										<div class="form-group">
											<input name="account" type="account" value="" class="form-control"
												placeholder="Account: *">
										</div>
									</div>



									<div class="col-md-12">

										<div class="form-group">
											<input name="userName" type="name" value="" class="form-control"
												placeholder="Name:">
										</div>
									</div>

									<div class="col-md-12">
										<div class="form-group">
											<input name="password" type="password" value="" class="form-control"
												placeholder="Password: *">
										</div>
									</div>

									<div class="col-md-12">
										<div class="form-group">
											<input type="password" value="" class="form-control"
												placeholder="Re-Password: *">
										</div>
									</div>

									<div class="col-md-12">
										<div class="form-group">
											<input name="usertel" type="tel" value="" class="form-control"
												placeholder="Telephone: *">
										</div>
									</div>

									<div class="col-md-12">
										<div class="form-group">
											<input name="useremail" type="email" value="" class="form-control"
												placeholder="Email: *">
										</div>
									</div>
									
									<div class="col-md-12">
										<div class="form-group">
											<input name="useradd" type="add" value="" class="form-control"
												placeholder="Address *">
										</div>
									</div>

									<div class="col-md-12">
										<hr />
										<span class="checkbox"> <input type="checkbox"
											id="checkBoxId1"> <label for="checkBoxId1">I
												have read and accepted the <a href="#">terms</a>, as well as
												read and understood our terms of <a href="#">business
													contidions</a>
										</label>
										</span> <span class="checkbox"> <input type="checkbox"
											id="checkBoxId2"> <label for="checkBoxId2">Subscribe
												to exciting newsletters and great tips</label>
										</span>
										<hr />
									</div>

									<div class="col-md-12">
										<input type="submit" class="btn btn-outline-dark" value="Create account">
									</div>

								</div>
								</form>
							</div>
							<!--/signup-->
						</div>
						<!--/login-wrapper-->

					</div>
					<!--/col-md-6-->

				</div>

			</div>
		</section>

		<div class="inc:_footer.jsp"></div>

	</div>
	<!--/wrapper-->
	<!--Scripts -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/include.js"></script>
	<script src="js/ion.rangeSlider.js"></script>
	<script src="js/magnific-popup.js"></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/tilt.jquery.js"></script>
	<script src="js/jquery.easypiechart.js"></script>
	<script src="js/bigtext.js"></script>
	<script src="js/main.js"></script>
</body>

</html>