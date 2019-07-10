package pd.java.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pd.java.dao.ProfileDao;

/**
 * Servlet implementation class AddProfileServ
 */
@WebServlet("/AddProfileServ")
public class AddProfileServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int id = 0;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String otherName = request.getParameter("otherName");
		String dob = request.getParameter("dob");
		String gender = request.getParameter("gender");
		String nationality = request.getParameter("nationality");
		String fatherName = request.getParameter("fatherName");
		String motherName = request.getParameter("motherName");
		String profession = request.getParameter("profession");
		String presentWork = request.getParameter("presentWork");
		String pastWork = request.getParameter("pastWork");
		String education = request.getParameter("education");
		String address = request.getParameter("address");
		String phno = request.getParameter("phno");
		String email = request.getParameter("email");
		String facebook = request.getParameter("facebook");
		String instagram = request.getParameter("instagram");
		String twiter = request.getParameter("twiter");
		String github = request.getParameter("github");
		String other = request.getParameter("other");
		
		ProfileDao pdao = new ProfileDao();
		id = pdao.insertData(name, otherName, dob, gender, nationality, fatherName, motherName, profession, presentWork, pastWork, education, address, phno, email, facebook, instagram, twiter, github, other);	
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.print(id);
		
		
	}

}
