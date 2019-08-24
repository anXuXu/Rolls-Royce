<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/5
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib prefix="s" uri="/struts-tags" %>--%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>双边栏选择框</title>

    <!-- 需要引用的CSS -->
    <link rel="stylesheet" href=<%=path+"/css/bootstrap.css"%>>
    <link rel="stylesheet" href=<%=path+"/font-awesome/css/font-awesome.css"%> >
    <link rel="stylesheet" type="text/css" href=<%=path+"/css/doublebox-bootstrap.css"%> />
    <style>
        .ue-container {
            width: 80%;
            margin: 0 auto;
            margin-top: 3%;
            padding: 20px 40px;
            border: 1px solid #ddd;
            background: #fff;
        }
    </style>
    <!-- Toastr style -->
    <link rel="stylesheet" href=<%=path+"/css/plugins/toastr/toastr.min.css"%> >

    <!-- Gritter -->
    <link rel="stylesheet" href=<%=path+"/js/plugins/gritter/jquery.gritter.css"%> >

    <link rel="stylesheet" href=<%=path+"/css/animate.css"%>>
    <link rel="stylesheet" href=<%=path+"/css/style.css"%>>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- 页面结构 -->
<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>权限管理</h2>
        <span>职业：</span>
        <select id="occupations" style='width: 100px'>
<%--            <c:if test="${!empty(cardype)}">--%>
<%--                <option value="${cardype}">${cardype}</option>--%>
<%--            </c:if>--%>
            <option value="">请选择你需要选择的职业</option>
    <option value="1">司机</option>
<%--            <c:if test="${!empty(listHashMap.occupation)}">--%>
<%--                <c:forEach items = "${listHashMap.occupation}" step = "1" var = "i">--%>
<%--                    <c:if test="${cardype ne i.occupation_Name}">--%>
<%--                        <option value="${i.occupation_Id}">${i.occupation_Name}</option>--%>
<%--                    </c:if>--%>
<%--                </c:forEach>--%>
<%--            </c:if>--%>
        </select>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">Home</a>
            </li>
            <li>
                <a>Tables</a>
            </li>
            <li class="active">
                <strong>Data Tables</strong>
            </li>
        </ol>
    </div>
    <div class="col-lg-2">

    </div>
</div>
<div class="ue-container">
    <select multiple="multiple" size="10" name="doublebox" class="demo">
    </select>
</div>
<!-- 需要引用的JS -->
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src=<%=path+"/js/bootstrap.min.js"%>></script>
<script type="text/javascript" src=<%=path+"/js/doublebox-bootstrap.js"%>></script>
<script type="text/javascript" src=<%=path+"/js/util.js"%>></script>
<script type="text/javascript" src=<%=path+"/js/adminrole.js"%>></script>
</body>
</html>
