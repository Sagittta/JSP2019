<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	
		Enumeration<String> en = config.getInitParameterNames();
		String headerName="";
		String headerValue="";
		
		while (en.hasMoreElements()) {
			headerName = en.nextElement();
			headerValue = config.getInitParameter(headerName);
			out.println(headerName + " : " + headerValue + "<br>");
		}
	%>
</body>
</html>