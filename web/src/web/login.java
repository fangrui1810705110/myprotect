package web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 // MySQL 8.0 以上版本 - JDBC 驱动名及数据库 URL
    public static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
//    static final String DB_URL = "jdbc:mysql://localhost:3306/web?serverTimezone=UTC";
    public static final String DB_URL = "jdbc:mysql://localhost:3306/demo";
    // 数据库的用户名与密码，需要根据自己的设置
    public static final String USER = "root";
    public static final String PASS = "123456";
    public static Connection conn = null;
    public static Statement stmt = null;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 // 注册 JDBC 驱动
        try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(DB_URL,USER,PASS);
			System.out.println(" 实例化Statement对象...");
	        stmt = conn.createStatement();
	        
	        //获取表单数据
	        response.setCharacterEncoding("gb2312");
			response.setContentType("text/html;charset=gb2312");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			String sql;
	        sql = "SELECT uname,pwd FROM t_user";
	        ResultSet rs = stmt.executeQuery(sql);
	        String name  = null;
            String pwd =null;
			while(rs.next()){
                // 通过字段检索
                 name  = rs.getString("uname");
                 pwd = rs.getString("pwd");
            }
	        if(pwd.equals(password)) {
	        	RequestDispatcher view;
	        	view = request.getRequestDispatcher("/web/main/main.jsp");
				view.forward(request, response);
	        }
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    
        
    
        // 执行查询
        
		
	}

}
