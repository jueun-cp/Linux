<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="style.css">
	</head>
	<body>
		<div id="wrap">
		<form action="checkLogin.jsp" method='post'>
			<div id="label">ID</div>
			<div><input type="text" name ="id" placeholder="입력해주세요""/></div>
			<div id="label">Password</div>
			<div id="pw"><input type="text" name ="pw" placeholder="입력해주세요"/></div>
			
			<input type="submit" name ="submit" value="로그인"/>			
		</form>
		<div id="button">
			<a href="memberRegister.jsp">회원가입</a> <a href="findId.jsp">ID 찾기</a> <a href="findPwd.jsp">패스워드 찾기</a>
		</div>
	</div>
	</body>
</html>