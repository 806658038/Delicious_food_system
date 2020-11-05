<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
	<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.5" charset="utf-8">
    <title>个人信息设置</title>

    <link href="/view/css/main.css" rel="stylesheet" type="text/css" />
    <link href="/view/css/common.css" rel="stylesheet" type="text/css" />

        <script src="/view/js/jquery.min.js" type="text/javascript"></script>


    <style>
        .content{
            margin-top: 100px;
            margin-left: 280px;

        }
        .content_1 tr{
            height: 50px;
        }
        .content_1 td{
            width: 80px;
        }

      	.content_2 tr{
      		height: 30px;
      	}
      	
      	.content_2 td{
      		width: 60px;
      	}

        .content_3 tr{
            height: 50px;
        }
        .content_3 td{
            width: 100px;
        }  
        
    </style>

</head>
<body >

<script>
    //校验密码
    function checkPwd() {
        var pwd=$.trim($("#pwd1").val());
        var span = document.getElementById("pwdSpan");

        if (pwd == "" || pwd == null) {
            span.innerHTML = "密码不能为空";
            span.style.color = "red";
            return false;
        } else {
            span.innerHTML = "密码√";
            span.style.color = "green";
            return true;
        }
    }

    //校验确认密码
    function checkPwd2() {
        var pwd=$.trim($("#pwd1").val());
        var pwd2=$.trim($("#pwd2").val());
        var span = document.getElementById("pwd2Span");

        if (pwd2 ==""|| pwd2 == null) {
            span.innerHTML = "密码不能为空";
            span.style.color = "red";
            return false;
        } else if (pwd == pwd2) {
            span.innerHTML = "确认密码√";
            span.style.color = "green";
            return true;
        } else {
            span.innerHTML = "两次密码不一致";
            span.style.color = "red";
            return false;
        }
        checkPwd2(); //二次校验
    }



</script>


<jsp:include page="head2.jsp"/>

<!--标题区域 start-->
<div class="top_tit">
    <span class="top_tit_left"></span>
    <span class="top_tit_center">我的信息</span>
</div>
<!--标题区域 end-->
<div class="height2"></div>
<!--内容区域 start-->
<div class="Z_con2_2">
    <div class="F_wd_top_con2">
        <div class="F_wd_top_con2_l" id="wrapper">
            <div>
                <ul class="sy">
                    <li class="current">个人资料</li>
                    <li>完善我的信息</li>
                    <li>密码设置</li>
                    <li><a href="/view/index.jsp">返回主页</a></li>
                </ul>
            </div>
        </div>

        <div class="F_wd_top_con2_r" id="wrapper1">
            <div class="content" >
                <div class ="by" style="display: block">
                   <table class="content_1">
                       <tr>
                            <td>用户名:</td>
                            <td>${customerInfo.uname}</td>
                           <td>&nbsp;</td>

                           <td>年龄:</td>
                           <td>${customerInfo.age}</td>
                       </tr>

                       <tr>
                           <td>性别:</td>
                           <td>${customerInfo.sex}</td>
                           <td>&nbsp;</td>
                           <td>电话:</td>
                           <td>${customerInfo.tel}</td>
                        </tr>
                       <tr>
                           <td>地址:</td>
                           <td>${customerInfo.address}</td>
                       </tr>
                   </table>
                </div>
            </div>
            <div class="content">
                <div class ="by">
                    <form action="/customer/updCustomerInfo" method="post">
                        <input type="hidden" id="id" name="id" value="${customerInfo.id}">
                    <table class="content_2">
                        <tr>
                            <td>
                                	用户名
                            </td>
                            <td>
                                <input type="text" name="uname" id="uname" value="${customerInfo.uname}">
                            </td>
                            <td width="50px">&nbsp;</td>
                            <td>
                                	年龄
                            </td>
                            <td>
                                <input type="text" name="age" id="age" value="${customerInfo.age}">
                            </td>
                        </tr>
                        <tr>
                        	
                        </tr>
                        <tr>
                            <td>
                               	 性别
                            </td>
                            <td>
                                <input type="text" name="sex" id="sex" value="${customerInfo.sex}">
                            </td>
                             <td width="50px">&nbsp;</td>
                            <td>
                                	电话
                            </td>
                            <td>
                                <input type="text" name="tel" id="tel" value="${customerInfo.tel}">
                            </td>
                        </tr>
                        <tr>

                        </tr>
                        <tr>
                            <td>
                                	地址
                            </td>
                            <td>
                                <input type="text" name="address" id="address" value="${customerInfo.address}">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5" align="center" height="80px">
                                <input type="submit" value="提交">
                            </td>
                        </tr>
                    </table>
                    </form>
                </div>
            </div>

            <div class="content">
                <div class="by">
                    <form action="/account/updPwd" method="post" >
                        <input type="hidden" id="uid" name="uid" value="${customerInfo.id}">
                    <table class="content_3" >
                        <tr>
                            <td>
                                <label >旧密码</label>
                            </td>
                            <td>
                                <input type="oldPwd" name="oldPwd" id="oldPassword">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label >新密码</label>
                            </td>
                            <td width="250px">
                                <input type="password" name="pwd1" id="pwd1" onblur="checkPwd()">
                                <span id="pwdSpan">&nbsp;&nbsp;</span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label > 确认新密码</label>
                            </td>
                            <td width="250px">
                                <input type="password" name="pwd2" id="pwd2" onblur="checkPwd2()">
                                <span id="pwd2Span">&nbsp;&nbsp;</span>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <input type="submit" value="提交">
                            </td>
                        </tr>
                    </table>

                    </form>
                </div>
            </div>

        </div>
    </div>
</div>

<!--内容区域 end-->
<script src="/view/js/common.js" type="text/javascript"></script>


</body>
</html>

