<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<jsp lang="en">

<head>
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
<title>Payment</title>

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


<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/jsp5shiv/3.7.2/jsp5shiv.min.js"></script>
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

		<!-- ========================  Checkout ======================== -->

		<section class="checkout"> <!-- === header === --> <header>
		<div class="container">
			<h2 class="title">Delivery checkout</h2>
			<div class="text">
				<p>Confirm your order details</p>
			</div>
		</div>
		</header> <!-- === step wrapper === -->

		<div class="step-wrapper"></div>

		<!-- === left content === -->

		<div class="container">

			<!-- ========================  Payment ======================== -->

			<div class="cart-wrapper">

				<div class="note-block">

					<div class="row">
						<div class="col-md-12">
							<div class="white-block">

								<div class="h4">Choose payment</div>

								<hr />

								<span class="checkbox"> <input type="radio"
									id="paymentID1" name="paymentOption" checked="checked">
									<label for="paymentID1"> <strong>Pay via
											credit cart</strong> <br /> <small>(MasterCard, Maestro,
											Visa, Visa Electron, JCB and American Express)</small>
								</label>
								</span>



								<hr />

								<p>
									Please allow three working days for the payment confirmation to
									reflect in your <a href="#">online account</a>. Once your
									payment is confirmed, we will generate your e-invoice, which
									you can view/print from your account or email.
								</p>
							</div>
						</div>
						<!-- === left content === -->
						<form action="accountAddSave.do" target="_blank">
							<div class="col-md-12">



								<div class="h4">Shipping info</div>

								<hr />

								<div class="row">

									<div class="col-md-6">
										<div class="form-group">
											<strong>Name</strong> <br /> <input name="addName"
												value="${add.addName }">
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group">
											<strong>Email</strong><br /> <input name="addEmail"
												value="${add.addEmail }">
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group">
											<strong>Phone</strong><br /> <input name="addPhone"
												value="${add.addPhone }">
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group">
											<strong>Zip</strong><br /> <input name="addZip"
												value="${add.addZip }">
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group">
											<strong>City</strong><br /> <input name="addCity"
												value="${add.addCity }">
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group">
											<strong>Address</strong><br /> <input name="addAddr"
												value="${add.addAddr }">
										</div>
									</div>
									<input name="addUserId" value="${loginByr.userId }"
										readonly="readonly" type="hidden">



								</div>


							</div>
					</div>
					<!--/col-md-6-->

				</div>

				<br>
				<h3 style="display: block;text-align:right;">Final price : $
					${add.addAmount }</h3>
				<br>
				<div class="clearfix">
					<div class="row">
						<div class="col-6">
							<a href="#" class="btn btn-clean-dark"><span
								class="icon icon-chevron-left"></span> Shop more</a>
						</div>
						<div class="col-6 text-right">
							<a class="btn btn-clean-dark"><span class="icon icon-cart"></span>
								<input style="background-color:transparent;border:0;"
								class="btn btn-clean-dark" type="submit" value="Go to checkout"></a>
						</div>
					</div>
				</div>

				</form>
				
				<!-- === right content === -->


			</div>
		</div>
	</div>


	<hr />

	<!-- ========================  Cart wrapper ======================== -->



	<!-- ========================  Cart navigation ======================== -->



	<!--/container-->

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