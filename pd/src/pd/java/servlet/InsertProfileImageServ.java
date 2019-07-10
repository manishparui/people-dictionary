package pd.java.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import pd.java.dao.ImageDao;

@WebServlet("/InsertProfileImageServ")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class InsertProfileImageServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = (request.getParameter("id"));
		
		InputStream data = null;
        Part filePart = request.getPart("img");
        System.out.println(filePart);
        if (filePart != null) {
        	
        	
            // prints some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
            
             
            data = filePart.getInputStream();
        } else {
        	System.out.println("file part not found");
        }
        ImageDao idao = new ImageDao();
        int res = idao.insertData(id, data);
        
        if(res > 0) {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.print("Profile image added.");
		} else {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.print("Something went wrong while adding profile image.");
		}
        
	}

}
