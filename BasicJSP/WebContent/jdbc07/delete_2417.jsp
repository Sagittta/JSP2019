<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#FFFFCC">

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
	
	<div align = "center">
	<br><br>
		<form method = "post" action = "deletePro1_2417.jsp">
			<table border = "1" width = "600">
				<tr>
					<td colspan = "3"><b>회원 정보</b></td>
				</tr>
				<tr>
					<td width = "20%">아이디</td>
					<td width = "50%"><%= id %></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><%=	name %></td>
				</tr>
				<tr>
					<td>주민등록번호</td>
					<td><%=	num1 %> - <%= num2 %></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><%= email %></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><%= phone %></td>
				</tr>
				<tr>
					<td>우편번호</td>
					<td><%= zipcode %></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><%= address %></td>
				</tr>
				<tr>
					<td>직업</td>
					<td><%= job %></td>
				</tr>
				<tr>
					<td colspan = "3" align = "center">
						<input type="submit" value="회원 탈퇴">
					</td>
				</tr>
			</table>
		</form>
	</div>
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