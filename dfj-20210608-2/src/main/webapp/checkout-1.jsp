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
<title>Checkout</title>

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
			<h2 class="title">Cart page</h2>
			<div class="text">
				<p>Proceed your order details</p>
			</div>
		</div>
		</header> <!-- === step wrapper === -->

		<div class="step-wrapper"></div>

		<!-- === left content === -->

		<div class="container">

			<!-- ========================  Cart wrapper ======================== -->

			<div class="cart-wrapper">

				<!-- cart header -->

				<div class="cart-block cart-block-header clearfix">
					<div>
						<span>Product</span>
					</div>
					<div>
						<span>&nbsp;</span>
					</div>
					<div>
						<span>Quantity</span>
					</div>
					<div class="text-right">
						<span>Price</span>
					</div>
				</div>

				<!-- cart items -->

				<div class="clearfix">
					<c:forEach items="${listCart }" var="cart">
						<!-- cart item -->

						<div class="cart-block cart-block-item clearfix">
							<div class="image">
								<a href="product.jsp"><img src="${cart.cartPic}" alt="" /></a>
							</div>
							<div class="title">
								<div class="h4">
									<a href="product.jsp">${cart.cartName}</a>
								</div>

							</div>
							<div class="quantity">
								<input type="number" value="${cart.cartNum}"
									class="form-control form-quantity" />
							</div>
							<div class="price">
								<span class="final h3">${cart.cartPrice}</span>

							</div>
							<!--delete-this-item-->
							
								<a><i class="icon icon-cross icon-delete"></i></a>
									
								
						</div>
					</c:forEach>

					<c:if test="${sc.pageNow > 1 }">
						<div class="pagination-wrapper">
							<div class="pagination justify-content-center">
								<a class="page-item"
									href="<%=path %>/queryCart.do?condition=${sc.condition }&pageNow=1">首页</a>
								<a class="page-item"
									href="<%=path %>/queryCart.do?condition=${sc.condition }&pageNow=${sc.pageNow - 1}">上
									一页</a>
							</div>
						</div>
					</c:if>
					<c:if test="${sc.pageNow < sc.pageCnt}">
						<div class="pagination-wrapper">
							<div class="pagination justify-content-center">
								<a class="page-item"
									href="<%=path %>/queryCart.do?condition=${sc.condition }&pageNow=${sc.pageNow + 1}">下
									一页</a> <a class="page-item"
									href="<%=path %>/queryCart.do?condition=${sc.condition }&pageNow=${sc.pageCnt}">尾页
								</a>
							</div>
						</div>
					</c:if>









					<!-- ========================  Cart navigation ======================== -->

					<div class="clearfix">
						<div class="row">
							<div class="col-6">
								<a href="queryGoods.do?condition=&pageNow=1"
									class="btn btn-clean-dark"><span
									class="icon icon-chevron-left"></span> Shop more</a>
							</div>
							<div class="col-6 text-right">
								<a href="<%=path %>/accountAdd.do" class="btn btn-clean-dark"><span
									class="icon icon-cart"></span> Proceed to delivery</a>
							</div>
						</div>
					</div>

				</div>
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