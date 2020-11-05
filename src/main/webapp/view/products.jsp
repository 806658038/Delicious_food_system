<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
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
		function checkPageBefore(pageNum) {
			if(pageNum<=1){
				return false;
			}else{
				return true;
			}
		}

		function checkPageAfter(pageNum) {
			if(pageNum>=4){
				return false;
			}else{
				return true;
			}
		}

		function addCarts(fid) {
			var uid=${customerInfo.id}
				$.ajax({
					url:'/cart/addCart',
					data:{"uid":uid,"fid":fid},
					dataType:'html',
					error:function(){
						alert("请求出错.")
					},
					success:function(data){
						alert(data)
					},
					type:'post'
				});
		}
	</script>

</head>
<body>

	<jsp:include page="head.jsp"/>

	<section id="topic-header">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<h1>菜品展示</h1>
					<p>请查看</p>
				</div>	<!-- End of /.col-md-4 -->
				<div class="col-md-8 hidden-xs">
					<ol class="breadcrumb pull-right">
					  	<li><a href="#">Home</a></li>
					  	<li class="active">Shop</li>
					</ol>
				</div>	<!-- End of /.col-md-8 -->
			</div>	<!-- End of /.row -->
		</div>	<!-- End of /.container -->
	</section>	<!-- End of /#Topic-header -->


	<!-- PRODUCTS Start
    ================================================== -->

	<section id="shop">
		<div class="container">

			<div class="row">
				<div class="col-md-9">

					<div class="products-heading">
						<h2>糕点</h2>
					</div>	<!-- End of /.Products-heading -->

					<div class="product-grid">
					    <ul>
							<c:if test="${foodPageInfo!=null}">		<!--  分页展示   -->
								<c:forEach items="${foodPageInfo}" var="food" varStatus="vs" >
									<li>
										<div class="products">
											<a href="/food/findFoodInfo?id=${food.id}">
												<img src="/view/${food.img}" alt="">
											</a>
											<a href="/food/findFoodInfo?id=${food.id}">
												<h4>${food.foodName}</h4>
											</a>
											<p class="price">价格: ${food.unitPrice}元</p>
											<div>
												<a class="view-link shutter" href="#" onclick="addCarts(${food.id})">
												<i class="fa fa-plus-circle"></i>加入购物车</a>
											</div>
										</div>	<!-- End of /.products -->
									</li>
								</c:forEach>
							</c:if>
							<c:if test="${foodsList!=null}">	<!--  按类型展示   -->
								<c:forEach items="${foodsList}" var="f">
									<li>
										<div class="products">
											<a href="/food/findFoodInfo?id=${f.id}">
												<img src="/view/${f.img}" alt="">
											</a>
											<a href="/food/findFoodInfo?id=${f.id}">
												<h4>${f.foodName}</h4>
											</a>
											<p class="price">价格: ${f.unitPrice}元</p>
											<div>
												<a class="view-link shutter" href="#" onclick="addCarts(${f.id})">
													<i class="fa fa-plus-circle"></i>加入购物车
												</a>
											</div>
										</div>	<!-- End of /.products -->
									</li>
								</c:forEach>
							</c:if>
						</ul>
					</div>	<!-- End of /.products-grid -->

					<c:if test="${foodPageInfo!=null}">
						<div class="pagination-bottom">
							<ul class="pagination">
								<li><a href="/food/pagingFoodInfo?pageNum=${param.pageNum-1}" onclick="return checkPageBefore(${param.pageNum})">&laquo;</a></li>
								<li><a href="/food/pagingFoodInfo?pageNum=1">1 <span class="sr-only"></span></a></li>
								<li><a href="/food/pagingFoodInfo?pageNum=2">2</a></li>
								<li><a href="/food/pagingFoodInfo?pageNum=3">3</a></li>
								<li><a href="/food/pagingFoodInfo?pageNum=4">4</a></li>
								<li><a href="/food/pagingFoodInfo?pageNum=${param.pageNum+1}" onclick="return checkPageAfter(${param.pageNum})" >»</a></li>

							</ul>	<!-- End of /.pagination -->
						</div>
					</c:if>
				</div>		<!-- End of /.col-md-9 -->


				<!-- 目录  -->
				<div class="col-md-3">
					<div class="blog-sidebar">
						<div class="block">
							<h4>分类</h4>
							<div class="list-group">
								<a href="/food/FoodTypeFindInfo?type=豆沙糕" class="list-group-item">
									<i class="fa  fa-dot-circle-o"></i>
									豆沙糕
								</a>
								<a href="/food/FoodTypeFindInfo?type=水果糕点" class="list-group-item">
									<i class="fa  fa-dot-circle-o"></i>
									水果糕点
								</a>
								<a href="/food/FoodTypeFindInfo?type=中式糕点" class="list-group-item">
									<i class="fa  fa-dot-circle-o"></i>
									中式糕点
								</a>
								<a href="/food/FoodTypeFindInfo?type=蛋糕" class="list-group-item">
									<i class="fa  fa-dot-circle-o"></i>
									蛋糕
								</a>
								<a href="/food/FoodTypeFindInfo?type=西式糕点" class="list-group-item">
									<i class="fa  fa-dot-circle-o"></i>
									西式糕点
								</a>
							</div>
						</div>
					</div>

						<div class="block">
							<img src="images/food-ad.png" alt="">
						</div>

						<div class="block">
							<h4>食物标签</h4>
							<div class="tag-link">
								<a href="">美味</a>
								<a href="">可口</a>
								<a href="">醇香</a><br>

								<a href="">酥软</a>
								<a href="">香脆</a>
								<a href="">精致</a>
							</div>	
						</div>
				</div>	<!--  目录 -->
					<!-- End of /.col-md-3 -->
			</div> <!-- End of /.row -->
		</div>	<!-- End of /.container -->
	</section>	<!-- End of Section -->


	<jsp:include page="footer.jsp"/>

	<a id="back-top" href="#"></a>
</body>
</html>