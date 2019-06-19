<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import = "java.sql.Timestamp" %>
    <%@ page import = "java.text.SimpleDateFormat" %>			<!-- page import 사용 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>page 디렉티브 연습 import 속성</title>
</head>
<body>
	<h2>page 디렉티브 연습 import 속성</h2>
	<%
		Timestamp now = new Timestamp(System.currentTimeMillis());		//객체 생성 동시에 메소드 불러옴
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String strDate = format.format(now);
	%>
	오늘은 <%=strDate %> 입니다.
</body>
</html>