<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
							alert(data)
						},
						type:'post'
					});
		}
	</script>

	<script>
		function checkComment(myUid){

			if(myUid == undefined || myUid ==null || myUid==""){
				alert("未登录，不能评论")
				return false;
			}else{
				return  true;
			}
		}
	</script>

</head>
<body>

<!-- TOP HEADER Start
    ================================================== -->
	<jsp:include page="head.jsp"/>

<!-- breadcrumb Start
    ================================================== -->
	<section id="topic-header">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<h1>糕点详情</h1>
					<p></p>
				</div>	<!-- /.col-md-4 -->
				<div class="col-md-8 hidden-xs">
					<ol class="breadcrumb pull-right">
					  	<li><a href="#">Home</a></li>
					  	<li><a href="#">Products</a></li>
					  	<li class="active">Single Products</li>
					</ol>
				</div> <!-- /.col-md-8 -->
			</div>	<!-- /.row -->
		</div>	<!-- /.container-->
	</section><!-- /Section -->

	<section id="single-product">
		<div class="container">
			<div class="row">
				<div class="col-md-5">
						<img src="/view/${foodInfo.img}" alt="">

				</div> <!-- End of /.col-md-5 -->
				<div class="col-md-4">
					<div class="block">
						<div class="product-des">
							<h4>${foodInfo.foodName}</h4>
							<p class="price">${foodInfo.unitPrice}元</p>
							<p> 详细介绍:${foodInfo.descr} 好吃，好吃，好吃！！！</p>	 <!--    BUG  BUG    -->

                            <a class="view-link shutter" onclick="addCart(${param.id})">
                                <i class="fa fa-plus-circle"></i>加入购物车</a>

						</div>	<!-- End of /.product-des -->


					</div> <!-- End of /.block -->
				</div>	<!-- End of /.col-md-4 -->
				<div class="col-md-3">
					<div class="blog-sidebar">
						<div class="block">
							<h4 class="top-catagori-heading">Latest Food Items</h4>
							<ul class="media-list">
							 	<li class="media">
							    	<a class="pull-left" href="#">

							    	</a>
							    	<div class="media-body">
							      		<a href="" class="media-heading">Lamb leg roast
							      		<p>Lorem ipsum dolor sit amet.</p></a>
							    	</div>
							  	</li>	<!-- End of /.media -->
							  	<li class="media">
							    	<a class="pull-left" href="#">

							    	</a>
							    	<div class="media-body">
							      		<a href="" class="media-heading"> Lamingtons
							      		<p>Lorem ipsum dolor.</p></a>
							    	</div>
							  	</li>	<!-- End of /.media -->
							  	<li class="media">
							    	<a class="pull-left" href="#">
							    	</a>
							    	<div class="media-body">
							      		<a href="" class="media-heading">
							      		Anzac Salad
							      		<p>Lorem ipsum dolor sit.</p>
							      		</a>
							    	</div>
							  	</li>	<!-- End of /.media -->
							  	<li class="media">
							    	<a class="pull-left" href="#">

							    	</a>
							    	<div class="media-body">
							      		<a href="" class="media-heading">
							      		Anzac Salad
							      		<p>Lorem ipsum dolor sit.</p>

							      		</a>
							    	</div>
							  	</li>	<!-- End of /.media -->
							</ul>	<!-- End of /.media-list -->
						</div>	<!-- End of /.block -->
						
					</div>	<!-- End of /.blog-sidebar -->
						
				</div>	<!-- End of /.col-md-3 -->
			</div>	<!-- End of /.row -->

			<!--  评论区   -->
				<c:if test="${not empty commentsList}">
				 	<div class="comments-box">
						<c:forEach items="${commentsList}" var="c">
							<div class="media">
								<img class="media-object pull-left" src="/view/images/author.jpg" alt="...">
								<div class="media-body">
									<h6 class="media-heading">${c.uname}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>${c.time}</span></h6>
									<p>${c.descr} .</p>
								</div>
							</div>
						</c:forEach>
					</div>
				</c:if>
		   
				<c:if test="${ empty commentsList}">
	      		<div class="tab-pane" id="profile">
						<p>没有任何用户评论.</p>
					</div>
				</c:if>

			<!--   发送评论  -->
			<div class="leave-comment">
				<form action="/comment/giveComments" class="form-horizontal" role="form">
					<div class="form-group">
						<label for="inputmessage" class="col-sm-1 control-label">留言</label>
						<div class="col-sm-10">
							<textarea class="form-control" id="inputmessage" name="descr"  rows="3"></textarea>
						</div>
					</div>	<!-- End of /.form-group -->
					<!--  用户id  -->
					<input type="hidden" name="uid" value="${customerInfo.id}">

					<!--  食物的id -->
					<input type="hidden" name="fid" value="${param.id}">

					<div class="form-group">
						<div class="col-sm-offset-1 col-sm-10">
							<button type="submit" class="btn btn-primary" onclick="return checkComment(${customerInfo.id})">发送</button>
						</div>
					</div>	<!-- End of /.form-group -->
				</form>	<!-- End of /.form-horizontal -->
			</div>	<!-- End of /.leave comments -->
		</div>	<!-- End of /.col-md-9 -->
	</section> <!-- End of /.Single-product -->

	<jsp:include page="footer.jsp"/>

	<a id="back-top" href="#"></a>
</body>
</html>