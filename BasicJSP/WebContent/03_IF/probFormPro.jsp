<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 누굴까?</title>
</head>
<body>
	<%	request.setCharacterEncoding("utf-8"); %>
	<%	String name = request.getParameter("name");
		int number = Integer.parseInt(request.getParameter("num"));
		int m = Integer.parseInt(request.getParameter("major"));
		if (m == 1) {
			out.println(name + "은 디자인 학과 학번은 " + number + "입니다.");
		} else if (m == 2) {
			out.println(name + "은 뉴미디어 솔루션 학과 학번은 " + number + "입니다.");
		} else if (m == 3) {
			out.println(name + "은 SW 학과 학번은 " + number + "입니다.");
		} %>
</body>
</html>