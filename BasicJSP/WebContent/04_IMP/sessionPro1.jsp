<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Session 예제</h2>
	<%	
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		session.setAttribute("idKey", id);				//id값을 세션에 저장함. id는 test1에서 쓰였기 때문에 세션프로2에서는 전전페이지 정보라서 처리가 불가능함.-->세션에 저장.
		session.setMaxInactiveInterval(60*5);
	%>
	
	<form method="post" action="sessionPro2.jsp">
		1. 가장 좋아하는 계절은? <br>
		
		<input type="radio" name="season" value="봄">봄
		<input type="radio" name="season" value="여름">여름
		<input type="radio" name="season" value="가을">가을
		<input type="radio" name="season" value="겨울">겨울<p>

<!-- 	
		<input type="radio" name="season" value=1>봄
		<input type="radio" name="season" value=2>여름
		<input type="radio" name="season" value=3>가을
		<input type="radio" name="season" value=4>겨울<p>
 -->	
	
		2. 가장 좋아하는 과일은?<br>
		<input type="radio" name="fruit" value="수박">수박
		<input type="radio" name="fruit" value="멜론">멜론
		<input type="radio" name="fruit" value="사과">사과
		<input type="radio" name="fruit" value="오렌지">오렌지<br>
	
		<input type="submit" value="결과보기">
	</form>
</body>
</html>