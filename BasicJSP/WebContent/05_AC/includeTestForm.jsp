<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>include 액션태그</h2>
	<form method="post" action="includeTest.jsp">
		이름 <input type="text" name="name"><p>
		페이지 이름<input type="text" name="pageName" value="includedTest"><p>
		<input type="submit" value="입력 완료">
	</form>
</body>
</html>