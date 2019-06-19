<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    <%@ page info = "미림여자정보과학고등학교 2학년 4반 17번 전은정" %>
    <%@ page import = "java.sql.Timestamp" %>
    <%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>전은정 프로필</title>
</head>
<body>
	<%= getServletInfo() %>
	<%
		Timestamp now = new Timestamp(System.currentTimeMillis());
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String strDate = format.format(now);
	%><p>
	오늘 날짜는 <%=strDate %> 입니다.
</body>
</html>