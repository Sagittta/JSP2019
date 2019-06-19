<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현식 연습</title>
</head>
<body>
	<%	String[] str = {"JSP", "JAVA", "ANDROID", "HTML5"};
		int i = (int)(Math.random()*4);%>
	<%=	str[i] %> (이)가 재미있다.
</body>
</html>