package pd.java.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pd.java.dao.ProfileDao;
import pd.java.utilities.JDBCUtil;

/**
 * @author Manish Parui
 * https://github.com/manishparui
 */

@WebServlet("/LoadDataServ")
public class LoadDataServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		ProfileDao pdao = new ProfileDao();
		ResultSet rs = pdao.retrieveData(id);
		String XMLStr = null;
		try {
			XMLStr = JDBCUtil.toXML(rs);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		response.setContentType("text/xml;charset=UTF-8");
		PrintWriter writer = response.getWriter();
		writer.print(XMLStr);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
