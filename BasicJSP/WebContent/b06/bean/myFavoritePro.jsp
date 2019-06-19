<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	request.setCharacterEncoding("utf-8"); %>

	<jsp:useBean id = "favoriteBean" class="b06.bean.FavoriteBean">
		<jsp:setProperty name="favoriteBean" property="*"/>
		<jsp:setProperty name="favoriteBean" property="color"/>
		<jsp:setProperty name="favoriteBean" property="flower"/>
		<jsp:setProperty name="favoriteBean" property="music"/>
	</jsp:useBean>

	당신이 좋아하는 색깔은 <jsp:getProperty name="favoriteBean" property="color"/> 입니다.<br>
	당신이 좋아하는 꽃은 <jsp:getProperty name="favoriteBean" property="flower"/> 입니다.<br>
	당신이 좋아하는 음악은 <jsp:getProperty name="favoriteBean" property="music"/> 입니다.<br>
</body>
</html>