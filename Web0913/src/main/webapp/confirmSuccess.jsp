<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script>
 	function testFunc(){
 		var usrId = document.getElementById("inStr").value;
 		
 		location.href="./checkId.jsp?id="+usrId;
 	}
 </script>
 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Web0909 : 회원가입</title>
		<link href="register.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div class="wrap">
			<div class="logo">
				<h1><a><img src="./img/web0909_logo.png" alt="Girl in a jacket"></a></h1>
			</div>
			<div class="content">
				<form action="registerData.jsp" method="POST">
					<label for="id">아이디</label>
				  	<input type="text" name="id"  id ='inStr' value="">
				  	<div id="con_r">사용가능한 아이디입니다.
				  	<a href='javascript:testFunc()'>중복체크</a>
				  	</div>
				  	<label for="pw">비밀번호</label>
				  	<input type="password" name="pw" value="">
				  	<label for="name">이름</label>
				  	<input type="text" name="name" value="">
				  	<label for="name">주소</label>
				  	<input type="text" name="addr" value="">
				  	<label for="name">휴대폰</label>
				  	<input type="text" name="tel" value="">
				  	<label for="name">성별</label>
				  	
				  	<input id="gen" type="radio" name="gen" value="mal" checked>
				  	<div class="gender"><span>남성<span></div>
				  	<input id="gen" type="radio" name="gen" value="fem">
				  	<div class="gender"><span>여성<span></div>
				  	
				  	<input id="submit" type="submit" value="가입하기">
				</form>
			
			</div>
			
		</div>
		
	</body>
</html>