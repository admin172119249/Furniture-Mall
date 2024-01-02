<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'changeproduct.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="icon" href="favicon.ico">

<!--Title-->
<title>Product overview</title>

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


		<!-- ======================== Products ======================== -->

		<section class="product pt-0"> <header>
		<div class="container">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="#">Home</a></li>
				<li class="breadcrumb-item"><a href="#">Library</a></li>
				<li class="breadcrumb-item active" aria-current="page">Data</li>
			</ol>
			<a class="title h5">Change a product</a>

		</div>
		</header>

		<div class="main">
			<div class="container">
				<div class="row product-flex">

					<div class="col-lg-4 product-flex-info">
						<div class="clearfix">
							<form action="<%=path%>/goodsChange.do">
								<div class="name">
									<span><strong>Product Name</strong></span> <span class="h3">
										<input name="shopName" value="${shop.shopName }">
									</span>
								</div>
								<div class="clearfix">

									<!--price wrapper-->

									<div class="price">
										<span><strong>Price</strong></span> <span class="h3"> <input
											name="shopPrice" value="${shop.shopPrice }"></span>
									</div>

									<hr />

									<!--info-box-->

									<div class="info-box">
										<span><strong>Maifacturer</strong></span> <span>Brand
											name</span>
									</div>

									<!--info-box-->

									<div class="info-box">
										<span><strong>Materials</strong></span> <span>Wood,
											Leather, Acrylic</span>
									</div>

									<hr />


									<!--info-box-->

									<div class="info-box">
										<span><strong>Available Colors</strong></span>
										<div class="product-colors clearfix">
											<span class="color-btn color-btn-red"></span> <span
												class="color-btn color-btn-blue checked"></span> <span
												class="color-btn color-btn-green"></span> <span
												class="color-btn color-btn-gray"></span> <span
												class="color-btn color-btn-biege"></span>
										</div>
									</div>

									<hr />

									<!--info-box-->

									<div class="info-box">
										<span><strong>Choose size</strong></span>
										<div class="product-colors clearfix">
											<span class="color-btn color-btn-biege"> <span
												class="product-size" data-text="">S</span>
											</span> <span class="color-btn color-btn-biege checked">M</span> <span
												class="color-btn color-btn-biege">XL</span> <span
												class="color-btn color-btn-biege">XXL</span>
										</div>
									</div>

									<hr />







									<div class="info-box">
										<input name="shopPic"
											value="../dfj-20210608-2/assets/images/${filename}"
											readonly="readonly" type="hidden">
											<input name="shopId"
											value="${shop.shopId }"
											readonly="readonly" type="hidden">
											<span class="col-6">
											
											<input type="submit" class="btn btn-danger"
											value="Change">
										</span>


									</div>
							</form>

							<hr />

							<form enctype="multipart/form-data" method="post"
								action="upload1.do?shopId=${shop.shopId }&pageNow=${sc.pageNow}">

								图片:&nbsp;&nbsp;<input type="file" name="photo"><br>
								<input type="submit" value="上传">
							</form>
							<hr />



							<div class="info-box">
								<span> <small>*** We progress your order for
										shipping as soon as possible. Please note that after your
										order has been received, we can not change the delivery
										address. Control your address details in any case before
										placing your order!</small>
								</span>
							</div>

							<hr />

							<div class="info-box info-box-addto added">
								<span> <i class="add"><i class="fa fa-heart-o"></i>
										Add to favorites</i> <i class="added"><i class="fa fa-heart"></i>
										Remove from favorites</i>
								</span>
							</div>

							<div class="info-box info-box-addto">
								<span> <i class="add"><i class="fa fa-eye-slash"></i>
										Add to Watch list</i> <i class="added"><i class="fa fa-eye"></i>
										Remove from Watch list</i>
								</span>
							</div>

							<div class="info-box info-box-addto">
								<span> <i class="add"><i class="fa fa-star-o"></i>
										Add to Collection</i> <i class="added"><i class="fa fa-star"></i>
										Remove from Collection</i>
								</span>
							</div>

						</div>
						<!--/clearfix-->
					</div>
					<!--/product-info-wrapper-->
				</div>
				<!--/col-lg-4-->
				<!--product item gallery-->

				<div class="col-lg-8 product-flex-gallery">

					<!--product gallery-->

					<div
						class="owl-product-gallery owl-carousel owl-theme open-popup-gallery">
						<img src="${shop.shopPic }">
					</div>
				</div>

			</div>
		</div>
	</div>

	</section>


	</div>

	<div class="inc:_footer.html"></div>

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
