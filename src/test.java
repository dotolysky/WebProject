import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;


public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {

			Connection con = null;



			con = DriverManager.getConnection("jdbc:mysql://localhost",

					"root", "rla0540");



			java.sql.Statement st = null;

			ResultSet rs = null;

			st = con.createStatement();

			rs = st.executeQuery("SHOW DATABASES");



			if (st.execute("SHOW DATABASES")) {

				rs = st.getResultSet();

			}



			while (rs.next()) {

				String str = rs.getNString(1);

				System.out.println(str);

			}

		} catch (SQLException sqex) {

			System.out.println("SQLException: " + sqex.getMessage());

			System.out.println("SQLState: " + sqex.getSQLState());

		}

	}

}
