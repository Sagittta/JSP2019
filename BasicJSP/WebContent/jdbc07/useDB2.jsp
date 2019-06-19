<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@	page import="java.util.*" %>
	<%@	page import="java.sql.*" %>
	
	<%	
		String id = "", pwd = "", name = "", num1 = "", num2 = "", email = "", phone = "", zipcode = "", address = "", job = "";
		int counter = 0;
		
		Class.forName("org.gjt.mm.mysql.Driver");		//드라이버 네임 주기
		Connection conn = null;			//DB와 연결
		Statement stmt = null;			//DB의 스트링 전송
		ResultSet rs = null;			//SELECT 사용, UPDATE나 INSERT는 필요x
		
		//DB 핸들링은 try~catch문으로 사용
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "mirim2");		//디비 링크 걸기(링크 외우기)
			stmt = conn.createStatement();		//Statement 생성 conn 이용. query문 연결
			String sql = "select id, name from tblRegister";
			rs = stmt.executeQuery(sql);
			//rs = stmt.executeQuery("select * from tblRegister");		//질의 실행 결과를 Register stmt 이용
	%>
	
	<h2>JSP에서 데이터베이스 연동 예제</h2><br/>
	<h3>회원정보</h3>
	<table border = "1">
		<tr>
			<td><strong>ID</strong></td>
			<td><strong>NAME</strong></td>
		</tr>
		
	<% 
		if (rs != null) {
			while (rs.next()) {
				id = rs.getString("id");
				name = rs.getString("name");
	%>
		<tr>
			<td><%=	id %></td>
			<td><%=	name %></td>
		</tr>
		
	<% 
				counter++;
			}	//end while
		}	//end if
	%>
	</table>
	<br/>
		total records : <%=	counter %>
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