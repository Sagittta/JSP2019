<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="FFFFCC">
	<%@	page import="java.util.*" %>
	<%@	page import="java.sql.*" %>
	
	<%	String id = (String)session.getAttribute("id"); %>
	<%	
		String name = "", num1 = "", num2 = "", email = "", phone = "", zipcode = "", address = "", job = "";
		int counter = 0;
		
		Class.forName("org.gjt.mm.mysql.Driver");
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "mirim2");
			stmt = conn.createStatement();		//Statement 생성
			rs = stmt.executeQuery("select * from tblRegister");		//질의 실행 결과를 Register
			
			if (rs != null) {
				while (rs.next()) {
					name = rs.getString("name");
					if (name == null)
						name = " ";
					num1 = rs.getString("num1");
					if (num1 == null)
						num1 = " ";
					num2 = rs.getString("num2");
					if (num2 == null)
						num2 = " ";
					email = rs.getString("email");
					if (email == null)
						email = " ";
					phone = rs.getString("phone");
					if (phone == null)
						phone = " ";
					zipcode = rs.getString("zipcode");
					if (zipcode == null)
						zipcode = " ";
					address = rs.getString("address");
					if (address == null)
						address = " ";
					job = rs.getString("job");
					if (job == null)
						job = " ";
				}
			}

	%>
	
	<form method="post" action="updatePro_2417.jsp">
		<table border=1>
			<tr>
				<td>id</td>
				<td><%=	id %></td>
			</tr>
			<tr>
				<td>name</td>
				<td><%=	name %></td>
			</tr>
			<tr>
				<td>주민번호</td>
				<td><%=	num1 %> - <%=	num2 %></td>
			</tr>
			<tr>
				<td>email</td>
				<td><input type="text" name="email" value="<%=	email %>"></td>
			</tr>
			<tr>
				<td>phone</td>
				<td><input type="text" name="phone" value="<%=	phone %>"></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><input type="text" name="zipcode" value="<%=	zipcode %>"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address" value="<%=	address %>"></td>
			</tr>
			<tr>
				<td>직업</td>
				<td><input type="text" name="job" value="<%=	job %>"></td>
			</tr>
		</table>
		<input type="submit" value="수정">
		<input type="reset" value="취소">
	</form>
	<% 
		} catch (SQLException sqlException) {
			System.out.println("sql exception");
		} catch (Exception exception) {
			System.out.println("exception");
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException ex) {
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (Exception ex) {
				}
			}
		}
	%>
</body>
</html>