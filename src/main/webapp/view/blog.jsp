<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
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
	<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" />
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsive.css">

	<!-- jS -->
	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>
	<script src="js/owl.carousel.min.js" type="text/javascript"></script>
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/main.js" type="text/javascript"></script>


</head>
<body>

	<jsp:include page="head.jsp"/>

	<!-- Breadcrumbs Start
    ================================================== -->
	<section id="topic-header">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<h1>美食博客</h1>
				</div>	<!-- End of /.col-md-4 -->	
				<div class="col-md-8 hidden-xs">
					<ol class="breadcrumb pull-right">
					  	<li><a href="#">Home</a></li>
					  	<li class="active">Blog</li>
					</ol>
				</div>	<!-- End of /.col-md-8 -->
			</div>	<!-- End of /.row -->
		</div>	<!-- End of /.container -->
	</section>	<!-- End of /#Topic-header -->

	<section id="blog">
		<div class="container">
			<div class="row">
				<div class="col-md-9 clearfix">
					<ul class="blog-zone">
					    <li>
					        <div class="blog-icon">
					        	<i class="fa  fa-pencil"></i>
					        </div>
					        <div class="blog-box">
					        	<img src="/view/images/gaodian.png" alt="">
					            <div class="blog-post-body clearfix">
						            <a href="#">
					            		<h2>芝士糕点制作</h2>
						            </a>
					            	<div class="blog-post-tag">
						            	<div class="block">
						            		<i class="fa fa-clock-o"></i>
						            		<p>2020-01-02</p>
						            	</div>
						            	<div class="block">
						            		<i class="fa fa-user"></i>
						            		<p>Admin</p>
						            	</div>
						            	<div class="block">
						            		<i class="fa fa-tags"></i>
						            		<p>
						            			<a href="">食品文化</a>,
						            			<a href="">绿色</a>
						            		</p>
						            	</div>

						            </div>
						            <p> 评论：芝士本身就滑润，拉丝，味道上受很多赞美呢，口感上也不输于各种糕点，可以说，真的是全能型的，全能型的芝士，再搭配上等新鲜的配料和底料，做出的来的东西，肯定是非常受欢迎，随着现代生活的发展，芝士蛋糕，可以根据我们不同的口味来选择了，
										像是巧克力芝士糕点，甜味芝士糕点，酸奶芝士糕点，土耳其芝士糕点等等</p>
						            <a href="blog-single.html" class="btn btn-default btn-transparent pull-right" role="button">
								        <span>Read More</span>
								    </a>
					            </div>
					        </div>	<!-- End of /.blog-box -->
					    </li>
					    <li>
					        <div class="blog-icon">
					        	<i class="fa  fa-video-camera"></i>
					        </div>

					        <!-- 视频展示-->
					        <div class="blog-box">
					        	<iframe src="/view/mp4/makeCakes.mp4" frameborder="0" allowfullscreen="" width="100%" height="400px"></iframe>
					            
					            <div class="blog-post-body clearfix">
					            	<a href="blog-single.html">
					            		<h2>视频展示</h2>
					            	</a>
					            	<div class="blog-post-tag">
						            	<div class="block">
						            		<i class="fa fa-clock-o"></i>
						            		<p>2020-01-02</p>
						            	</div>
						            	<div class="block">
						            		<i class="fa fa-user"></i>
						            		<p>Admin</p>
						            	</div>
						            	<div class="block">
						            		<i class="fa fa-tags"></i>
						            		<p>
						            			<a href="">食品文化</a>,
						            			<a href="">绿色</a>
						            		</p>
						            	</div>
						            </div>
						            <p>评论：芝士糕点，饼干底用的消化饼干和牛奶为主，足以让我们可以知道，它是奶香味道的，容易消化，不易上火</p>
						            <a href="blog-single.html" class="btn btn-default btn-transparent pull-right" role="button">
								        <span>Read More</span>
								    </a>
					            </div>
					        </div>	<!-- End of /.blog-box -->
					    </li>
					    <li>
					       <div class="blog-icon">
					        	<i class="fa fa-music"></i>
					        </div>


					    </li>
					  </ul>	<!-- End of /.blog-zone -->

					<!-- Pagination -->
					 <ul class="pagination pull-right">
					  	<li class="disabled"><a href="#">&laquo;</a></li>
					  	<li class="active"><a href="#">1 <span class="sr-only"></span></a></li>
					  	<li><a href="#">2</a></li>
					  	<li><a href="#">3</a></li>
					  	<li><a href="#">4</a></li>
					  	<li><a href="#">»</a></li>
					</ul>	<!-- End of /.pagination -->
				</div>	<!-- End of /.col-md-9 -->


				<!--   可以静态引入    -->
				<div class="col-md-3">
					<div class="blog-sidebar">
						<div class="block">
							<h4>目录</h4>
							<div class="list-group">
								<a href="#" class="list-group-item">
									<i class="fa  fa-dot-circle-o"></i>
									美食评论
								</a>
								<a href="#" class="list-group-item">
									<i class="fa  fa-dot-circle-o"></i>
									美食视频
								</a>
								<a href="#" class="list-group-item">
									<i class="fa  fa-dot-circle-o"></i>
									美食教程
								</a>
								<a href="#" class="list-group-item">
									<i class="fa  fa-dot-circle-o"></i>
									美食社区
								</a>
								<a href="#" class="list-group-item">
									<i class="fa  fa-dot-circle-o"></i>
									美食预订
								</a>
							</div>
						</div>	<!-- End of /.block -->


						<div class="block">
							<h4>Tag Cloud</h4>
							<div class="tag-link">
								<a href="">美食评论</a>
								<a href="">美食视频</a>
								<a href="">美食教程</a>
								<a href="">美食社区</a>
								<a href="">美食预订</a>
							</div>	
						</div>	<!-- End of /.block -->
						
					</div>	<!-- End of /.blog-sidebar -->
				</div>	<!-- End of /.col-md-3 -->
				
			</div>	<!-- End of /.row -->
		</div>	<!-- End of /.container -->
	</section>	<!-- End of /#Blog -->

	<jsp:include page="footer.jsp"/>
	<a id="back-top" href="#"></a>
</body>
</html>