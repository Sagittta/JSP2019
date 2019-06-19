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
	
	<jsp:useBean id = "memberBean" class="b06.bean.MemberBean">
		<jsp:setProperty name="memberBean" property="*"/>
	</jsp:useBean>
	
	<table border="1" cellpadding="0" cellspacing="0" align="center">
		<tr>
			<td colspan="2">
				<jsp:getProperty name="memberBean" property="name"/> 회원님이 작성하신 내용입니다. 확인해 주세요.
			</td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><jsp:getProperty name="memberBean" property="id"/></td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td><jsp:getProperty name="memberBean" property="pw"/></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><jsp:getProperty name="memberBean" property="name"/></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><jsp:getProperty name="memberBean" property="birth"/></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><jsp:getProperty name="memberBean" property="mail"/></td>
		</tr>
	</table>
</body>
</html>