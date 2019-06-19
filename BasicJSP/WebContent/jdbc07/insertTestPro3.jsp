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
		String id = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		String email = request.getParameter("email");
		
		//Debuging
		System.out.println("id: " + id + ", pwd : " + pwd + ", num1 : " + num1 + ", num2 : " + num2 + ", email : " + email);
		
		Class.forName("org.gjt.mm.mysql.Driver");
		Connection conn = null;
		PreparedStatement pstmt = null;		//더 빠름 이거 쓰세요.			//PreparedStatement라는 클래스에서 prepareStatement()라는 메소드 사용함.
		
		String str = "";
		try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
			String dbId = "root";
			String dbPass = "mirim2";
			
			Class.forName("org.gjt.mm.mysql.Driver");
			
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			String sql = "INSERT INTO tblregister(id, pwd, num1, num2, email) VALUES(?, ?, ?)";		//VALUES(?, ?, ?)는 외부 아구먼트를 가져오겠다는 뜻이다.
			pstmt = conn.prepareStatement(sql);			//connection에서 가져올 때 prepareStatement라는 메소드를 사용함.
			
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, num1);
			pstmt.setString(4, num2);
			pstmt.setString(5, email);
			
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
	
	<form method="post" action="useDB.jsp">
		<input type="submit" value="데이터 조회">
	</form>
	
</body>
</html>