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
		String id = (String)session.getAttribute("id");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String zipcode = request.getParameter("zipcode");
		String address = request.getParameter("address");
		String job = request.getParameter("job");
		
		//Debuging
		System.out.println("email : " + email + "/phone : " + phone + "/zipcode : " + zipcode + "/address : " + address + "/job : " + job);

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
			String sql = "UPDATE tblregister SET email = ?, phone = ?, zipcode = ?, address = ?, job = ? WHERE id = ?";
			pstmt = conn.prepareStatement(sql);
				
			pstmt.setString(1, email);
			pstmt.setString(2, phone);
			pstmt.setString(3, zipcode);
			pstmt.setString(4, address);
			pstmt.setString(5, job);
			pstmt.setString(6, id);
				
			pstmt.executeUpdate();
				
			str = "수정완료입니다.";
			
		} catch (Exception e) {
			e.printStackTrace();
			str = "Register 테이블 name을 변경하지 못했습니다.";
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
	
	<%= id %> <%= str %>
</body>
</html>