<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
	<meta charset="UTF-8">
	<title></title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

	<!-- Fonts -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,700' rel='stylesheet' type='text/css'>

	<!-- Css -->
	<link rel="stylesheet" href="/view/css/nivo-slider.css" type="text/css" />
	<link rel="stylesheet" href="/view/css/owl.carousel.css">
	<link rel="stylesheet" href="/view/css/owl.theme.css">
	<link rel="stylesheet" href="/view/css/bootstrap.min.css">
	<link rel="stylesheet" href="/view/css/font-awesome.min.css">
	<link rel="stylesheet" href="/view/css/style.css">
	<link rel="stylesheet" href="/view/css/responsive.css">

	<!-- jS -->
	<script src="/view/js/jquery.min.js" type="text/javascript"></script>
	<script src="/view/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="/view/js/jquery.nivo.slider.js" type="text/javascript"></script>
	<script src="/view/js/owl.carousel.min.js" type="text/javascript"></script>
	<script src="/view/js/jquery.nicescroll.js"></script>
	<script src="/view/js/jquery.scrollUp.min.js"></script>
	<script src="/view/js/main.js" type="text/javascript"></script>

	<script>
		function addCart(fid) {
			var uid=${customerInfo.id}
			$.ajax({
				url:'/cart/addCart',
				data:{"uid":uid,"fid":fid},
				dataType:'html',   // 可以设置为 JSON
				error:function(){
					alert("请求出错.")
				},
				success:function(data){
					alert(data);
				},
				type:'post'
			});
		}
	</script>

</head>
    <body>

