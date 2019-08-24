<%--
  Created by IntelliJ IDEA.
  User: HuangTianQing
  Date: 2019/8/23
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>

<html>

<head>
    <title>智慧公交系统</title>

    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <script type="application/x-javascript">
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false); function hideURLbar(){
            window.scrollTo(0,1);
        } </script>
    <link rel="stylesheet" href="${path}css/backlogin.css" type="text/css" media="all">
</head>
<body>
<h1>智慧公交系统后台</h1>
<div class="container w3layouts agileits">
    <div class="login w3layouts agileits">
        <h2 style="text-align:center">登 录</h2>
        <form action="admin/hello.do" method="post">
            <input type="text" Name="Userame" placeholder="用户名" required="">
            <input type="password" Name="Password" placeholder="密码" required="">
        <ul class="tick w3layouts agileits">
            <li>
                <input type="checkbox" id="brand1" value="">
                <label for="brand1"><span></span>记住密码</label>
            </li>
        </ul>
        <div class="send-button w3layouts agileits">
                <input style="display:block;margin:0 auto" type="submit" value="登 录" >
        </div>
        </form>
        <div class="social-icons w3layouts agileits">
            <p>- 其他方式登录 -</p>
            <ul>
                <li class="qq"><a href="#"> <span class="icons w3layouts agileits"></span> <span class="text w3layouts agileits">QQ</span></a></li>
                <li class="weixin w3ls"><a href="#"> <span class="icons w3layouts"></span> <span class="text w3layouts agileits">微信</span></a></li>
                <li class="weibo aits"><a href="#"> <span class="icons agileits"></span> <span class="text w3layouts agileits">微博</span></a></li>
                <div class="clear"> </div>
            </ul>
        </div>
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
</div>
<div class="footer w3layouts agileits">
    <p>传 一 科 技 有 限 公 司 &copy; 2019</p>
</div>
</body>
<!-- //Body -->

</html>