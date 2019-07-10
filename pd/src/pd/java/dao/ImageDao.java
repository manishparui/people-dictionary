package pd.java.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import pd.java.utilities.MySQLConnector;

public class ImageDao {
	Connection con = null;
	Statement st = null;
	ResultSet rs = null;
	PreparedStatement ps = null;
	
	String retrieve_sql = "SELECT `image` FROM `pd`.`image` WHERE `idProfile` = ? and status = ? LIMIT 1";
	String retrieveAll_sql = "SELECT `image` FROM `pd`.`image` WHERE `idProfile` = ? and status = ?";
	String insert_sql = "INSERT INTO `pd`.`image` (`idProfile`, `status`, `image`) VALUES (?,?,?)";
	String insertPP_sql = "INSERT INTO `pd`.`image` (`idProfile`, `status`, `image`) VALUES (?,?,?)";
	
	//retrieve
	public ResultSet retrieveProfileImage(String idProfile) {
		try {
			con = MySQLConnector.Connector();
			ps = con.prepareStatement(retrieve_sql);
			ps.setString(1, idProfile);
			ps.setString(2, "p");
			rs = ps.executeQuery();
		} catch (SQLException e) {
				e.printStackTrace();
		}
		return rs;
	}
	
	public ResultSet retrieveImage(String idProfile, String type) {
		try {
			con = MySQLConnector.Connector();
			ps = con.prepareStatement(retrieveAll_sql);
			ps.setString(1, idProfile);
			ps.setString(2, type);
			rs = ps.executeQuery();
		} catch (SQLException e) {
				e.printStackTrace();
		} 
		return rs;
	}
	
	
	
	
	//insert
	public int insertData (String IdProfile, String status, InputStream image) {
		con = MySQLConnector.Connector();
		int response = 0;
		try {
			ps = con.prepareStatement(insertPP_sql);
			ps.setString(1, IdProfile);
			ps.setString(2, status);
			if(image != null) {
				ps.setBlob(3, image);
			} else {
				System.out.println("Image not found");
			}
			response = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return response;
	}
	
	//insert profile image
	public int insertData (String IdProfile, InputStream image) {
		con = MySQLConnector.Connector();
		int response = 0;
		try {
			ps = con.prepareStatement(insertPP_sql);
			ps.setString(1, IdProfile);
			ps.setString(2, "p");
			if(image != null) {
				ps.setBlob(3, image);
			} else {
				System.out.println("Image not found");
			}
			response = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return response;
	}
	
	
}
