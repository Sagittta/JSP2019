<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="memberPro.jsp">
	<table border="1" cellpadding="0" cellspacing="0" align="center">
		<tr>
			<td colspan="3" align="center"><b>회원가입</b></td>
		</tr>
		<tr>
			<td align="center">아이디</td>
			<td align="center"><input type="text" name="id"></td>
			<td align="center">아이디를 적어 주세요.</td>
		</tr>
		<tr>
			<td align="center">패스워드</td>
			<td align="center"><input type="text" name="pw"></td>
			<td align="center">패스워드를 적어주세요.</td>
		</tr>
		<tr>
			<td align="center">패스워드 확인</td>
			<td align="center"><input type="text" name="pwCheck"></td>
			<td align="center">패스워드를 확인합니다.</td>
		</tr>
		<tr>
			<td align="center">이름</td>
			<td align="center"><input type="text" name="name"></td>
			<td align="center">고객 실명을 적어주세요.</td>
		</tr>
		<tr>
			<td align="center">생년월일</td>
			<td align="center"><input type="text" name="birth"></td>
			<td align="center">생년월일을 적어주세요.</td>
		</tr>
		<tr>
			<td align="center">이메일</td>
			<td align="center"><input type="text" name="mail"></td>
			<td align="center">이메일을 적어주세요.
		</tr>
		<tr>
			<td colspan="3" align="center">
				<input type="submit" value="회원가입">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value="다시쓰기">
			</td>
		</tr>
	</table>
	</form>
</body>
</html>