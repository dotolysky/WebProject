package size;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class MemberDatabase {
	private static final String JDBC_DRIVER = "org.gjt.mm.mysql.Driver";
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/size";
	private static final String USER = "root";
	private static final String PASSWD = "rla0540";
	
	private Connection con = null;
	private Statement stmt = null;
	
	public MemberDatabase() {
		try {
			Class.forName(JDBC_DRIVER);
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	public void connect() {
		try {
			con = DriverManager.getConnection(JDBC_URL, USER, PASSWD);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void disconnect() {
		if(stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} 
		if(con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public ArrayList<MemberEntity> getMemberList() {	
		connect();
		ArrayList<MemberEntity> list = new ArrayList<MemberEntity>();

		String SQL = "select * from member";
		try {
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(SQL);
			while (rs.next()) {		
				MemberEntity mem = new MemberEntity();

				mem.setId ( rs.getString("id") );
				mem.setPasswd ( rs.getString("passwd") );
				mem.setNickname(rs.getString("nickname"));
				mem.setHeight(rs.getFloat("height"));
				mem.setWeight(rs.getFloat("weight"));
				mem.setCharacteristic(rs.getString("characteristic"));
				list.add(mem);
			}
			rs.close();			
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		finally {
			disconnect();
		}
		return list;
	}
}
