package com.vehicle;

import java.io.IOException;
//import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.admin.admin;
//import com.admin.adminDBUtil;


@WebServlet("/VehicleInsert")
public class VehicleInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String vNo = request.getParameter("regNo");
		String vType = request.getParameter("vType");
		String vChassisNo = request.getParameter("chassisNo");
		String vSeatCap = request.getParameter("cap");
		String vOwnerName = request.getParameter("name");
		String vOwnerNIC = request.getParameter("nic");
		String vOwnerAddress = request.getParameter("adr");
		String vOwnerPhone = request.getParameter("phone");
		
		boolean isTrue;
		
		isTrue=vehicleDBUtil.insertVehicle(vNo, vType, vChassisNo, vSeatCap, vOwnerName, vOwnerNIC, vOwnerAddress, vOwnerPhone);
		
		if(isTrue == true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("manageVehicle.jsp");
			dis1.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("vehicleUnsuccess.jsp");
			dis2.forward(request, response);
		}
		
		/*//new
		try {
			boolean vDetails = vehicleDBUtil.insertVehicle(vNo, vType, vChassisNo, vSeatCap, vOwnerName, vOwnerNIC, vOwnerAddress, vOwnerPhone);
			request.setAttribute("vDetails", vDetails);
		}
		catch(Exception e){
			e.printStackTrace();
		}*/
	}

}
