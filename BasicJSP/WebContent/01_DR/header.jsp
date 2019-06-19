<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header 입니다.</title>
</head>
<body>
	<%!
		int pageCount = 0;
		void addCount() {
			pageCount++;
		}
	%>
	
	<%	addCount(); %>
	
	<center>
		<p> 이 페이지 방문 횟수는 <%= pageCount %> 번 입니다. </p>
	</center>
</body>
</html>