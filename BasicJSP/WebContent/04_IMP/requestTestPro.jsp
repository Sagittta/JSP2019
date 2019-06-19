<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
</head>
<body>
	<%	request.setCharacterEncoding("utf-8"); %>
	
	<%	String num = request.getParameter("num");
		String name = request.getParameter("name");
		String grade = request.getParameter("grade");
		String subject = request.getParameter("subject");
	%>
	<h3>학생 정보</h3>
	<table border = 1>
		<tr align = "center">
			<td width = "150">학번</td>
			<td width = "150"><%=num %></td>
		</tr>
		<tr align = "center">
			<td width = "150">이름</td>
			<td width = "150"><%=name %></td>
		</tr>
		<tr align = "center">
			<td width = "150">학년</td>
			<td width = "150"><%=grade %> 학년</td>
		</tr>
		<tr align = "center">
			<td width = "150">선택 과목</td>
			<td width = "150"><%=subject %>을 선택함.</td>
		</tr>
	</table>
</body>
</html>