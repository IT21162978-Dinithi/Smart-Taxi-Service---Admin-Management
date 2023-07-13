package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deleteAdminServlet")
public class deleteAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		boolean isTrue;
		
		isTrue = adminDBUtil.deleteAdmin(id);
		
		if(isTrue == true) {

			
			RequestDispatcher dis1 = request.getRequestDispatcher("index.jsp"); 
			dis1.forward(request, response);
		}
		else {
			List<admin> admDetails = adminDBUtil.getAdmindetails(id);
			request.setAttribute("admDetails", admDetails);
			
			RequestDispatcher dis1 = request.getRequestDispatcher("adminAccount.jsp"); 
			dis1.forward(request, response);
		}
		
	}

}
