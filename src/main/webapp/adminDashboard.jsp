<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Smart Taxi Service - Administrator</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="index.css">
<style>
.hero-image1 {
  background-image: url("images/4.png");
  height: 90%;
  background-position: right bottom;
  background-repeat: no-repeat;
  position: relative;
}
</style>
</head>
<body>
<!-- admin - Navbar -->
<div class="topnav">
  <a href="adminDashboard.jsp">SMART TAXI SERVICE - ADMINISTRATOR</a>

  <div class="topnav-right">
    <a class="active" href="adminDashboard.jsp">Home</a>
    
    <a href="manageVehicle.jsp">Manage Vehicle</a>
    <a href="#about">Contact Us</a>
    <a href="index.jsp">LOG OUT</a>
  </div>
</div>

<div class="hero-image1">  
  <div class="hero-text">
    <h1 style="font-size:40px">ADMINISTRATOR <br><br/> Smart <br/> Taxi <br/> Service</h1>
    <p>Manage all activities easily</p><br/> <br/> 
    <a href="vehicleInsert.jsp">Add Vehicle</a> 
  </div>
</div>

</body>
</html>