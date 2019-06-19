<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="400" border="1">
		<tr>
			<td colspan="2"><jsp:include page="top.jsp" flush="false"/></td>
		</tr>
		<tr>
			<td width="100"><jsp:include page="left.jsp" flush="false"/></td>
			<td width="300"><p><center>레이아웃</center><p></td>
		</tr>
		<tr>
			<td colspan="2"><jsp:include page="bottom.jsp" flush="false"/></td>
		</tr>
	</table>
</body>
</html>