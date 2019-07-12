package pd.java.utilities.sqlite;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class SQLiteCreateTable {
	static Connection con = null;
	static PreparedStatement ps = null;
	
	public static void createNewTable(String dbName, String createTableSql) {    
        con = SQLiteConnector.Connector(dbName);
        try {
			ps = con.prepareStatement(createTableSql);
			ps.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
    }
}
