<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Vehicle</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="index.css">
	
	<style type="text/css">
	
		.hed{
			font-family: Arial, Helvetica, sans-serif;
			font-size: 40px;
		}
	
		.admindiv1{
			text-align: left;
	  		position: absolute;
	  		top: 30%;
	  		left: 25%;
	  		transform: translate(-5%, -5%);
	  		padding: 70px;
	  		background-color: #e8edef;
	   	}
		.btn1 {
			background-color: #54a2f0;
			font-size: 17px;
			color: white;
			padding: 16px 20px;
			border: none;
			cursor: pointer;
			width: 100%;
			opacity: 0.9;
		}
		.btn1:hover {
		  	opacity: 1;
		}

	</style>
</head>
<body>


<!-- admin - Navbar -->
	<div class="topnav">
  		<a href="adminDashboard.jsp">SMART TAXI SERVICE - ADMINISTRATOR</a>

  		<div class="topnav-right">
    		<a  href="adminDashboard.jsp">Home</a>
    		

    		<a href="manageVehicle.jsp">Manage Vehicle</a>
    		<a href="#about">Contact Us</a>
    		<a href="index.jsp">LOG OUT</a>
  		</div>
	</div><br><br>

<%
		String vNo = request.getParameter("vNo");
		String vType = request.getParameter("vType");
		String vChassisNo = request.getParameter("vChassisNo");
		String vSeatCap = request.getParameter("vSeatCap");
		String vOwnerName = request.getParameter("vOwnerName");
		String vOwnerNIC = request.getParameter("vOwnerNIC");
		String vOwnerAddress = request.getParameter("vOwnerAddress");
		String vOwnerPhone = request.getParameter("vOwnerPhone");
	%>
	
	<pre class = "hed"><b>				Delete Vehicle Account</b></pre>
	
	
	<div class="admindiv1">
	<form action="vehicle_delete" method ="Post">
	<table>
		<tr>
			<td>Vehicle Registration No</td>
			<td><input type="text" name="vNo" value="<%=vNo %>" readonly></td>
		</tr>
		<tr>
			<td>Vehicle Type</td>
			<td><input type="text" name="name" value="<%= vType %>" readonly></td>
		</tr>
		<tr>
		<td>Vehicle Chassis No</td>
		<td><input type="text" name="vChassisNo" value="<%= vChassisNo %>" readonly></td>
	</tr>
	
	<tr>
		<td>Seating Capacity</td>
		<td><input type="text" name="vSeatCap" value="<%= vSeatCap %>" readonly></td>
	</tr>
	
	<tr>
		<td>Name (Vehicle Owner)</td>
		<td><input type="text" name="vOwnerName" value="<%= vOwnerName %>" readonly></td>
	</tr>
	
	<tr>
		<td>NIC (Vehicle Owner)</td>
		<td><input type="text" name="vOwnerNIC" value="<%= vOwnerNIC %>" readonly></td>
	</tr>
	
	<tr>
		<td>Address (Vehicle Owner)</td>
		<td><input type="text" name="vOwnerAddress" value="<%= vOwnerAddress %>" readonly></td>
	</tr>
	<tr>
		<td>Phone No (Vehicle Owner)</td>
		<td><input type="text" name="vOwnerPhone" value="<%= vOwnerPhone %>" readonly></td>
	</tr>
		
	</table>
	<br>
	<input type="submit" name="submit" class = "btn1" value="Delete Vehicle">
	
	</form>
	</div>

</body>
</html>