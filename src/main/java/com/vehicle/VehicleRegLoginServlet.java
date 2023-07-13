package com.vehicle;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.admin.admin;
//import com.admin.adminDBUtil;


@WebServlet("/VehicleRegLoginServlet")
public class VehicleRegLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String vNo = request.getParameter("vNo");
		
		
	
		boolean isTrue;
		
		isTrue = vehicleDBUtil.validate(vNo);
		//
		if (isTrue == true) {
			List<vehicle> vehDetails = vehicleDBUtil.getVehicle(vNo);
			request.setAttribute("vehDetails", vehDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("admin-viewVehicleDetails.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your Vehicle Reg No. incorrect');");
			out.println("location='manageVehicle.jsp'");
			out.println("</script>");
		}
	}

}
