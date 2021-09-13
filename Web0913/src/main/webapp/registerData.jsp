<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

 <%
 	response.setCharacterEncoding("UTF-8");
 	request.setCharacterEncoding("UTF-8");
 
 %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> save form</h1>

	<%
	String  jdbcDriver = "com.mysql.jdbc.Driver";
	//여기 바꿔줘야함
	String dbUr1 = "jdbc:mysql://localhost/db01?useSSL=false";
	String username = "root";
	String password = "1216";
	
	String usrID = request.getParameter("id");
	String usrPW = request.getParameter("pw");
	String usrName = request.getParameter("name");
	String usrAddr = request.getParameter("addr");
	String usrTel = request.getParameter("tel");
	String usrGen = request.getParameter("gen");
		
	Connection con = null;
	java.sql.Statement st = null;
	ResultSet rs = null;
	Class.forName(jdbcDriver);//.newInstance();
	con=DriverManager.getConnection(dbUr1, username, password);
	st = con.createStatement();
	
	//System.out.println(usrName);
	st.executeUpdate("insert into user values('"+usrID+"', '"+usrPW+"', '"+usrName+"', '"+usrAddr+"','"+usrTel+"','"+usrGen+"')");
	
	//System.out.println("데이터 삽입 완료");
	con.close();
	
	response.sendRedirect("login.jsp");
	%>