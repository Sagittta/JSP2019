<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id = "test" class="b06.bean.SimpleBean"/>	<!-- id="객체 변수명" class="빈.클래스명" -->
	<jsp:setProperty name ="test" property="message" value="빈을 쉽게 정복하자!"/>
	
	<h1>간단한 빈 프로그래밍</h1>
	
	Message: <jsp:getProperty name="test" property="message"/>
</body>
</html>