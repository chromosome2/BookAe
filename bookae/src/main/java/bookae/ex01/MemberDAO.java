package bookae.ex01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private DataSource dataFactory;
	
	public MemberDAO() {
		try {
			Context ctx=new InitialContext();
			Context envContext=(Context)ctx.lookup("java:/comp/env");
			dataFactory=(DataSource)envContext.lookup("jdbc/oracle");
		}catch(Exception e){
			System.out.println("오라클 연결 안됨");
		}
	}
	
	//ID중복 체크
	public boolean overlappedID(String id) {
		boolean result=false;
		try {
			conn=dataFactory.getConnection();
			String query="select decode(count(*), 1, 'true', 'false') as result";
			query+=" from bamembertbl where id=?";
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, id);
			ResultSet rs=pstmt.executeQuery();
			rs.next();//getString을 위해, 값을 읽어오기위해서 next작업을 해줌.
			result=Boolean.parseBoolean(rs.getString("result"));
			pstmt.close();
			conn.close();
		}catch(Exception e) {
			System.out.println("DB 처리중 에러발생!");
		}
		return result;
	}
}
