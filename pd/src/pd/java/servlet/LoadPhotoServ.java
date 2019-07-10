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

import pd.java.dao.ImageDao;
import pd.java.utilities.JDBCUtil;

/**
 * Servlet implementation class LoadPhotoServ
 */
@WebServlet("/LoadPhotoServ")
public class LoadPhotoServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idProfile = request.getParameter("id");
		ImageDao idao = new ImageDao();
		ResultSet rs = idao.retrieveImage(idProfile, "g");
		String XMLStr = null;
		try {
			XMLStr = JDBCUtil.toXMLWithBase64(rs);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		response.setContentType("text/xml;charset=UTF-8");
		PrintWriter writer = response.getWriter();
		writer.println(XMLStr);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
