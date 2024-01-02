<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">

<head>
<script src="js/echarts.min.js"></script>
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
			<a class="title h5">${shop.shopName }</a>

		</div>
		</header>

		<div class="main">
			<div class="container">
				<div class="row product-flex">

					<div class="col-lg-4 product-flex-info">
						<div class="clearfix">

							<div class="clearfix">

								<!--price wrapper-->

								<div class="price">
									<span class="h3"> ${shop.shopPrice } </span>
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
									<span> Quantity </span> <span>
										<form action="cartAddSave.do">
											<input name="cartUserId" value="${loginByr.userId }"
												readonly="readonly" type="hidden"> <input
												name="cartShopId" value="${shop.shopId}" readonly="readonly"
												type="hidden"> <input name="cartPrice"
												value="${shop.shopPrice}" readonly="readonly" type="hidden">
											<input name="cartPic" value="${shop.shopPic}"
												readonly="readonly" type="hidden"> <input
												name="cartName" value="${shop.shopName}" readonly="readonly"
												type="hidden"> <span class="row"> <span
												class="col-6"> <input name="cartNum" type="number"
													value="1" class="form-control">
											</span> <span class="col-6"> <input type="submit"
													class="btn btn-danger" value="Buy now">
											</span> <input type="hidden" name="pageNow">
											</span>


										</form>
									</span>
								</div>

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
							<a href="${shop.shopPic }"><img src="${shop.shopPic }" alt="" /></a>
							<a href="${shop.shopPic }"><img src="${shop.shopPic }" alt="" /></a>
						</div>
					</div>

				</div>
			</div>
		</div>

		</section>

		<!--=========================== Comments & rating ============================-->

		<section class="product-details">

		<div class="container">

			<!--Tab links-->

			<ul class="nav nav-pills nav-pills-flat justify-content-center"
				id="pills-tab" role="tablist">
				<li class="nav-item"><a class="nav-link active"
					id="tab-review-tab" data-toggle="tab" href="#tab-review" role="tab">
						Reviews </a></li>
				<li class="nav-item"><a class="nav-link" id="tab-desc-tab"
					data-toggle="tab" href="#tab-desc" role="tab"> Description </a></li>
				<li class="nav-item"><a class="nav-link" id="tab-info-tab"
					data-toggle="tab" href="#tab-shipping" role="tab"> Shipping </a></li>
			</ul>

			<!--Tab content-->

			<div class="tab-content" id="pills-tabContent">

				<!--Tab description-->

				<div class="tab-pane fade show active" id="tab-review">

					<div class="col-md-8 offset-md-2">
						<div id="pieChart" style="width: 600px;height:400px;"></div>

						<script type="text/javascript">
							// 初始化echarts实例
							var myChart = echarts.init(document
									.getElementById('pieChart'));

							// 配置图表选项
							var option = {
								title : {},
								tooltip : {
									trigger : 'axis',
									axisPointer : {
										type : 'shadow'
									}
								},
								legend : {},
								grid : {
									left : '3%',
									right : '4%',
									bottom : '3%',
									containLabel : true
								},
								xAxis : {
									type : 'value',
									boundaryGap : [ 0, 0.01 ],
									"axisLine" : { //x轴坐标轴
										"show" : false
									},
									axisLabel : {
										show : false
									},
									axisTick : { //x轴刻度线
										show : false
									}
								},
								yAxis : {
									type : 'category',
									data : [ '★', '★★', '★★★', '★★★★', '★★★★★' ]
								},
								series : [
										{
											name : '评价人数',
											type : 'bar',
											data : [ 8203, 13489, 29034, 68521,
													131744 ]
										}, ]
							};

							// 使用刚指定的配置项和数据显示图表。
							myChart.setOption(option);
						</script>
						</script>


					</div>
				</div>
				<!--/tab-pane -->
				<!--Tab specification-->

				<div class="tab-pane fade" id="tab-desc">

					<div class="col-md-8 offset-md-2">

						<div>
							<div class="h3 m-0">Product specification</div>
							<span>Additional information</span>
						</div>

						<hr />

						<div class="row">
							<div class="col-6">
								<img class="img-fluid" src="assets/images/specs.png"
									alt="Alternate Text" width="350" />

							</div>
							<div class="col-6">
								<img class="img-fluid" src="assets/images/specs.png"
									alt="Alternate Text" width="350" />

							</div>

						</div>
						<!--/row-->

					</div>
					<!--/col-md-8-->

				</div>
				<!--/tab-pane -->
				<!--Tab review-->

				<div class="tab-pane fade" id="tab-shipping">

					<div class="col-md-8 offset-md-2">

						<div>
							<div class="h3 m-0">Shipping information</div>
							<span>Additional information</span>
						</div>

						<hr />

						<h5>Money Back Guarantee</h5>
						<p>Our Money Back Guarantee applies to virtually everything on
							our site, and there's no extra fee for coverage. Itâs automatic
							and covers your purchase price plus original shipping on eligible
							purchases*. Follow these steps to get your refund.</p>

						<h5>Need to Return an Item?</h5>

						<p>Whatever youâre looking for, millions of items on our
							store are returnable. Before you buy an item, check the
							sellerâs return policy, then follow these easy steps to make a
							return. If the item you received doesn't match the description in
							the original listing, or if it arrived faulty or damaged,</p>

						<h5>Check an open return request</h5>

						<p>You can keep an eye on the progress of your return request
							by selecting Check your return status below, or in your Purchase
							history.</p>

						<h5>Send the item back</h5>

						<p>You'll need to send it back within 5 business days. Who
							covers the shipping costs depends on why you're returning it.
							Find more information about return shipping. When you send your
							item back we recommend using tracked shipping. Adding tracking
							details to your return helps protect against delays or issues in
							the refund process.</p>
					</div>
					<!--/col-md-8-->


				</div>
				<!--/tab-pane -->

			</div>
			<!--/tab-content -->
		</div>

		</section>

		<!-- ========================  Popular products  ======================== -->

		<section class="products"> <header>
		<div class="container">
			<h2 class="title">Popular products</h2>
			<div class="text">
				<p>
					Check out our latest collections. <br /> Make your dream come
					true!
				</p>
			</div>
		</div>
		</header>

		<div class="container">

			<div class="row">

				<!--Product item-->

				<div class="col-6 col-lg-3">
					<article>
					<div class="info">
						<span class="add-favorite"> <a href="javascript:void(0);"
							data-title="Add to favorites"
							data-title-added="Added to favorites list"> <i
								class="icon icon-heart"></i>
						</a>
						</span> <span> <a href="#productid1" class="mfp-open"
							data-title="Quick wiew"> <i class="icon icon-eye"></i>
						</a>
						</span>
					</div>
					<div class="btn btn-add">
						<i class="icon icon-cart"></i>
					</div>
					<div class="figure-grid">
						<div class="image">
							<a href="product.html"> <img
								src="assets/images/product-10.jpg" alt="" />
							</a>
						</div>
						<div class="text">
							<h2 class="title h4">
								<a href="product.html">Anna</a>
							</h2>
							<sub>$ 159,-</sub> <sup>$ 139,-</sup> <span
								class="description clearfix"> Gubergren amet dolor ea
								diam takimata consetetur facilisis blandit et aliquyam lorem ea
								duo labore diam sit et consetetur nulla </span>
						</div>
					</div>
					</article>
				</div>

				<!--Product item-->

				<div class="col-6 col-lg-3">
					<article>
					<div class="info">
						<span class="add-favorite"> <a href="javascript:void(0);"
							data-title="Add to favorites"
							data-title-added="Added to favorites list"> <i
								class="icon icon-heart"></i>
						</a>
						</span> <span> <a href="#productid1" class="mfp-open"
							data-title="Quick wiew"> <i class="icon icon-eye"></i>
						</a>
						</span>
					</div>
					<div class="btn btn-add">
						<i class="icon icon-cart"></i>
					</div>
					<div class="figure-grid">
						<span class="badge badge-warning">-20%</span>
						<div class="image">
							<a href="product.html"> <img
								src="assets/images/product-9.jpg" alt="" />
							</a>
						</div>
						<div class="text">
							<h2 class="title h4">
								<a href="product.html">Lucy</a>
							</h2>
							<sub>$ 319,-</sub> <sup>$ 219,-</sup> <span
								class="description clearfix"> Gubergren amet dolor ea
								diam takimata consetetur facilisis blandit et aliquyam lorem ea
								duo labore diam sit et consetetur nulla </span>
						</div>
					</div>
					</article>
				</div>

				<!--Product item-->

				<div class="col-6 col-lg-3">
					<article>
					<div class="info">
						<span class="add-favorite"> <a href="javascript:void(0);"
							data-title="Add to favorites"
							data-title-added="Added to favorites list"> <i
								class="icon icon-heart"></i>
						</a>
						</span> <span> <a href="#productid1" class="mfp-open"
							data-title="Quick wiew"> <i class="icon icon-eye"></i>
						</a>
						</span>
					</div>
					<div class="btn btn-add">
						<i class="icon icon-cart"></i>
					</div>
					<div class="figure-grid">
						<span class="badge badge-info">New arrival</span>
						<div class="image">
							<a href="product.html"> <img
								src="assets/images/product-8.jpg" alt="" />
							</a>
						</div>
						<div class="text">
							<h2 class="title h4">
								<a href="product.html">Ella</a>
							</h2>
							<sub>$ 899,-</sub> <sup>$ 750,-</sup> <span
								class="description clearfix"> Gubergren amet dolor ea
								diam takimata consetetur facilisis blandit et aliquyam lorem ea
								duo labore diam sit et consetetur nulla </span>
						</div>
					</div>
					</article>
				</div>

				<!--Product item-->

				<div class="col-6 col-lg-3">
					<article>
					<div class="info">
						<span class="add-favorite added"> <a
							href="javascript:void(0);" data-title="Add to favorites"
							data-title-added="Added to favorites list"> <i
								class="icon icon-heart"></i>
						</a>
						</span> <span> <a href="#productid1" class="mfp-open"
							data-title="Quick wiew"> <i class="icon icon-eye"></i>
						</a>
						</span>
					</div>
					<div class="btn btn-add">
						<i class="icon icon-cart"></i>
					</div>
					<div class="figure-grid">
						<div class="image">
							<a href="product.html"> <img
								src="assets/images/product-7.jpg" alt="" />
							</a>
						</div>
						<div class="text">
							<h2 class="title h4">
								<a href="product.html">Grace</a>
							</h2>
							<sub>$ 699,-</sub> <sup>$ 499,-</sup> <span
								class="description clearfix"> Gubergren amet dolor ea
								diam takimata consetetur facilisis blandit et aliquyam lorem ea
								duo labore diam sit et consetetur nulla </span>
						</div>
					</div>
					</article>
				</div>

			</div>
			<!--/row-->

			<div class="wrapper-more">
				<a href="products-grid.html" class="btn btn-main btn-sm">View
					all products</a>
			</div>

		</div>
		<!--/container--> </section>

		<!-- ========================  Product popup ======================== -->

		<div class="popup-main mfp-hide" id="productid1">

			<!--Product popup-->

			<div class="product">

				<!--Popup-title -->

				<div class="popup-title">
					<div class="h3 title">
						Modern sofa <small>product category</small>
					</div>
				</div>

				<!--Product gallery-->

				<div class="owl-product-gallery owl-theme owl-carousel">
					<img src="assets/images/item-1.jpg" alt="" width="640" /> <img
						src="assets/images/item-2.jpg" alt="" width="640" />
				</div>

				<!--Popup info-->

				<div class="popup-content">
					<div class="product-info-wrapper">
						<div class="row">

							<!--Left side-->

							<div class="col-sm-6">
								<div class="info-box">
									<strong>Maifacturer</strong> <span>Brand name</span>
								</div>
								<div class="info-box">
									<strong>Materials</strong> <span>Wood, Leather, Acrylic</span>
								</div>
								<div class="info-box">
									<strong>Availability</strong> <span><i
										class="fa fa-check-square-o"></i> in stock</span>
								</div>
							</div>

							<!--Right side-->

							<div class="col-sm-6">
								<div class="info-box">
									<strong>Available Colors</strong>
									<div class="product-colors clearfix">
										<span class="color-btn color-btn-red"></span> <span
											class="color-btn color-btn-blue checked"></span> <span
											class="color-btn color-btn-green"></span> <span
											class="color-btn color-btn-gray"></span> <span
											class="color-btn color-btn-biege"></span>
									</div>
								</div>
								<div class="info-box">
									<strong>Choose size</strong>
									<div class="product-colors clearfix">
										<span class="color-btn color-btn-biege">S</span> <span
											class="color-btn color-btn-biege checked">M</span> <span
											class="color-btn color-btn-biege">XL</span> <span
											class="color-btn color-btn-biege">XXL</span>
									</div>
								</div>
							</div>

						</div>
						<!--/row-->
					</div>
					<!--/product-info-wrapper-->
				</div>
				<!--/popup-content-->

				<div class="popup-table">
					<div class="popup-cell">
						<div class="price">
							<span class="h3">$ 1999,00 <small>$ 2999,00</small></span>
						</div>
					</div>
					<div class="popup-cell">
						<div class="popup-buttons">
							<a href="product.html"><span class="icon icon-eye"></span> <span
								class="hidden-xs">View more</span></a> <a href="javascript:void(0);"><span
								class="icon icon-cart"></span> <span class="hidden-xs">Buy</span></a>
						</div>
					</div>
				</div>

			</div>
			<!--/product-->
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