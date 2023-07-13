package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateAdminServlet")
public class updateAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		//String wemail = request.getParameter("wemail");
		String phone = request.getParameter("phone");
		//String wHrs = request.getParameter("wHrs");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = adminDBUtil.updateAdmin(id, name, email, phone, userName, password);
		
		if(isTrue == true) {
			List<admin> admDetails = adminDBUtil.getAdmindetails(id);
			request.setAttribute("admDetails", admDetails);
			
			RequestDispatcher dis1 = request.getRequestDispatcher("adminAccount.jsp"); 
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
