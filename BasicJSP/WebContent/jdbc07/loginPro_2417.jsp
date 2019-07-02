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
		String id = request.getParameter("id");
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
			String sql = "SELECT id, pwd FROM tblregister WHERE id = ?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				String rId = rs.getString("id");
				String rPwd = rs.getString("pwd");
				
				//Debug
				System.out.println(rId + "\t" + rPwd);
				
				if (id.equals(rId) && pwd.equals(rPwd)) {
					str = rId + " 로긴 완료입니다.";

					session.setAttribute("id", id);
					session.setAttribute("pwd", pwd);
					
					rs.close();
				} else {
					System.out.println("잘못 입력하셨습니다.");
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
	
	
	<form method="post" action="update_2417.jsp">
		<input type="submit" value="회원정보수정">
	</form>
	<p/>
	<form method="post" action="delete_2417.jsp">
		<input type="submit" value="회원 탈퇴">
	</form>
	
	</div>
</body>
</html>