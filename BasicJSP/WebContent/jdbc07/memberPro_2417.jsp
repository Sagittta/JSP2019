<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script lang="javascript">
</script>

</head>
<body bgcolor="#ffffcc">
	<%@	page import = "java.util.*" %>
	<%@	page import = "java.sql.*" %>
	
	<%	
		request.setCharacterEncoding("UTF-8");
	%>
	
	<% 
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String zipcode = request.getParameter("zipcode");
		String address = request.getParameter("address");
		String job = request.getParameter("job");
		
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
			
			String sql = "INSERT INTO tblRegister(id, pwd, name, num1, num2, email, phone, zipcode, address, job) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			pstmt.setString(4, num1);
			pstmt.setString(5, num2);
			pstmt.setString(6, email);
			pstmt.setString(7, phone);
			pstmt.setString(8, zipcode);
			pstmt.setString(9, address);
			pstmt.setString(10, job);
			
			rs = pstmt.executeQuery();
				
			if (rs.next()) {
				String rId = rs.getString("id");
				
				System.out.println(rId);
				
				if (id.equals(rId)) {
					System.out.println("중복된 아이디입니다.");
				} else {
					str = "회원가입 완료되었습니다.";
				}
			}
		}catch(Exception e) {
			str = "Error Occurs.";
			e.printStackTrace();
		} finally {
			if (pstmt != null) {
				try {
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
	
	<p/>
	<input type="button" value="로긴하기" onclick="location.href='login_2417.jsp'">

</body>
</html>