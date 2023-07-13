<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Vehicle</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="index.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style>
		body, html {
		  height: 100%;
		  font-family: Arial, Helvetica, sans-serif;
		}
		
		* {
		  box-sizing: border-box;
		}
		.hed{
		  font-family: Arial, Helvetica, sans-serif;
		  font-size: 40px;
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
		
		/* Add styles to the form container */
		.container {
		  position: absolute;
		  right: 700px;
		  margin: 20px;
		  max-width: 500px;
		  padding: 16px;
		  background-color: white;
		}
		
		/* Full-width input fields */
		input[type=text], input[type=password] {
		  width: 100%;
		  padding: 15px;
		  margin: 5px 0 22px 0;
		  border: none;
		  background: #f1f1f1;
		}
		
		input[type=text]:focus, input[type=password]:focus {
		  background-color: #ddd;
		  outline: none;
		}
		
		/* Set a style for the submit button */
		.btn {
		  background-color: #54a2f0;
		  font-size: 16px;
		  color: white;
		  padding: 16px 20px;
		  border: none;
		  cursor: pointer;
		  width: 100%;
		  opacity: 0.9;
		}
		.btn1{
		  background-color: #8bccf9;
		  font-size: 16px;
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
		
		.btn:hover {
		  opacity: 1;
		}
	</style>

</head>

<body>

	<!-- Navbar -->
<div class="topnav">
  <a href="adminDashboard.jsp">SMART TAXI SERVICE - ADMINISTRATOR</a>

  <div class="topnav-right">
    <a href="adminDashboard.jsp">Home</a>
    
    <a href="manageVehicle.jsp">Manage Vehicle</a>
    <a href="#about">Contact Us</a>
    <a href="index.jsp">LOG OUT</a>
  </div>
</div>

<div class="bg-img">
  <form action="vehicle_insert" class="container" method ="post">
  
  <pre class = "hed"><b>	ADD VEHICLE</b></pre>
 

    <label for="regNo"><b>Vehicle Registration No</b></label>
    <input type="text" placeholder="Enter Reg No" name="regNo" required>

    <label for="vType"><b>Vehicle Type</b></label>
    <input type="text" placeholder="Enter Vehicle Type" name="vType" required>

    <label for="chassisNo"><b>Vehicle Chassis No</b></label>
    <input type="text" id="chassisNo" name="chassisNo" placeholder="Enter Vehicle Chassis No">
    
    <label for="cap"><b>Seating Capacity</b></label>
    <input type="text" id="cap" name="cap" placeholder="XX">
    
    <label for="name"><b>Name (Vehicle Owner)</b></label>
    <input type="text" id="name" name="name" placeholder="W.A.D. John">
    
    <label for="nic"><b>NIC (Vehicle Owner)</b></label>
    <input type="text" id="nic" name="nic" placeholder="XXXXXXXXXXXX">
            
    <label for="adr"><b>Address (Vehicle Owner)</b></label>
    <input type="text" id="adr" name="adr" placeholder="542 W. 15th Street">
            
    <label for="phone"><b>Phone No (Vehicle Owner)</b></label>
    <input type="text" id="phone" name="phone" placeholder="7XXXXXXXX">
  
     <button type="reset" class="btn1">Reset</button><br><br> 
     <button type="submit" class="btn">Submit</button>
     
            
  </form>
</div>

</body>
</html>



