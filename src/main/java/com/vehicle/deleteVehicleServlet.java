package com.vehicle;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.admin.admin;
//import com.admin.adminDBUtil;

@WebServlet("/deleteVehicleServlet")
public class deleteVehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String vNo = request.getParameter("vNo");
		
		boolean isTrue;
		
		isTrue = vehicleDBUtil.deleteVehicle(vNo);
		
		if(isTrue == true) {

			
			RequestDispatcher dis1 = request.getRequestDispatcher("manageVehicle.jsp"); 
			dis1.forward(request, response);
		}
		else {
			List<vehicle> vehDetails = vehicleDBUtil.getVehicledetails(vNo);
			request.setAttribute("vehDetails", vehDetails);
			
			RequestDispatcher dis1 = request.getRequestDispatcher("vehicleUnsuccess.jsp"); 
			dis1.forward(request, response);
		}
	}

}
