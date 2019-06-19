<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트</title>
</head>
<body>
	<h3>성명, 학번, 학과를 입력하세요</h3>
	<form method = "post" action = "probFormPro.jsp">
		성명<input type = "text" name = "name"><p>
		학번<input type = "text" name = "num"><p>
		학과(1: 디자인 2: 뉴미디어솔루션 3: SW)<input type = "text" name = "major"><p>
		<input type = "submit" value = "입력완료">
	</form>
</body>
</html>