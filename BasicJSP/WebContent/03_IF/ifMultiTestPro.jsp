<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>잼따아</title>
</head>
<body>
	<%	request.setCharacterEncoding("utf-8");%>
	<%	String name = request.getParameter("name");
		String local = request.getParameter("local");
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String localNum = " ";
		
		if (local.equals("서울")) {
			localNum = "02";
		} else if (local.equals("경기")) {
			localNum = "031";
		} else if (local.equals("강원")) {
			localNum = "033";
		}
		//out.println("<b>" + name + "</b>" + " 님의 전화번호는 " + localNum + "-" + tel1 + "-" + tel2 +  "입니다.");%>
		<b><%=	name %></b> 님의 전화번호는 <%=	localNum %>-<%=	tel1 %>-<%=	tel2 %>입니다.
</body>
</html>