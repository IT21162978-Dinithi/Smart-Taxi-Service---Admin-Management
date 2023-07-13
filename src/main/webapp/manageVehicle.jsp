<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.vehicle.vehicle" %>
<%@ page import="com.vehicle.vehicleDBUtil" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="index.css">


<style>

.vehicle1 {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

.vehicle1 td, .vehicle th {
  border: 1px solid #ddd;
  padding: 8px;
}

.vehicle1 tr:nth-child(even){background-color: #f2f2f2;}

.vehicle1 tr:hover {background-color: #e3ecfb;}

.vehicle1 th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #83afe8;
  color: white;
}



.btn1{
  text-align: left;
  font-size: 16px;
  border-radius: 20px;
  		position: absolute;
  		top: 10%;
  		left: 80%;
  		transform: translate(0%, 0%);
  		padding: 16px 20px;
  		background-color: #15096e;
  		color: white;
  		border: none;
  		cursor: pointer;
  		opacity: 0.9;
}

.btn1:hover {
  opacity: 2;
}

.btn2{
  text-align: left;
  font-size: 16px;
  border-radius: 20px;
  		position: absolute;
  		top: 10%;
  		left: 70%;
  		transform: translate(0%, 0%);
  		padding: 16px 20px;
  		background-color: #15096e;
  		color: white;
  		border: none;
  		cursor: pointer;
  		opacity: 0.9;
}

.btn2:hover {
  opacity: 2;
}
</style>
</head>
<body>

<div class="topnav">
  		<a href="adminDashboard.jsp">SMART TAXI SERVICE - ADMINISTRATOR</a>

  		<div class="topnav-right">
    		<a  href="adminDashboard.jsp">Home</a>
    		
    		<a class="#">Manage Vehicle</a>
    		<a href="#about">Contact Us</a>
    		<a href="index.jsp">LOG OUT</a>
  		</div>
	</div>
	
	<br><br>
	<a href="adminDeleteVehicleLogin.jsp">
	<input type="button" name="delete" class = "btn1" value="Delete Vehicle">
	</a>
	
	<a href="vehicleInsert.jsp">
	<input type="button" name="delete" class = "btn2" value="Add Vehicle">
	</a>
	
	
	<br><br>
	<br><br>
	
	
	<table class ="vehicle1">
	
	<tr>
		<th>Vehicle Reg No.</th>
		<th>Vehicle Type</th>
		<th>Vehicle Chassis No.</th>
		<th>Seating Capacity</th>
		<th>Owner Name</th>
		<th>Owner NIC</th>
		<th>Owner Address</th>
		<th>Owner Phone.</th>
		
		
		
	</tr>
	<%
vehicleDBUtil vehicles = new vehicleDBUtil();

ArrayList<vehicle> displayvehicles = vehicles.getVehicles(); 

int size = displayvehicles.size();

for(int i = 0; i < size; i++) {
	out.print("<tr>" +
            "<td>" + displayvehicles.get(i).getvNo() + "</td>" +
            "<td>" + displayvehicles.get(i).getvType() + "</td>" +
            "<td>" + displayvehicles.get(i).getvChassisNo() + "</td>" +
            "<td>" + displayvehicles.get(i).getvSeatCap() + "</td>" +
            "<td>" + displayvehicles.get(i).getvOwnerName() + "</td>" +
            "<td>" + displayvehicles.get(i).getvOwnerNIC() + "</td>" +
            "<td>" + displayvehicles.get(i).getvOwnerAddress() + "</td>" +
            "<td>" + displayvehicles.get(i).getvOwnerPhone() + "</td>" +
            "</tr>");
	
	
}
	
%>	



<tr>


</table>

</body>
</html>