<%@ page language="java" import="java.util.*,com.bjsxt.pojo.*" pageEncoding="utf-8"%>
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

<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>


</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">个人信息</a></li>
    <li><a href="#">查看个人信息</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th>学期<i class="sort"></th>
        <th>英语</th>
        <th>物理</th>
        <th>数学</th>
        <th>计算机</th>
       
        </tr>
        </thead>
       
             <tbody> <td>2018-2019学年第一学期</td>     <td>75</td>     <td>80</td>    <td>75</td>   <td>90</td>  </tbody>
             <tbody> <td>2018-2019学年第二学期</td>     <td>70</td>     <td>70</td>    <td>85</td>   <td>80</td>  </tbody>
             <tbody> <td>2019-2020学年第一学期</td>     <td>75</td>     <td>90</td>    <td>75</td>   <td>85</td>  </tbody>
            <tbody> <td>2019-2020学年第二学期</td>      <td>80</td>     <td>80</td>    <td>90</td>   <td>80</td>  </tbody>
        <%-- <tbody>
        <tr>
        <td><%=((User)session.getAttribute("user")).getUid() %></td>
        <td><%=((User)session.getAttribute("user")).getUname() %></td>
        <td><%=((User)session.getAttribute("user")).getPwd() %></td>
        <%
        	String sex=((User)session.getAttribute("user")).getSex();
        	if("1".equals(sex)){
        %>
        <td>男</td>
        <%}else{ %>
        <td>女</td>
        <%}%>
        <td><%=((User)session.getAttribute("user")).getAge() %></td>
        <td><%=((User)session.getAttribute("user")).getBirth() %></td>
        </tr> 
        </tbody> --%>
        
    </table>
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    
    
    
    
    </div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>

</html>