<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼 연습1-2</title>
</head>
<body>
	<h2>입력받은 숫자가 10보다 작거나 같은지 비교</h2>
	<%	String strNumber = request.getParameter("number");	//request.getParameter 짱 중요
		int number = Integer.parseInt(strNumber);	//String => int
		if(number <= 10) {%>
		입력받은 숫자는 <%=	number %> 입니다.
	<%	} %>
</body>
</html>