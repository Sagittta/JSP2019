<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#ffffcc">
	<%@	page import = "java.util.*" %>
	<%@	page import = "java.sql.*" %>
	
	<%	request.setCharacterEncoding("utf-8"); %>
	
	<%	
		String id = (String)session.getAttribute("id");
		String pwd = request.getParameter("pwd");
		
		//debug
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
			String sql = "SELECT pwd FROM tblregister WHERE id = ?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				String rPwd = rs.getString("pwd");
				
				//Debug
				System.out.println(rPwd);
				
				if (pwd.equals(rPwd)) {
					sql = "DELETE FROM tblregister WHERE pwd = ?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, pwd);
					
					pstmt.executeUpdate();
					
					
					str = "회원 탈퇴 완료입니다.";
				} else {
					System.out.println("회원 탈퇴 실패입니다.");
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
	
	<div align="center">
		<%=	str %>
	</div>
</body>
</html>