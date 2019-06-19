<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@	page import = "java.util.*" %>
	<%@	page import = "java.sql.*" %>

	<%	request.setCharacterEncoding("utf-8"); %>
	
	<%	
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String pwd2 = request.getParameter("pwd2");
		String loc = request.getParameter("loc");
		
		//Debug
		System.out.println(name + "\t" + id + "\t" + pwd + "\t" + pwd2 + "\t" + loc);
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String str = "";
		
		try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
			String dbId = "root";
			String dbPass = "mirim2";
			
			Class.forName("org.gjt.mm.mysql.Driver");
			
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			String sql = "Insert INTO practice(id, name, pwd, pwd2, loc) VALUES(?, ?, ?, ?, ?)";
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, id);
				pstmt.setString(2, name);
				pstmt.setString(3, pwd);
				pstmt.setString(4, pwd2);
				pstmt.setString(5, loc);
				
				pstmt.executeUpdate();
				str = "회원가입이 완료되었습니다.\n" + name + "님 환영합니다.";
			
		} catch (Exception e) {
			e.printStackTrace();
			str = "Error Occurs";
		} finally {
			if (pstmt != null) {
				try {	pstmt.close();
				} catch (SQLException sqle) {}
			}
			if (conn != null) {
				try {	pstmt.close();
				} catch (SQLException sqle) {}
			}
		}
	
	%>
	
	<%=	str %>

</body>
</html>