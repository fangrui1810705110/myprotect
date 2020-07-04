<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%-- <base href="<%=basePath%>"> --%><!--  -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学生信息管理系统</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script src="js/cloud.js" type="text/javascript"></script>

<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script> 

</head>

<body style="background-color:#df7611; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">


    <div class="loginbox loginbox1">
    <form action="login.do" method="post">
    	<input type="hidden" name="oper" value="login" />
    	<ul>
    	<li></li>
	    <li><input name="username" type="text" placeholder="用户名" class="loginuser"  /></li>
	    <li><input name="password" type="password" placeholder="密码" class="loginpwd"  /></li>
	   <li class="yzm">
	    <span><input name="" type="text" value="验证码" onclick="JavaScript:this.value=''"/></span><cite>X3D5S</cite> 
	    </li> 
	    
 
  <li><input type="submit" value="登录"    /> 
	   <label><a href="/web/main/main.jsp">登录</a></label> 
	  <label><a href="/web/user/reg.jsp">注册</a></label></li> 
	  
	   </ul>
    </form>
    
    </div>
    
    </div>
    
    
    <div class="loginbm">学生信息管理系统  </div>
	
    
</body>

</html>