<!-- TOP HEADER Start
    ================================================== -->
	<jsp:include page="head.jsp"/>

	<!-- SLIDER Start
    ================================================== -->
	<section id="slider-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div id="slider" class="nivoSlider">
				    	<img src="/view/images/slider1.jpg" alt="" />
				    	<img src="/view/images/slider2.jpg" alt=""/>
				    	<img src="/view/images/slider3.jpg" alt="" />
						<img src="/view/images/slider4.jpg" alt="" />
					</div>	<!-- End of /.nivoslider -->
				</div>	<!-- End of /.col-md-12 -->
			</div>	<!-- End of /.row -->
		</div>	<!-- End of /.container -->
	</section> <!-- End of Section -->

	<!-- FEATURES Start
    ================================================== -->

	<section id="features">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="block">
						<div class="media">
							<div class="pull-left" href="#">
						    	<i class="fa fa-ambulance"></i>
						  	</div>
						  	<div class="media-body">
						    	<h4 class="media-heading">免费送货</h4>
						    	<p>质量保证，送货到门.</p>
						  </div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="block">
						<div class="media">
							<div class="pull-left" href="#">
								<i class=" fa fa-foursquare"></i>
						  	</div>
						  	<div class="media-body">
						    	<h4 class="media-heading">免费品尝</h4>
						    	<p>欢迎到店免费品尝美食.</p>
						  </div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="block">
						<div class="media">
							<div class="pull-left" href="#">
						    	<i class=" fa fa-phone"></i>
						  	</div>
						  	<div class="media-body">
						    	<h4 class="media-heading">联系我们</h4>
						    	<p>联系电话: 15870088320.</p>
						  </div>	<!-- End of /.media-body -->
						</div>	<!-- End of /.media -->
					</div>	<!-- End of /.block -->
				</div> <!-- End of /.col-md-4 -->
			</div>	<!-- End of /.row -->
		</div>	<!-- End of /.container -->
	</section>	<!-- End of section -->

	<!-- CATAGORIE Start
    ================================================== -->
	<section id="catagorie">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="block">
						<div class="block-heading">
							<h2>热门推荐</h2>
						</div>
						<div class="row">
						  	<div class="col-sm-6 col-md-4">
							    <div class="thumbnail">
							    	<a class="catagotie-head" href="/food/findFoodInfo?id=1">
										<img src="/view/images/f1.jpg" alt="" />
										<h3>薄荷糕点</h3>
									</a>
							      	<div class="caption">
							        	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste, aut, esse, laborum placeat id illo a expedita aperiam...</p>
							        	<p>
							        		<a href="/food/findFoodInfo?id=1" class="btn btn-default btn-transparent" role="button">
							        			<span>了解详情</span>
							        		</a>
							        	</p>
							      	</div>	<!-- End of /.caption -->
							    </div>	<!-- End of /.thumbnail -->
						  	</div>	<!-- End of /.col-sm-6 col-md-4 -->

							<div class="col-sm-6 col-md-4">
								<div class="thumbnail">
									<a class="catagotie-head" href="/food/findFoodInfo?id=2">
										<img src="/view/images/f2.jpg" alt="...">
										<h3>冰皮糕点</h3>
									</a>
									<div class="caption">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste, aut, esse, laborum placeat id illo a expedita aperiam...</p>
										<p>
											<a href="/food/findFoodInfo?id=2" class="btn btn-default btn-transparent" role="button">
												<span>了解详情</span>
											</a>
										</p>
									</div>	<!-- End of /.caption -->
								</div>	<!-- End of /.thumbnail -->
							</div>	<!-- End of /.col-sm-6 col-md-4 -->

							<div class="col-sm-6 col-md-4">
								<div class="thumbnail">
									<a class="catagotie-head" href="/food/findFoodInfo?id=3">
										<img src="/view/images/f3.jpg" alt="...">
										<h3>贝克斯蛋糕</h3>
									</a>
									<div class="caption">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste, aut, esse, laborum placeat id illo a expedita aperiam...</p>
										<p>
											<a href="/food/findFoodInfo?id=3" class="btn btn-default btn-transparent" role="button">
												<span>了解详情</span>
											</a>
										</p>
									</div>	<!-- End of /.caption -->
								</div>	<!-- End of /.thumbnail -->
							</div>	<!-- End of /.col-sm-6 col-md-4 -->

						</div>	<!-- End of /.row -->
					</div>	<!-- End of /.block --> 
				</div>	<!-- End of /.col-md-12 -->
			</div>	<!-- End of /.row -->
		</div>	<!-- End of /.container -->
	</section>	<!-- End of Section -->

		<!-- 新产品菜单1
    ================================================== -->
	<section id="products">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="products-heading">
						<h2>新产品</h2>（点击进入详细链接）
					</div>
				</div>
			</div>

			<div class="row">

				<div class="col-md-3">
					<div class="products">
						<a href="/food/findFoodInfo?id=1">
							<img src="/view/images/f1.jpg" alt="">
						</a>
						<a href="/food/findFoodInfo?id=1">
							<h4>薄荷糕点</h4>
						</a>
						<p class="price">价格: 10元</p>
						<a class="view-link shutter" onclick="addCart(1)">
							<i class="fa fa-plus-circle"></i>加入购物车</a>
					</div>	<!-- End of /.products -->
				</div>	<!-- End of /.col-md-3 -->


				<div class="col-md-3">
					<div class="products">
						<a href="/food/findFoodInfo?id=2">
							<img src="/view/images/f2.jpg" alt="">
						</a>
						<a href="/food/findFoodInfo?id=2">
							<h4>冰皮糕点</h4>
						</a>
						<p class="price">价格: 12元</p>
						<a class="view-link shutter" onclick="addCart(2)">
							<i class="fa fa-plus-circle"></i>加入购物车</a>
					</div>	<!-- End of /.products -->
				</div> <!-- End Of Col-md-3 -->

				<div class="col-md-3">
					<div class="products">
						<a href="/food/findFoodInfo?id=3">
							<img src="/view/images/f3.jpg" alt="">
						</a>
						<a href="/food/findFoodInfo?id=3">
							<h4>贝克斯蛋糕</h4>
						</a>
						<p class="price">价格: 20元</p>
						<a class="view-link shutter" onclick="addCart(3)">
							<i class="fa fa-plus-circle"></i>加入购物车</a>
					</div>	<!-- End of /.products -->
				</div> <!-- End Of /.Col-md-3 -->

				<div class="col-md-3">
					<div class="products">
						<a href="/food/findFoodInfo?id=4">
							<img src="/view/images/f4.jpg" alt="">
						</a>
						<a hhref="/food/findFoodInfo?id=4">
							<h4>布朗尼蛋糕</h4>
						</a>
						<p class="price">价格: 25元</p>
						<a class="view-link shutter" onclick="addCart(4)">
							<i class="fa fa-plus-circle"></i>加入购物车</a>
					</div>	<!-- End of /.products -->
				</div> <!-- End Of /.Col-md-3 -->

				<div class="col-md-3">
					<div class="products">
						<a href="/food/findFoodInfo?id=5">
							<img src="/view/images/f5.jpg" alt="">
						</a>
						<a href="/food/findFoodInfo?id=5">
							<h4>彩泥糕点</h4>
						</a>
						<p class="price">价格: 30元</p>
						<a class="view-link shutter" onclick="addCart(5)">
							<i class="fa fa-plus-circle"></i>加入购物车</a>
					</div>	<!-- End of /.products -->
				</div> <!-- End Of /.Col-md-3 -->

				<div class="col-md-3">
					<div class="products">
						<a href="/food/findFoodInfo?id=6">
							<img src="/view/images/f6.jpg" alt="">
						</a>
						<a href="/food/findFoodInfo?id=6">
							<h4>草莓糕点</h4>
						</a>
						<p class="price">价格: 20元</p>
						<a class="view-link shutter" onclick="addCart(6)">
							<i class="fa fa-plus-circle"></i>加入购物车</a>
					</div>	<!-- End of /.products -->
				</div> <!-- End Of /.Col-md-3 -->

				<div class="col-md-3">
					<div class="products">
						<a href="/food/findFoodInfo?id=7">
							<img src="/view/images/f7.jpg" alt="">
						</a>
						<a href="/food/findFoodInfo?id=7">
							<h4>芙蓉糕点</h4>
						</a>
						<p class="price">价格: 25.00元</p>
						<a class="view-link shutter" onclick="addCart(7)">
							<i class="fa fa-plus-circle"></i>加入购物车</a>
					</div>	<!-- End of /.products -->
				</div> <!-- End Of /.Col-md-3 -->

				<div class="col-md-3">
					<div class="products">
						<a href="/food/findFoodInfo?id=8">
							<img src="/view/images/f8.jpg" alt="">
						</a>
						<a href="/food/findFoodInfo?id=8">
							<h4>宫廷糕点</h4>
						</a>
						<p class="price">价格: 15元</p>
						<div >
							<a class="view-link shutter" onclick="addCart(8)">
							<i class="fa fa-plus-circle"></i>加入购物车</a>
						</div>
					</div>	<!-- End of /.products -->
				</div> <!-- End Of /.Col-md-3 -->

			</div>	<!-- End of /.row -->
		</div>	<!-- End of /.container -->
	</section>	<!-- End of Section -->

		<!-- CALL TO ACTION Start
    ================================================== -->

	<section id="call-to-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="block">
						<div class="block-heading">
							<h2>我们的合作伙伴</h2>
						</div>
					</div>	<!-- End of /.block -->
					<div id="owl-example" class="owl-carousel">
						<div> <img src="/view/images/company-1.png" alt=""></div>
						<div> <img src="/view/images/company-2.png" alt=""></div>
						<div> <img src="/view/images/company-3.png" alt=""></div>
						<div> <img src="/view/images/company-4.png" alt=""></div>
						<div> <img src="/view/images/company-5.png" alt=""></div>
						<div> <img src="/view/images/company-6.png" alt=""></div>
						<div> <img src="/view/images/company-8.png" alt=""></div>
						<div> <img src="/view/images/company-9.png" alt=""></div>
					</div>	<!-- End of /.Owl-Slider -->
				</div>	<!-- End of /.col-md-12 -->
			</div> <!-- End Of /.Row -->
		</div> <!-- End Of /.Container -->
	</section>	<!-- End of Section -->
	
	<!--   静态引入  -->
	<!-- FOOTER Start
    ================================================== -->
	<jsp:include page="footer.jsp"/>
	
	<a id="back-top" href="#"></a>
</body>
</html>