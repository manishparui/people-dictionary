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
import pd.java.utilities.CusConversion;

/**
 * @author Manish Parui
 * https://github.com/manishparui
 */

@WebServlet("/RetrieveProfileImageServ")
public class RetrieveProfileImageServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idProfile = request.getParameter("id");
		ImageDao idao = new ImageDao();
		ResultSet rs = idao.retrieveProfileImage(idProfile);
		String base64Image = null;
		
		try {
			while(rs.next()) {
				base64Image = CusConversion.toBase64Image(rs.getBlob("image"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.print(base64Image);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
