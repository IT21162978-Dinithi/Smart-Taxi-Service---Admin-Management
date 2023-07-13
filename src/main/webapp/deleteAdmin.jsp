<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Acount</title>
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
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String wemail = request.getParameter("wemail");
		String phone = request.getParameter("phone");
		String wHrs = request.getParameter("wHrs");
		String userName = request.getParameter("aUsername");
		String password = request.getParameter("aPassword");
	%>
	
	<pre class = "hed"><b>				Delete Administrator Account</b></pre>
	
	
	<div class="admindiv1">
	<form action="admin_delete" method ="post">
	<table>
		<tr>
			<td>Administrator ID</td>
			<td><input type="text" name="id" value="<%=id %>" readonly></td>
		</tr>
		<tr>
			<td>Administrator Name</td>
			<td><input type="text" name="name" value="<%= name %>" readonly></td>
		</tr>
		<tr>
		<td>Administrator Personal Email</td>
		<td><input type="text" name="email" value="<%= email %>" readonly></td>
	</tr>
	
	<tr>
		<td>Work Email</td>
		<td><input type="text" name="wemail" value="<%= wemail %>" readonly></td>
	</tr>
	
	<tr>
		<td>Phone No</td>
		<td><input type="text" name="phone" value="<%= phone %>" readonly></td>
	</tr>
	
	<tr>
		<td>Working Hours</td>
		<td><input type="text" name="wHrs" value="<%= wHrs %>" readonly></td>
	</tr>
	
	<tr>
		<td>User name</td>
		<td><input type="text" name="uname" value="<%= userName %>" readonly></td>
	</tr>
		
	</table>
	<br>
	<input type="submit" name="submit" class = "btn1" value="Delete Account">
	
	</form>
	</div>

</body>
</html>