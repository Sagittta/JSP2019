<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestTest</title>
</head>
<body>
	<%@	page import = "java.util.Enumeration" %>
	<%
		String protocol = request.getProtocol();			//http : 웹의 기본 프로토콜. 웹서비스 사용 중.
		String serverName = request.getServerName();		//서버의 도메인 이름 반환 (ex. naver.com)
		String queryString = request.getQueryString();		//QUERY문장 반환. 이건 자바라서 사용 x
		String method = request.getMethod();				//GET, POST, PUT 반환. 기본값이 GET
		String uri = request.getRequestURI();				//url 뒷 부분. BasicJSP부터 출력 ---
		String remoteHost = request.getRemoteHost();		//client의 호스트 이름 반환. (localHost)
		String remoteAddr = request.getRemoteAddr();		//내 PC 웹서버 아이피 반환. (127.0.0.1)		알아서 해줌
		int serverPort = request.getServerPort();			//포트.(8080포트, 톰캣이 정해줌.) (원래는 기본이 80포트인데 개발버전)
		String contextPath = request.getContextPath();		//BasicJSP/04_IMP/requestTest.jsp -> WebContent와 기타 등등을 생략하게 해주는 것.
		//getHeader(name):헤더 네임을 알아야 함. -> name 을 몰라 ! -> Enumeration getHeaderNames():하나씩 대입해서 쓰는 것.
		
		out.println("protocol : " + protocol + "<br>");
		out.println("serverName : " + serverName + "<br>");
		out.println("queryString : " + queryString + "<br>");
		out.println("method : " + method + "<br>");
		out.println("uri : " + uri + "<br>");
		out.println("remoteHost : " + remoteHost + "<br>");
		out.println("remoteAddr : " + remoteAddr + "<br>");
		out.println("serverPort : " + serverPort + "<br>");
		out.println("contextPath : " + contextPath + "<br>");
	%>
</body>
</html>