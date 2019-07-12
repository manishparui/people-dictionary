package pd.java.utilities.sqlite;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Driver;

public class SQLiteConnector {
	
	public static String url = "jdbc:sqlite:";
	public static Connection con =null;
	
	public static Connection Connector(String dbName) {
		try {
			Driver d = new Driver();
			DriverManager.registerDriver(d);
			con = DriverManager.getConnection(url+dbName);
			return con;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
}
