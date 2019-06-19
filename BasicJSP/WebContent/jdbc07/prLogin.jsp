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
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		System.out.println(id + "\t" + pwd);
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String str = "";
		try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
			String dbId = "root";
			String dbPass = "mirim2";
			
			Class.forName("org.gjt.mm.mysql.Driver");
			
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			String sql = "SELECT id, pwd FROM practice WHERE id = ?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				String rId = rs.getString("id");
				String rPwd = rs.getString("pwd");
				
				//Debug
				System.out.println(rId + "\t" + rPwd);
				
				if (id.equals(rId) && pwd.equals(rPwd)) {
					str = "로그인되었습니다. " + rId + "님 환영합니다.";
					rs.close();
				}
				
			}
			
		} catch(Exception e) {
			e.printStackTrace();
			str = "Error Occurs.";
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException sqle) {}
			}
			if (conn != null) {
				try {
					pstmt.close();
				} catch(SQLException sqle) {}
			}
		}
		
	%>
	
	<%=	str %>
	
</body>
</html>