<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page pageEncoding="UTF-8"%>
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
    function checkInfo(myUid){
        if(myUid == undefined || myUid ==null || myUid=="") {
            alert("未登录，不能进行此操作")
            return false;
        }else{
            return true;
        }
    }

    // 注册效验
    function checkUsername1(){
        //获取账号
        var username=$.trim($("#username1").val());
        var span=document.getElementById("Spanusername1");

        if( username=="" || username==null){    //账号是否为空
            span.innerHTML="非空";
            span.style.color="red";
            return false;
        }else{
            $.post("/account/checkUsername",{'username':username}, function(data) {
                if(data>0){
                    span.innerHTML = "  该用户名已经注册 X";
                    span.style.color = "red";
                }else{
                    span.innerHTML = "  可以使用√";
                    span.style.color = "green";
                }
            });
        }
        return true;
    }

    function checkPwd1(){
        var pwd=$.trim($("#password1").val());
        var span=document.getElementById("Spanpassword1");

        if(pwd=="" || pwd==null){
            span.innerHTML="非空";
            span.style.color="red";
            return false;
        }else{
            span.innerHTML="";
        }
        return true;
    }
    <!--      下面 是登录效验     -->
    // 登录效验
    function checkUsername(){
        //获取账号
        var username=$.trim($("#username").val());
        var span=document.getElementById("Spanusername");

        if( username=="" || username==null){    //账号是否为空
            span.innerHTML="非空";
            span.style.color="red";
            return false;
        }else{
            span.innerHTML="";
        }
        return true;
    }

    function checkPwd(){
        var pwd=$.trim($("#password").val());
        var span=document.getElementById("Spanpassword");
        if(pwd=="" || pwd==null){
            span.innerHTML="非空";
            span.style.color="red";
            return false;
        }else{
            span.innerHTML="";
        }
        return true;
    }

    <!--  注册   -->
    function  checkRegisters() {
        if(checkUsername1()&&checkPwd1()){
            var params = $("#create-account_form").serialize();
            $.ajax({
                url:'/account/register',
                data:params,
                dataType:'html',
                error:function(){
                    alert("请求出错")
                },
                success:function(data){
                    if(data==0){  //  失败
                        alert("该用户名已经注册过")
                    }else if(data ==1){  // 成功
                        alert("注册成功")
                        $("#username1").val("")
                        $("#password1").val("")
                        $("#tel").val("")
                    }
                },
                type:'post'
            });
        }
        return false;
    }

    <!--  登录  -->
    function  loginAjax() {
        if(checkUsername()&&checkPwd()){
            var params = $("#login_form").serialize();
            $.ajax({
                url:'/account/login',
                data:params,
                dataType:'html',
                error:function(){
                    alert("请求出错")
                },
                success:function(data){

                    if(data==0){  //  失败
                        alert("用户名或密码错误")

                        $("#password").val("")
                    }else if(data ==1){  // 成功
                        window.location.reload();
                    }
                },
                type:'post'
            });
        }
        return false;
    }

</script>


<section id="top">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <p class="contact-action"><i class="fa fa-phone-square"></i>欢迎来到糕点之家: <strong>欢迎 ${customerInfo.uname} &nbsp;到来</strong></p>
            </div>

            <div class="col-md-4 clearfix">
                <ul class="login-cart">
                    <li>
                        <a data-toggle="modal" data-target="#myModal" href="#">
                            <i class="fa fa-user"></i>
                            登录
                        </a>
                    </li>
                    <li>
                        <div class="cart dropdown">
                            <a  href="/cart/showMyCart?uid=${customerInfo.id}" onclick="return checkInfo(${customerInfo.id})"><i class="fa fa-shopping-cart"></i>购物车</a>
                        </div>
                    </li>
                    <li>
                        <a href="/customer/ShowCustomerInfo?id=${customerInfo.id}" onclick="return checkInfo(${customerInfo.id})"><i class="fa fa-shopping-cart"></i>个人信息</a>
                    <li>
                        <a href="/order/showAllOrders?uid=${customerInfo.id}" onclick="return checkInfo(${customerInfo.id})"><i class="fa fa-shopping-cart"></i>订单</a>
                    </li>
                </ul>
            </div>
        </div> <!-- End Of /.row -->
    </div>	<!-- End Of /.Container -->

    <!-- MODAL Start
        ================================================== -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">Introduce Yourself</h4>
                </div>
                <div class="modal-body clearfix">
                    <!-- 注册  -->
                    <form action="/account/register" method="post" id="create-account_form" class="std">
                        <fieldset>
                            <h3>创建你的账户</h3>
                            <div class="form_content clearfix">
                                <div id="Spanusername1"></div>
                                <p class="text">
										<span>
											<input placeholder="账号"  type="text" id="username1" name="username" onblur="checkUsername1()" value=""  class="account_input">
					                   </span>
                                </p>
                                <p class="text">
									 	<span>
											<input placeholder="密码"  type="text" id="password1" name="password" value="" onblur="checkPwd1()" class="account_input">
                                            <span id="Spanpassword1"></span>
                                        </span>
                                </p>
                                <p class="text">
									 	<span>
											<input placeholder="手机号码"  type="text" id="tel" name="tel" value="" class="account_input">
					                  	</span>
                                </p>
                                <p >
                                    <button class="btn btn-primary" onclick="return checkRegisters()">注册</button>
                                </p>
                            </div>
                        </fieldset>
                    </form>

                    <!-- 登录 -->
                    <form action="/account/login" method="post" id="login_form" class="std">
                        <fieldset>
                            <h3>已有账号?</h3>
                            <div class="form_content clearfix">
                                <p class="text">
                                    <span><input placeholder="账号" type="text" id="username" name="username" value="" onblur="checkUsername()" class="account_input"></span>
                                    <span id="Spanusername"></span>
                                </p>
                                <p class="text">
                                    <span><input placeholder="密码" type="password" id="password" name="password" value="" onblur="checkPwd()" class="account_input"></span>
                                    <span id="Spanpassword"></span>
                                </p>
                                <p class="lost_password">
                                    <a href="#popab-password-reset" class="popab-password-link">忘记密码?</a>
                                </p>
                                <p class="submit">
                                    <button class="btn btn-success" onclick="return loginAjax()">登录</button>
                                </p>
                            </div>
                        </fieldset>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</section>  <!-- End of /Section -->

<!-- LOGO Start
================================================== -->

<header>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <a href="#">
                    <img src="/view/images/logo.png" alt="logo">
                </a>
            </div>	<!-- End of /.col-md-12 -->
        </div>	<!-- End of /.row -->
    </div>	<!-- End of /.container -->
</header> <!-- End of /Header -->
