<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body bgcolor="#ffffcc">
<div align="center">
	<h3>로그인</h3>
	
	<form method = "post" action="loginPro_2417.jsp">
		아이디 <input type="text" name="id"><p/>
		비밀번호 <input type="text" name="pwd"><p/>
		<input type="submit" value="로그인">
	</form>
	<input type="button" value="회원가입" onclick="location.href='member_2417.jsp'">
</div>
</body>
</html>