package com.help;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormUpdate
 */
@WebServlet("/FormUpdate")
public class FormUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String category = request.getParameter("category");
		String subject = request.getParameter("subject");
		String description = request.getParameter("description");
		
		boolean isTrue;
		
		isTrue = FormDBUtil.updateform(id, name, email, category, subject, description);
		
		if(isTrue == true) {
			
			List<Form> formDetails = FormDBUtil.getFormDetails(email);
			request.setAttribute("formDetails", formDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("ViewHelpForm.jsp");
			dis.forward(request, response);
		}
		else {
			List<Form> formDetails = FormDBUtil.getFormDetails(email);
			request.setAttribute("formDetails", formDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("ViewHelpForm.jsp");
			dis.forward(request, response);
		}
		
	}

}
