package pd.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import pd.java.utilities.MySQLConnector;
import pd.java.utilities.CusConversion;

public class ProfileDao {
	Connection con = null;
	Statement st = null;
	ResultSet rs = null;
	PreparedStatement ps = null;
	
	String retrieve_sql = "SELECT * FROM pd.profile WHERE id = ? ";
	String retrieve_name = "SELECT id, name FROM pd.profile ORDER BY name ASC";
	String exists_sql = "SELECT COUNT(*) FROM pd.profile WHERE id = ?";
	String insert_sql = "INSERT INTO `pd`.`profile` (`name`, `otherName`, `dob`, `gender`, `nationality`, `fatherName`, `motherName`, `profession`, `presentWork`, `pastWork`, `education`, `address`, `phno`, `email`, `facebook`, `instagram`, `twiter`, `github`, `other`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	String lastInsertid_sql = "SELECT `id` from `pd`.`profile` ORDER BY id DESC LIMIT 1;";
	String update_sql = "UPDATE `pd`.`profile` SET `name` = ?, `otherName` = ?, `dob` = ?, `gender` = ?, `nationality` = ?, `fatherName` = ?, `motherName` = ?, `profession` = ?, `presentWork` = ?, `pastWork` = ?, `education` = ?, `address` = ?, `phno` = ?, `email` = ?, `facebook` = ?, `instagram` = ?, `twiter` = ?, `github` = ?, `other` = ? WHERE (`id` = ?)";
	
	//retrieve
	public ResultSet retrieveData(String id) {
		try {
			con = MySQLConnector.Connector();
			ps = con.prepareStatement(retrieve_sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
		} catch (SQLException e) {
				e.printStackTrace();
		}
		return rs;
	}
	
	//retrieve name
	public ResultSet retrieveNameAndId() {
		try {
			con = MySQLConnector.Connector();
			ps = con.prepareStatement(retrieve_name);
			rs = ps.executeQuery();
		} catch (SQLException e) {
				e.printStackTrace();
		}
		return rs;
	}
	
	//exists
	public boolean isExists(String id) {
		boolean existance = false;
		try {
			con = MySQLConnector.Connector();
			ps = con.prepareStatement(exists_sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while(rs.next()) {
				int x = rs.getInt(1);
				if(x == 1) {
					existance = true;
				} else {
					existance = false;
				}
				break;
			}
			rs.close();
		} catch (SQLException e) {
				e.printStackTrace();
		}
		return existance;
	}
	
	//insert
	public int insertData (String name, String otherName, String dob, String gender, String nationality, String fatherName, String motherName, String profession, String presentWork, String pastWork, String education, String address, String phno, String email, String facebook, String instagram, String twiter, String github, String other) {
		con = MySQLConnector.Connector();
		int id = 0;
		try {
			ps = con.prepareStatement(insert_sql);
			ps.setString(1, CusConversion.ToNA(name));
			ps.setString(2, CusConversion.ToNA(otherName));
			ps.setString(3, CusConversion.ToNA(dob));
			ps.setString(4, gender);
			ps.setString(5, CusConversion.ToNA(nationality));
			ps.setString(6, CusConversion.ToNA(fatherName));
			ps.setString(7, CusConversion.ToNA(motherName));
			ps.setString(8, CusConversion.ToNA(profession));
			ps.setString(9, CusConversion.ToNA(presentWork));
			ps.setString(10, CusConversion.ToNA(pastWork));
			ps.setString(11, CusConversion.ToNA(education));
			ps.setString(12, CusConversion.ToNA(address));
			ps.setString(13, CusConversion.ToNA(phno));
			ps.setString(14, CusConversion.ToNA(email));
			ps.setString(15, CusConversion.ToNA(facebook));
			ps.setString(16, CusConversion.ToNA(instagram));
			ps.setString(17, CusConversion.ToNA(twiter));
			ps.setString(18, CusConversion.ToNA(github));
			ps.setString(19, CusConversion.ToNA(other));
			ps.executeUpdate();
			
			ps = con.prepareStatement(lastInsertid_sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				id = rs.getInt(1);
				break;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return id;
	}
	
	//update
	public int updateData (String id, String name, String otherName, String dob, String gender, String nationality, String fatherName, String motherName, String profession, String presentWork, String pastWork, String education, String address, String phno, String email, String facebook, String instagram, String twiter, String github, String other) {
		con = MySQLConnector.Connector();
		int res = 0;
		try {
			ps = con.prepareStatement(update_sql);
			ps.setString(1, CusConversion.ToNA(name));
			ps.setString(2, CusConversion.ToNA(otherName));
			ps.setString(3, CusConversion.ToNA(dob));
			ps.setString(4, gender);
			ps.setString(5, CusConversion.ToNA(nationality));
			ps.setString(6, CusConversion.ToNA(fatherName));
			ps.setString(7, CusConversion.ToNA(motherName));
			ps.setString(8, CusConversion.ToNA(profession));
			ps.setString(9, CusConversion.ToNA(presentWork));
			ps.setString(10, CusConversion.ToNA(pastWork));
			ps.setString(11, CusConversion.ToNA(education));
			ps.setString(12, CusConversion.ToNA(address));
			ps.setString(13, CusConversion.ToNA(phno));
			ps.setString(14, CusConversion.ToNA(email));
			ps.setString(15, CusConversion.ToNA(facebook));
			ps.setString(16, CusConversion.ToNA(instagram));
			ps.setString(17, CusConversion.ToNA(twiter));
			ps.setString(18, CusConversion.ToNA(github));
			ps.setString(19, CusConversion.ToNA(other));
			ps.setString(20, id);
			
			res = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return res;
	}
	
	
	
	
}
