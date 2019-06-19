<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="insertTestPro.jsp">
		아이디 : <input type="text" name="id"><p/>		<!-- not null -->
		패스워드 : <input type="text" name="pwd"><p/>	<!-- not null -->
		이름 : <input type="text" name="name"><p/>
		<input type="submit" value="입력">
	</form>
</body>
</html>