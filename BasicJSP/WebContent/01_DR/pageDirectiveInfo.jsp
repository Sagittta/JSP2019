<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>				<!-- contentType : 페이지 내용이 어떤 형태로 출력할 것인지 MIME 형식으로 알려줌
    										charset : 페이지 사용되는 문자 형식 / 기본 : ISO-8859 / 한글 : EUC-KR / 모든 문자 표현 : UTF-8 -->
    <%@ page info = "copyright by Jeon" %>			<!-- 페이지 설명해주는 문자열/ 내용, 길이 제한 없음 / 내용에 영향 주지 않음/ 제목을 붙이는 기능 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>page 디렉티브 연습 - info 속성</title>
</head>
<body>
	<h2>page 디렉티브 연습 - info 속성</h2>		<!-- 바로 웹페이지 -->
	<%=getServletInfo()  %>				<!-- 웹 컨테이너로 옮겨감 -->
</body>
</html>