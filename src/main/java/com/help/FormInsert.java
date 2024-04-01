package com.help;

import java.io.IOException;
import java.io.PrintWriter;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormInsert
 */
@WebServlet("/FormInsert")
public class FormInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		String name = request.getParameter("Name");
		String email = request.getParameter("Email");
		String category = request.getParameter("Category");
		String subject = request.getParameter("Subject");
		String description = request.getParameter("Description");
		
		boolean isTrue;
		
		isTrue = FormDBUtil.insertform(name, email, category, subject, description);
		
		if(isTrue == true) {

			out.println("<script type='text/javascript'>");
			out.println("alert('Insert successfully....!!');");
			out.println("location='HelpFormInsert.jsp'");
			out.println("</script>");
		} else {

			out.println("<script type='text/javascript'>");
			out.println("alert('Error....!!');");
			out.println("location='HelpFormInsert.jsp'");
			out.println("</script>");
		}
	}

}
