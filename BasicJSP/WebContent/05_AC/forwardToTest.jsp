<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	
		String id = request.getParameter("id");
		String hobby = request.getParameter("hobby");
	%>
	ID는 <%=	id %><p>
	취미는 <%=	hobby %>
</body>
</html>