<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
		String  jdbcDriver = "com.mysql.jdbc.Driver";
		//여기 바꿔줘야함
		String dbUr1 = "jdbc:mysql://localhost/db01?useSSL=false"; 
		String username = "root";
		String password = "1216";
		
		Connection con = null;
		java.sql.Statement st = null;
		ResultSet rs = null;
		Class.forName(jdbcDriver);//.newInstance();
		con=DriverManager.getConnection(dbUr1, username, password);
		st = con.createStatement();
		
		String usrID = request.getParameter("id");
		String usrPW = request.getParameter("pw");
		
		rs = st.executeQuery("select count(*) from user where id='"+usrID+"' and pw='"+usrPW+"'");
		rs.next();
		String gbn = rs.getString(1);
		
		con.close();
		
		if(gbn.equals("1"))
		{
			//로그인성공
			response.sendRedirect("loginSuccess.jsp");
		}
		else
		{
			//로그인실패
			response.sendRedirect("login.jsp");
		}
	
%>