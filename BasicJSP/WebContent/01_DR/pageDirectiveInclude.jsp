<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 디렉티브 연습</title>
</head>
<body>
	<h2>include 디렉티브 연습</h2>
	<%	String name = "Jeon"; %>
	<%@	include file = "pageDirectiveIncludeTop.jsp" %>포함하는 페이지 includeDirective.jsp 내용입니다. <p>
	<%@	include file = "pageDirectiveIncludeBottom.jsp" %>
</body>
</html>