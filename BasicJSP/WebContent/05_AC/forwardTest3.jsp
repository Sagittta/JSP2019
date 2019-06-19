<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	request.setCharacterEncoding("utf-8");
		
		String id="Mirim";
		String hobby="만화 보기";
	%>
	<h2>포워딩하는 페이지 forwardTest2.jsp입니다.</h2>
	<jsp:forward page="forwardToTest5.jsp">
		<jsp:param name="id" value="<%=	id %>"/>
		<jsp:param name="hobby" value="<%=	hobby %>"/>
	</jsp:forward>
</body>
</html>