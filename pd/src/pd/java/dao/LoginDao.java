package pd.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import pd.java.utilities.MySQLConnector;


public class LoginDao {
	Connection con = null;
	Statement st = null;
	ResultSet rs = null;
	PreparedStatement ps = null;
	
	String retrieve_sql = "SELECT * FROM pd.login WHERE uname = ? ";
	
	//retrieve
	public ResultSet retrieveData(String uname) {
		try {
			con = MySQLConnector.Connector();
			ps = con.prepareStatement(retrieve_sql);
			ps.setString(1, uname);
			rs = ps.executeQuery();
		} catch (SQLException e) {
				e.printStackTrace();
		}
		return rs;
	}
}
