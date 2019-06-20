<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#ffffcc">
	<form method="post" action="memberPro_2417.jsp">
		<table border = "1" width="600" align="center">
			<tr>
				<td colspan="2"><b>회원가입</b></td>
			</tr>
			<tr>
				<td width="20%">아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="text" name="pwd"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>주민번호</td>
				<td>
					<input type="text" name="num1"> ex)830815 
					- 
					<input type="text" name="num2"> ex)1234567
				</td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><input type="text" name="zipcode"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td>직업</td>
				<td><input type="text" name="job"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="회원가입">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="다시쓰기">
				</td>
			</tr>
		</table>
	</form>

</body>
</html>