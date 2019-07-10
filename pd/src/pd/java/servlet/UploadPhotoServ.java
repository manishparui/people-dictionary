package pd.java.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import pd.java.dao.ImageDao;


/**
 * Servlet implementation class UploadPhoto
 */
@WebServlet("/UploadPhotoServ")
@MultipartConfig(maxFileSize = 16177215)
public class UploadPhotoServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = (request.getParameter("id"));
		
		List<Part> photos = (List<Part>) request.getParts();
		InputStream data = null;
		int res = 0;
		
		for(Part filePart : photos) {
			if(filePart != null) {
				data = filePart.getInputStream();
			} else {
				System.out.println("file part not found");
			}
			ImageDao idao = new ImageDao();
			res = idao.insertData(id, "g", data);
		}
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		if(res > 0) {
			out.print("Photos added sucessfully.");
		}
	}

}
