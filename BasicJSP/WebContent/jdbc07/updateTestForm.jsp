<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2><b>tblregister 테이블 레코드 수정</b></h2>
	
	<form method="post" action="updateTestPro.jsp">
		아이디 <input type="text" name="id"><p/>
		암호 <input type="text" name="pwd"><p/>
		변경할 이름 <input type="text" name="name"><p/>
		<input type="submit" value="입력완료">
	</form>
</body>
</html>