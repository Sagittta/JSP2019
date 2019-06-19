<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import = "java.util.*"
    buffer = "16kb"
    autoFlush = "true"
    isThreadSafe = "true"%>
	<!-- buffer : JSP 출력 크기를 kb로 지정. 기본값 8kb. none으로 지정하면 출력 버퍼 미사용. 즉시 ㅇ출력 내용을 브라우져로 전달 -->
    <!-- autoFlush : jsp 내용 브라우저 출력 전 버퍼에 다 채워질 경우 저장된 내용 어떻게 처리할 것인지 결정. true : 버퍼가 다 찬 경우 자동으로 비움. 기본값 . buffer가 none인 경우 false로 지정 -->
    <!-- isThreadSafe : 하나의 jsp 페이지가 동시에 여러 브라우져 요청을 처리할 수 있는지 여부 설정. true : 동시 처리. false : 요청 순서대로 처리 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>page 디렉티브 연습 buffer 속성</title>
</head>
<body>
	<h1>Directive Example</h1>
	<% Date date = new Date(); %>
	<p>현재의 날짜와 시간은 </p>
	<%=date.toLocaleString() %>
</body>
</html>