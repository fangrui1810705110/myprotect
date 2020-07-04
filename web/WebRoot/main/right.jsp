<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="/web/main/right.jsp">首页</a></li>
    </ul>
    </div>
    
    <div class="mainindex">
    
    
    <div class="welinfo">
    <span><img src="images/sun.png" alt="天气" /></span>
    <b>张三您好，欢迎使用信息管理系统</b>
    <!-- <a href="/user/pwd.jsp">帐号设置</a> -->
    <a href="user/userInfo.jsp">帐号设置</a> 
    </div>
    
    <div class="welinfo">
    <span><img src="images/time.png" alt="时间" /></span>
  
   <div id="datetime">
    <script>
        setInterval("document.getElementById('datetime').innerHTML=new Date().toLocaleString();", 1000);
    </script>
</div>

    </div>
    
    <div class="xline"></div>
    
    <ul class="iconlist">
    
    <li><img src="images/ico01.png" /><p><a href="#">账号设置</a></p></li>
    <li><img src="images/ico02.png" /><p><a href="#">发布文章</a></p></li>
    <li><img src="images/ico03.png" /><p><a href="#">查询成绩</a></p></li>
    <li><img src="images/ico04.png" /><p><a href="#">提交作业</a></p></li>
    <li><img src="images/ico05.png" /><p><a href="#">文档管理</a></p></li>
    <li><img src="images/ico06.png" /><p><a href="#">课表查询</a></p></li> 
            
    </ul>
    
    <div class="ibox"><a class="ibtn"><img src="images/iadd.png" />添加新的快捷功能</a></div>
    
    <div class="xline"></div>
    <div class="box"></div>
    
    <div class="welinfo">
    <span><img src="images/dp.png" alt="提醒" /></span>
    <b>信息管理系统系统公告</b>
    </div>
    
    <ul class="infolist">
    <li><span>您还有作业未提交</span><a href="/web/user/homework.jsp" class="ibtn">提交作业</a></li>
    <li><span>期末成绩已公布</span><a href="/web/user/userMessage.jsp" class="ibtn">查询成绩</a></li>
    <li><span>您还有0项文档未接受</span><a class="ibtn">文档管理</a></li>
    </ul>
    
    <div class="xline"></div>
    
    <div class="uimakerinfo"><b>帮助</b></div>
    
    <ul class="umlist">
    <li><a href="#">如何发布文章</a></li>
    <li><a href="#">如何提交作业</a></li>
    <li><a href="#">如何查询成绩</a></li>
    <li><a href="#">后台用户设置</a></li>
    <li><a href="#">系统功能设置</a></li>
    </ul>
    
    
    </div>
    
    

</body>

</html>
