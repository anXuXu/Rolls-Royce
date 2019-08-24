<%--
  Created by IntelliJ IDEA.
  User: HuangTianQing
  Date: 2019/8/23
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>智慧公交系统后台管理</title>
    <link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath%>font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="<%=basePath%>css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link href="<%=basePath%>js/plugins/gritter/jquery.gritter.css" rel="stylesheet">
    <link href="<%=basePath%>css/animate.css" rel="stylesheet">
    <link href="<%=basePath%>css/style.css" rel="stylesheet">

</head>

<body>
<div id="wrapper">
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="<%=basePath%>images/a2.jpg" />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">许 亿平</strong>
                             </span> <span class="text-muted text-xs block">Art Director <b class="caret"></b></span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a href="#">个人信息</a></li>
                            <li><a href="#">联系人</a></li>
                            <li><a href="#">邮箱</a></li>
                            <li class="divider"></li>
                            <li><a href="<%=basePath%>backlogin.jsp">Logout</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">Bus+</div>
                </li>
                <li>
                    <a href="#"><i class="fa fa-edit"></i>
                        <span class="nav-label">基础权限管理模块</span>
                        <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="#">角色管理</a></li>
                        <li><a href="#">权限配置</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-edit"></i>
                        <span class="nav-label">系统管理</span>
                        <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="#">角色管理</a></li>
                        <li><a href="#">菜单管理</a></li>
                        <li><a href="#">用户管理</a></li>
                        <li><a href="#">乘客管理</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-files-o"></i>
                        <span class="nav-label">城市配置</span>
                        <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="#">城市信息</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-files-o"></i>
                        <span class="nav-label">城市站点配置</span>
                        <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="#">城市站点信息</a></li>
                        <li><a href="#">当前显示站点</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-files-o"></i>
                        <span class="nav-label">城市线路配置</span>
                        <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="#">配置城市线路</a></li>
                        <li><a href="#">配置线路站点</a></li>
                        <li><a href="#">配置往返线路</a></li>
                        <li><a href="#">班车班次时刻表配置</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-files-o"></i>
                        <span class="nav-label">车辆管理</span>
                        <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="#">车辆信息配置</a></li>
                        <li><a href="#">车辆维修查看</a></li>
                        <li><a href="#">车辆全天在用时间轴</a></li>
                        <li><a href="#">车辆排班</a></li>
                        <li><a href="#">城市公交运行鸟瞰图</a></li>
                        <li><a href="#">停站车辆查看</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-files-o"></i>
                        <span class="nav-label">司机管理</span>
                        <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="#">司机排班</a></li>
                        <li><a href="#">出站确认</a></li>
                        <li><a href="#">司机工资</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-files-o"></i>
                        <span class="nav-label">车辆时间管理</span>
                        <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="#">班车班次时刻表配置</a></li>
                        <li><a href="#">工作量明细</a></li>
                        <li><a href="#">发车时刻</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-files-o"></i>
                        <span class="nav-label">统计</span>
                        <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="#">收银统计</a></li>
                        <li><a href="#">高峰期统计</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-files-o"></i>
                        <span class="nav-label">模拟数据</span>
                        <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="#">模拟行车</a></li>
                        <li><a href="#">模拟乘车信息</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-files-o"></i>
                        <span class="nav-label">合作商配置</span>
                        <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="#">配置合作商</a></li>
                        <li><a href="#">广告配置</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-files-o"></i>
                        <span class="nav-label">公告新闻</span>
                        <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="#">公告新闻</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-files-o"></i>
                        <span class="nav-label">客服</span>
                        <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="#">意见处理</a></li>
                        <li><a href="#">定制公交意见</a></li>
                        <li><a href="#">在线客服</a></li>
                    </ul>
                </li>
            </ul>

        </div>
    </nav>

    <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <ul class="nav navbar-top-links navbar-right">
                    <li>
                        <span class="m-r-sm text-muted welcome-message">欢迎【超管】许亿平 登录.</span>
                    </li>
                    <li>
                        <a href="<%=basePath%>backlogin.jsp">
                            <i class="fa fa-sign-out"></i>  Logout
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="row  border-bottom white-bg dashboard-header">
            <div class="col-sm-6">
                <div class="flot-chart dashboard-chart">
                    <div class="flot-chart-content" id="flot-dashboard-chart"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Mainly scripts -->
<script src="<%=basePath%>js/jquery-2.1.1.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<script src="<%=basePath%>js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="<%=basePath%>js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<!-- Flot -->
<script src="<%=basePath%>js/plugins/flot/jquery.flot.js"></script>
<script src="<%=basePath%>js/plugins/flot/jquery.flot.tooltip.min.js"></script>
<script src="<%=basePath%>js/plugins/flot/jquery.flot.spline.js"></script>
<script src="<%=basePath%>js/plugins/flot/jquery.flot.resize.js"></script>
<script src="<%=basePath%>js/plugins/flot/jquery.flot.pie.js"></script>
<!-- Peity -->
<script src="<%=basePath%>js/plugins/peity/jquery.peity.min.js"></script>
<script src="<%=basePath%>js/demo/peity-demo.js"></script>
<!-- Custom and plugin javascript -->
<script src="<%=basePath%>js/inspinia.js"></script>
<script src="<%=basePath%>js/plugins/pace/pace.min.js"></script>
<!-- jQuery UI -->
<script src="<%=basePath%>js/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- GITTER -->
<script src="<%=basePath%>js/plugins/gritter/jquery.gritter.min.js"></script>
<!-- Sparkline -->
<script src="<%=basePath%>js/plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- Sparkline demo data  -->
<script src="<%=basePath%>js/demo/sparkline-demo.js"></script>
<!-- ChartJS-->
<script src="<%=basePath%>js/plugins/chartJs/Chart.min.js"></script>
<!-- Toastr -->
<script src="<%=basePath%>js/plugins/toastr/toastr.min.js"></script>
<script>
    $(document).ready(function() {
        setTimeout(function() {
            toastr.options = {
                closeButton: true,
                progressBar: true,
                showMethod: 'slideDown',
                timeOut: 4000
            };
            toastr.success('今日特价猪肉1斤1金', '欢迎光临');

        }, 1300);
    });
</script>
</body>
</html>
