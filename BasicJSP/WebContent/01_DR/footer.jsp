<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*"%>
<%@	page info = "Copyright @2019" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer 입니다.</title>
</head>
<body><center>
	<%	Date date = new Date(); %>
	현재의 날짜와 시간은 <p>
	<%=	date.toLocaleString() %><p>
<!-- 	<%=getServletInfo()  %>		 -->
	<p>Copyright @2019</p></center>
</body>
</html>