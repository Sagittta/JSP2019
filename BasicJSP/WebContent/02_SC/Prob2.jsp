<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>
</head>
<body>
	<%!	int i = 2;
		int j = 1;%>			<!-- 변수, 메소드 생성 및 호출은 선언문으로 -->
	<%	for(i = 2; i <= 9; i++) {
			for(j = 1; j <= 9; j++) { %>	<!-- 자바 코드는 스크립트릿 안에 있음. -->
				<%= i %> x <%= j %> = <%= i*j %><br>	<!-- 출력은 표현식으로 -->
		<%	}%>
		<br>
	<% 	} %>
</body>
</html>