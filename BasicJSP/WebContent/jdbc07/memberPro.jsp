<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%@	page import = "java.util.*" %>
	<%@	page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	request.setCharacterEncoding("utf-8"); %>

	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String zipcode = request.getParameter("zipcode");
		String addr = request.getParameter("addr");
		String job = request.getParameter("job");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		String str = "";
		String s = "";
		
		try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
			String dbId = "root";
			String dbPass = "mirim2";
			
			Class.forName("org.gjt.mm.mysql.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			
			String sql = "INSERT INTO tblregister(id, pwd, name, num1, num2, email, phone, zipcode, address, job) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			pstmt.setString(4, num1);
			pstmt.setString(5, num2);
			pstmt.setString(6, email);
			pstmt.setString(7, phone);
			pstmt.setString(8, zipcode);
			pstmt.setString(9, addr);
			pstmt.setString(10, job);
			
			str = "회원가입 완료했습니다.";
			s = "success";
		} catch(Exception e) {
			e.printStackTrace();
			str = "회원가입 실패했습니다.";
			s = "fail";
		} finally {
			if (pstmt != null)
				try {	pstmt.close();
				} catch(SQLException sqle) {}
			if (conn != null)
				try {	pstmt.close();
				} catch(SQLException sqle) {}
		}
		
	%>
	
	<%=	str %>
	<%	
		if(s.equals("success")) {
	%>
			<form method="post" action="login.jsp">
				<input type="submit" value="로긴">
			</form>
	<% 
		}
	%>

</body>
</html>