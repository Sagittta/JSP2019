<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#ffffcc">
	<div align="center">
	<br><br>
		<form method = "post" action = "memberPro.jsp">
			<table>
				<tr>
					<td colspan="3"><b>회원가입</b></td>
				</tr>
				<tr>
					<td width="20%">아이디</td>
					<td width="50%"><input name="id" size="15"></td>
				</tr>
				<tr>
					<td>패스워드</td>
					<td><input type="password" name="pwd" size="15"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input name="name" size="15"></td>
				</tr>
				<tr>
					<td>주민등록번호</td>
					<td><input name="num1" size="6"> ex)830815 - 
						<input name="num2" size="7"> ex)1234567</td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input name="email" size="30"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input name="phone" size="12"></td>
				</tr>
				<tr>
					<td>우편번호</td>
					<td><input name="zipcode" size="5"></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input name="address" size="45"></td>
				</tr>
				<tr>
					<td>직업</td>
					<td><input type="text" name="job"></td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						<input type="submit" value="회원가입">&nbsp;&nbsp;
						<input type="reset" value="다시쓰기">
					</td>
				</tr>
			</table>
		</form>
	</div>	
</body>
</html>