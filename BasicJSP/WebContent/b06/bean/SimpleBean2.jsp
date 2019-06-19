<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id = "test" class="b06.bean.SimpleBean2"/>
	<jsp:setProperty name = "test" property = "message" value="java server page"/>
	
	<h1>간단한 빈 두 번째 페이지</h1>
	
	<jsp:getProperty name="test" property = "message"/>
</body>
</html>