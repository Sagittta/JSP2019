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
		String cId = request.getParameter("cId");
		
		//Debuging
		System.out.println("id : " + id + "\tpwd" + pwd + "\tcId" + cId);

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
					sql = "UPDATE tblregister SET id = ? WHERE id = ?";
					pstmt = conn.prepareStatement(sql);
					
					pstmt.setString(1, cId);
					pstmt.setString(2, id);
					
					pstmt.executeUpdate();
					
					str = "Register 테이블 id를 변경하였습니다.";
				}
			} 
			
		} catch (Exception e) {
			e.printStackTrace();
			str = "Register 테이블 id를 변경하지 못했습니다.";
		}  finally {
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
	
	<form method="post" action="useDB.jsp">
		<input type="submit" value="조회">
	</form>
	
</body>
</html>