<%@ page language="java" import="java.util.*,com.bjsxt.pojo.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
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
    <li><a href="#">作业查询</a></li>
    </ul>
    </div>
    
     <%  
        try {  
            Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
            String url = "jdbc:mysql://localhost:3306/demo"; //数据库名
            String username = "root";  //数据库用户名
            String password = "123456";  //数据库用户密码
            Connection conn = DriverManager.getConnection(url, username, password);  //连接状态

            if(conn != null){  
                              out.print("<br />");            
                Statement stmt = null;  
                ResultSet rs = null;  
                String sql = "SELECT classID,homework FROM user_homework where homework >0 ;";  //查询语句
                stmt = conn.createStatement();  
                rs = stmt.executeQuery(sql);  
                out.print("查询结果：");  
                out.print("<br />");  
                out.println("当前未交作业：");  
            
                while (rs.next()) {  
               
                 out.println("科目："+rs.getString("classID")+"作业数 "+rs.getString("homework")); //将查询结果输出  
            }  
            
            
            }
            else{  
                out.print("连接失败！");  
            }  
        }catch (Exception e) {        
            out.print("数据库连接异常！");  
        }  
%>   
</body>

</html>
