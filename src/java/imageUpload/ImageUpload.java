/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package imageUpload;

import com.oreilly.servlet.MultipartRequest;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author wasat
 */

public class ImageUpload extends HttpServlet {

    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
     
    
        PrintWriter out = res.getWriter();

        MultipartRequest m =new MultipartRequest(req, "C:/Users/hp/Desktop/image");
        if(m!=null)
		{
			RequestDispatcher rd=req.getRequestDispatcher("home.html");
			rd.include(req, res);
			out.println("<script>window.alert('Successfully Uploaded');</script>");
		}
		else
		{
			RequestDispatcher rd=req.getRequestDispatcher("home.html");
			rd.include(req, res);
			out.println("<script>window.alert('Not Uploaded');</script>");
		}
    
    }
}
