<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Welcome</h2>

	<form method="post" action="prJoin.jsp">
		<table border = "1">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="pwd"></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="text" name="pwd2"></td>
			</tr>
			<tr>
				<td>지역</td>
				<td><input type="text" name="loc"></td>
			</tr>
		</table>
		<input type="submit" value="회원가입">
	</form>

</body>
</html>