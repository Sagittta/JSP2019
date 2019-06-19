package jdbc07;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DriverTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Connection con;
		try {
			//static class와 static method. 선언 없이 사용 가능
			Class.forName("org.gjt.mm.mysql.Driver").newInstance();		//메모리에 올림.
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "mirim2");		//커넥션 인스턴스를 가져옴. getConnection("주소", "아이디", "비밀번호")
			System.out.println("Success");
		} catch (SQLException e) {
			System.out.println("SQLException : " + e);
		} catch (Exception e) {
			System.out.println("Exception : " + e);
		}
	}

}
