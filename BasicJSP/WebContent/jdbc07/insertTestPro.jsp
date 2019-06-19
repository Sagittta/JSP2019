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
		String name = request.getParameter("name");
		
		//Debuging
		System.out.println("id: " + id + ", pwd : " + pwd + ", name : " + name);
		
		Class.forName("org.gjt.mm.mysql.Driver");
		Connection conn = null;
		PreparedStatement pstmt = null;		//더 빠름 이거 쓰세요.
		
		String str = "";
		try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
			String dbId = "root";
			String dbPass = "mirim2";
			
			Class.forName("org.gjt.mm.mysql.Driver");
			
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			String sql = "INSERT INTO tblregister(id, pwd, name) VALUES(?, ?, ?)";		//VALUES(?, ?, ?)는 외부 아구먼트를 가져오겠다는 뜻이다.
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			
			pstmt.executeUpdate();
			
			str = "Register 테이블에 새로운 레코드를 추가했습니다.";
		} catch (Exception e) {
			e.printStackTrace();
			str = "Register 테이블에 새로운 레코드를 추가하지 못했습니다.";
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