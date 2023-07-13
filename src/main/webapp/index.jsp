<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Smart Taxi Service</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
body, html {
  height: 100%;
  margin: 0;
  font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
}

.topnav {
  overflow: hidden;
  background-color: #f8f9fb;
}

.topnav a {
  float: left;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #e3ecfb;
  color: black;
}

.topnav a.active {
  color: black;
  font-weight: bold;
}

.topnav-right {
  float: right;
}

.hero-image {
  background-image: url("images/4.png");
  height: 90%;
  background-position: right bottom;
  background-repeat: no-repeat;
  position: relative;
}

.hero-text {
  text-align: center;
  position: absolute;
  top: 45%;
  left: 27%;
  transform: translate(-50%, -50%);
}

.hero-text a {
  text-decoration: none;
  border: none;
  outline: 0;
  display: inline-block;
  padding: 10px 25px;
  color: black;
  background-color: #ddd;
  text-align: center;
  cursor: pointer;
  font-size:30px;
}

.hero-text a:hover {
  background-color: #555;
  color: white;
}

.container {
  position: relative;
  text-align: center;
  color: black;
}

.centered {
  position: absolute;
  top: 40%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.top-left {
  position: absolute;
  top: 150px;
  left: 300px;
}

/* Style the footer */
.footer {
  background-color: #e3ecfb;
  padding: 10px;
  text-align: center;
}

</style>

<body>
<!-- Navbar -->
<div class="topnav">
  <a href="index.jsp" style="font-family:Lucida Handwriting,cursive;"><b>Smart Taxi Service</b></a>

  <div class="topnav-right">
    <a class="active" href="index.jsp">Home</a>
    <a href="#search">Profile</a>
    <a href="#about">About Us</a>
    <a href="#about">Contact Us</a>
    <a href="login.jsp">LOG IN</a>
  </div>
</div>

<div class="hero-image">
  <div class="hero-text">
    <h1 style="font-size:40px">Welcome To <br/> Smart Taxi Service</h1>
    <p>Do your ride bookings easily</p><br/> <br/> 
    <a href="rideinsert.jsp">BOOK NOW</a>
  </div>
</div>

<div class="container">
  <img src="images/3.jpg" alt="check" style="width:100%;">
  <div class="top-left">
  	<h3>Check your Booking</h3>
  </div>
  <div class="centered">
	<form action="check" method="post">
		<table>
		<tr>
			<td><b>Your reference number</b> </td>
			<td><input type="text" name="rideID"><br></td>
		</tr>
		<tr>
			<td><b>Your Phone number </b></td>
			<td><input type="text" name="rPhone"><br></td>
		</tr>
		
		<tr>
			<td></td>
			<td></td>
		</tr>
		
		<tr>
			<td> </td>
			<td><input type="submit" name="submit" value="CHECK NOW"><br></td>
		</tr>
		</table>
	</form>	
  </div>
</div>

<div class="footer">
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
  <h3>Smart Taxi Service</h3>
  Tel no : 0763428510 , 0112560145<br/>
  Address : No.148/5, Green Valley Drive, Hokandara
</div>

</body>
</html>