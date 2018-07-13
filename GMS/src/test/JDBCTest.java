package test;
import java.sql.*;
import java.util.*;
public class JDBCTest {
	public static void main(String[] args)  {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver"); 
								//객체를 호출했는데 리턴받는값이없음. 여기서부터는 오라클의세상
								//클래스파일이 없는 인스턴스. 동적클래스. 리플렉션
								//팩토리패턴??? 
			Connection conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe",
					"KAN","1253");
			//String sql = "SELECT * FROM TAB";
			Statement stmt = conn.createStatement(); //오라클에 맞는 문서양식.
			ResultSet rs = stmt.executeQuery("SELECT * FROM TAB"); //sql자리 
			List<String> list = new ArrayList<>();
			int i= 0;
			while(rs.next()) { //회전수만큼 돌아라 
				list.add(rs.getString("Tname"));
			}
			System.out.println("테이블" + list);
		} catch (SQLException e) { //sql문이 잘못되면 이쪽
			// TODO Auto-generated catch block
			System.out.println("에러 발생");
			e.printStackTrace();
		} catch (ClassNotFoundException e) { //class가 없으면 이쪽 
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
