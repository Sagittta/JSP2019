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
		
		//Debuging
		System.out.println("id : " + id + "pwd" + pwd);

		Connection conn = null;
		PreparedStatement pstmt =null;
		ResultSet rs = null;
		
		String str = "";
		try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
			String dbId = "root";
			String dbPass = "mirim2";
			
			Class.forName("org.gjt.mm.mysql.Driver");
			
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			String sql = "SELECT id, pwd FROM tblregister WHERE id = ?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				String rId = rs.getString("id");
				String rPwd = rs.getString("pwd");
				
				//Debuging
				System.out.println(rId);
				System.out.println(rPwd);
				
				if (id.equals(rId) && pwd.equals(rPwd)) {
					sql = "DELETE FROM tblregister WHERE id = ?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, id);
					
					pstmt.executeUpdate();
					
					str = "삭제 완료입니다.";
				}
			} 
			
		} catch (Exception e) {
			e.printStackTrace();
			str = "Register 테이블 name을 변경하지 못했습니다.";
		}  finally {
			if (rs != null) {
				try {
					rs.close();
				} catch(SQLException sqle) {}
			}
			if (pstmt != null) {
				try	{
					pstmt.close();
				} catch (SQLException sqle) {}
			}
			if (conn != null) {
				try {
					pstmt.close();
				} catch (SQLException sqle) {}
			}
		}
		
	%>
	
	<%=	str %>
</body>
</html>