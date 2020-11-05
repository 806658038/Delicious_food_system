<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>

	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>购物车</title>
	<link rel="stylesheet" href="/view/css/reset.css">
	<link rel="stylesheet" href="/view/css/carts.css">

	<style>
		input[type="button"] {

			background-color: red;
		}
	</style>

	<script type="text/javascript">

		function removeIt(){
			var a = window.confirm( " 确定要删除该商品吗？" );
			if (a){
				return true;
			}else{
				return false;
			}
		}

		function payIt(){
			var b = window.confirm( " 确定要支付该商品吗？" );
			if (b){
				return true;
			}else{
				return false;
			}
		}

		// 结算
		function checkFoods() {
			var id = document.getElementsByName('select');
			var fids ="";
			for(var i = 0; i < id.length; i++){
				if(id[i].checked)
					fids+=id[i].value+",";
			}
			var c = window.confirm( " 确定要结算吗？" );
			if(c){
				var uid=${customerInfo.id}
				$.ajax({
					url:'/order/getNewByAjaxOrder',
					type:'post',
					data:{"uid":uid,"fids":fids},
					dataType:'json',
					error:function(){
						alert("请求出错.")
					},
					success:function(data){

						window.location.href="/cart/showMyCart?uid="+uid

					}
				});
			}
		}

		function changeNumReduce(fid,num) {
			var uid=${customerInfo.id}
			if(num<=1){
				return false;
			}else{
				$.ajax({
					url:'/cart/changeCart',
					data:{"uid":uid,"fid":fid,"action":"reduce"},
					dataType:'html',   // 可以设置为 JSON
					error:function(){
						alert("请求出错.")
					},
					success:function(data){

					},
					type:'post'
				});
			}
		}

		function changeNumAdd(fid) {
			var uid=${customerInfo.id}
			$.ajax({
				url:'/cart/changeCart',
				data:{"uid":uid,"fid":fid,"action":"add"},
				dataType:'html',   // 可以设置为 JSON
				error:function(){
					alert("请求出错.")
				},
				success:function(data){

				},
				type:'post'
			});
		}
	</script>

</head>
<body>

<jsp:include page="head.jsp"/>

<br>
<section class="cartMain">
	<div class="cartMain_hd">
		<ul class="order_lists cartTop">
			<li class="list_chk">
			<!--所有商品全选-->
			<input type="checkbox" id="all" class="whole_check">
			<label for="all"></label>
			全选
		</li>
			<li class="list_con">商品名称</li>
			<li class="list_price">单价</li>
			<li class="list_amount">数量</li>
			<li class="list_sum">金额</li>
			<li class="list_op">操作</li>
		</ul>
	</div>

	<c:if test="${not empty cartItems}">
		<form action="/order/getNewOrder" id="myForm" name="myForm" method="post">
			<input type="hidden" name="uid" value="${customerInfo.id}">	<!--  订单 uid -->

			<div class="cartBox" id="cartBox">
				<c:forEach items="${cartItems}"  var="cartItem" varStatus="xh"  >

					<input type="hidden" id="fid" name="fid" value="${cartItem.fid}">		<!--  订单 fid -->
					<div class="order_content">
						<ul class="order_lists">
							<li class="list_chk">
								<input type="checkbox" id="${xh.count}" name="select" value="${cartItem.fid}" class="son_check">
								<label for="${xh.count}"></label>
							</li>
							<li class="list_con">
								<div class="list_img"><a href="javascript:;"><img src="/view/${cartItem.img}" alt=""></a></div>
								<div class="list_text" align="center"><a href="javascript:;">${cartItem.foodName}</a></div>
							</li>

							<li class="list_price">
								<p class="price">￥${cartItem.unitPrice}</p>
							</li>
							<li class="list_amount">
								<div class="amount_box">						<!-- class="reduce reSty" -->
									<a  onclick="changeNumReduce(${cartItem.fid},'${cartItem.number}')" class="reduce reSty">-</a>
									<input type="text" style="width:40px;height:25px;" id="ordNumber" name="ordNumber" value="${cartItem.number}" class="sum"> <!--  订单 food 数量-->
									<a onclick="changeNumAdd(${cartItem.fid})"  class="plus"  >+</a>
								</div>										<!--  class="plus"    -->
							</li>

							<li class="list_sum">
								<p class="sum_price">￥${cartItem.unitPrice * cartItem.number}</p>
							</li>
							<li class="list_op">
								<p class="del"><a href="/cart/delMyCart?uid= ${customerInfo.id}&fid=${cartItem.fid}" onclick="return removeIt()" class="delBtn">移除商品</a></p>
							</li>
							<li class="list_op">
								<p class="del"><a href="/order/getNewOrder?uid= ${customerInfo.id}&fid=${cartItem.fid}" onclick="return payIt()" class="delBtn">支付</a></p>
							</li>
						</ul>
					</div>

				</c:forEach>
			</div>



			</form>
		</c:if>

	<c:if test="${ empty cartItems}">
		<div align="center">
			你的购物车空空如也！<br>
            <img src="/view/images/car.jpg" height="300px" width="300px">
		</div>
		</c:if>

	<!--底部-->
		<div class="bar-wrapper">
			<div class="bar-right">
				<div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
				<div class="totalMoney">共计: <strong class="total_text">0.00</strong></div>
				<div class="calBtn"><a onclick="checkFoods()">结算</a></div>
			</div>								<!-- myForm.submit()  -->
		</div>

</section>

<script src="/view/js/jquery.min.js"></script>
<script src="/view/js/carts.js"></script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</body>
</html>
