<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 페이지</title>
</head>
<body>	
	<%	request.setCharacterEncoding("UTF-8");
	
		String id = (String)session.getAttribute("idKey");		//세션에 저장되어 있는 애트리뷰트를 가져오기 때문에 getAttribute()사용함.
		String season = request.getParameter("season");
		String fruit = request.getParameter("fruit");
		
		if (id != null) {
	%>
			<h1>Session Example1</h1>
	
			<b><%=	id %></b>님이 좋아하시는 계절과 과일은<p>
			<b><%=	season %></b>과 <b><%=	fruit %></b> 입니다.<p>
			세션ID : <%=	session.getId() %><p>
			세션 유지 시간 : <%=	session.getMaxInactiveInterval() %>초
		
	<%	
			session.invalidate();		//무효화 시키는 메소드.
		} else {
			out.println("세션의 시간이 경과를 하였거나 다른 이유로 연결되지 않았습니다.");
		}
	%>
	
</body>
</html>