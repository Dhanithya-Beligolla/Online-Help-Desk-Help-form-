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
 * Servlet implementation class FormDelete
 */
@WebServlet("/FormDelete")
public class FormDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String id = request.getParameter("formid");
		boolean isTrue;
		
		isTrue = FormDBUtil.deleteform(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("HelpFormInsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Form> formDetails = FormDBUtil.getFormDetails(id);
			request.setAttribute("formDetails", formDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("ViewHelpForm.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}
	

}
