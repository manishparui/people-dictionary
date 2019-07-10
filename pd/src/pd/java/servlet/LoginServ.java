package pd.java.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pd.java.dao.LoginDao;

/**
 * @author Manish Parui
 * https://github.com/manishparui
 */

@WebServlet("/LoginServ")
public class LoginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		String dbUname = null;
		String dbPwd = null;
		
		LoginDao ldao = new LoginDao();
		ResultSet rs = ldao.retrieveData(uname);
		try {
			while(rs.next()) {
				dbUname = rs.getString("uname");
				dbPwd = rs.getString("pwd");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if(uname.equals(dbUname) && pwd.equals(dbPwd)) {
			response.sendRedirect("./");
		} else {
			response.sendRedirect("./login");
		}
	}
}
