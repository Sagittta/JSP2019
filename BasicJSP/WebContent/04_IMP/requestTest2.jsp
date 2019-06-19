<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	page import = "java.util.Enumeration" %>
<%	
	String names[] = {"프로토콜 이름", "서버 이름", "Method 방식", "컨텍스트 경로", "URI", "접속한 클라이언트 IP"};
	String values[] = {request.getProtocol(), request.getServerName(), request.getMethod(),
					request.getContextPath(), request.getRequestURI(), request.getRemoteAddr()};
	//names[]와 values[]는 1대1 대응이다.
	
	Enumeration<String> en = request.getHeaderNames();
	String headerName = "";
	String headerValue = "";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestTest2</title>
</head>
<body>
	<h2>웹 브라우저와 웹 서버 정보 표시</h2>
	<%	
		for (int i = 0; i <names.length; i++) {
			out.println(names[i] + " : " + values[i] + "<br>");
		}
	%>
	<h2>헤더의 정보 표시</h2>
	<%	
		while(en.hasMoreElements()) {							//요소가 있어, 없어 ? 하나씩
			headerName = en.nextElement();						//다음 요소 가져옴
			headerValue = request.getHeader(headerName);		//header name을 Argument로 가져옴. value로 가져옴.
			//시험 출제됨 주의.
			out.println(headerName + ":" + headerValue + "<br>");
		}
	%>
</body>
</html>