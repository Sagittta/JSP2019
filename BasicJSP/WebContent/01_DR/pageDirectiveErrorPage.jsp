<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    errorPage = "pageDirectiveIsErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>page 디렉티브 에러페이지 예제</title>
</head>
<body>
	<%	int one = 1;
		int zero = 0;	%>
	<h1>Directive ErrorPage</h1>
	<p>one과 zero의 사칙연산 </p>
	one+zero = <%= one+zero %>
	one-zero = <%= one-zero %>
	one*zero = <%= one*zero %>
	one/zero = <%= one/zero %>
</body>
</html>