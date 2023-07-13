<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Vehicle Details</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="index.css">
	
	<style type="text/css">
		body, html {
	  		height: 100%;
	  		font-family: Arial, Helvetica, sans-serif;
		}
		.admindiv1{
			text-align: left;
	  		position: absolute;
	  		top: 20%;
	  		left: 17%;
	  		transform: translate(-20%, -20%);
	  		padding: 16px;
	  		background-color: #e8edef;
	   
		}
		.bg-img {
	  /* The image used */
	  		background-image: url("images/v7.jpg");
	  		min-height: 750px;
	  
	  
	
	  /* Center and scale the image nicely */
		  	background-position: right center;
		  	background-repeat: no-repeat;
		  	background-size: 60% 140%;
		  	position: relative;
		}
		.hed{
			font-family: Arial, Helvetica, sans-serif;
			font-size: 40px;
		}
		
		.topic1 {
			font-family: Arial, Helvetica, sans-serif;
			font-size : 18px;
			
		}
		
		.btn1{
		  	text-align: left;
		  	font-size: 16px;
		  	position: absolute;
		  	top: 104%;
		  	left: 20%;
		  	transform: translate(-70%, -70%);
		  	padding: 16px 20px;
		  	background-color: #8bccf9;
		  	color: white;
		  	border: none;
		  	cursor: pointer;
		  	opacity: 0.9;
		}
		
		
		.btn1:hover {
		  opacity: 2;
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
	</div> <br><br>
	
	<pre class = "hed"><b>		Vehicle Details</b></pre>
	<br>
	

<c:forEach var="veh" items="${vehDetails}">
	
	<c:set var="vNo" value="${veh.vNo}"/>
	<c:set var="vType" value="${veh.vType}"/>
	<c:set var="vChassisNo" value="${veh.vChassisNo}"/>
	<c:set var="vSeatCap" value="${veh.vSeatCap}"/>
	<c:set var="vOwnerName" value="${veh.vOwnerName}"/>
	<c:set var="vOwnerNIC" value="${veh.vOwnerNIC}"/>
	
	<c:set var="vOwnerAddress" value="${veh.vOwnerAddress}"/>
	<c:set var="vOwnerPhone" value="${veh.vOwnerPhone}"/>
	
	
	<div class="bg-img">  
  <div class="admindiv1">
  
  
  
  		
  		<label for="regNo"><b>Vehicle Registration No  :</b></label>
		${veh.vNo}<br><br>
	
		<label for="regNo"><b>Vehicle Type  :</b></label>
		${veh.vType}<br><br>
	
		<label for="regNo"><b>Vehicle Chassis No  :</b></label>
		${veh.vChassisNo}<br><br>
		
		<label for="regNo"><b>Seating Capacity  :</b></label>
		${veh.vSeatCap}<br><br><br>
	
	
		
		<label for="regNo"><b>Name (Vehicle Owner) :</b></label>
		${veh.vOwnerName}<br><br>
	
		
		<label for="regNo"><b>NIC (Vehicle Owner)  :</b></label>
		${veh.vOwnerNIC}<br><br>
	
	
		
		<label for="regNo"><b>Address (Vehicle Owner)  :</b></label>
		${veh.vOwnerAddress}<br><br>
	
		<label for="regNo"><b>Phone No (Vehicle Owner)  :</b></label>
		${veh.vOwnerPhone}<br><br><br><br>
		
		<p><i> ....If You Want To Delete Vehicle Press Here....</i></p>
  
  </div>
</div>
</c:forEach>



<!-- Delete -->
	<c:url value="deleteVehicle.jsp" var="vehicleDelete">
		<c:param name="vNo" value ="${vNo}"/>
		<c:param name="vType" value ="${vType}"/>
		<c:param name="vChassisNo" value ="${vChassisNo}"/>
		<c:param name="vSeatCap" value="${vSeatCap}"/>
		<c:param name="vOwnerName" value="${vOwnerName}"/>
		<c:param name="vOwnerNIC" value="${vOwnerNIC}"/>
		<c:param name="vOwnerAddress" value ="${vOwnerAddress}"/>
		<c:param name="vOwnerPhone" value ="${vOwnerPhone}"/>
		
	</c:url>
	
	<a href="${vehicleDelete}">
	<input type="button" name="delete" class = "btn1" value="Delete Vehicle">
	</a>
	
	
	

</body>
</html>