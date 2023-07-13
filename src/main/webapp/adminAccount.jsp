<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
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
  		left: 60%;
  		transform: translate(-20%, -20%);
  		padding: 16px;
  		background-color: #e8edef;
   
	
	}
	.bg-img {
  /* The image used */
  background-image: url("images/v12.png");
  min-height: 600px;
  
  

  /* Center and scale the image nicely */
  background-position: left center;
  background-repeat: no-repeat;
  background-size: 50% 100%;
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

.btn {
  text-align: left;
  font-size: 16px;
  border-radius: 20px;
  		position: absolute;
  		top: 132%;
  		left: 63%;
  		transform: translate(-70%, -70%);
  		padding: 16px 20px;
  		background-color: #54a2f0;
  		color: white;
  		border: none;
  		cursor: pointer;
  		opacity: 0.9;
	
}
.btn1{
  text-align: left;
  font-size: 16px;
  border-radius: 20px;
  		position: absolute;
  		top: 132%;
  		left: 76%;
  		transform: translate(-70%, -70%);
  		padding: 16px 20px;
  		background-color: #54a2f0;
  		color: white;
  		border: none;
  		cursor: pointer;
  		opacity: 0.9;
}

.btn:hover {
  opacity: 2;
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
	</div>
	
	
<br><br>

<pre class = "hed"><b>		SMART TAXI SERVICE - ADMINISTRATOR</b></pre>
	<br>
	
	<c:forEach var="adm" items="${admDetails}">
	
	<c:set var="id" value="${adm.id}"/>
	<c:set var="name" value="${adm.name}"/>
	<c:set var="email" value="${adm.email}"/>
	<c:set var="wemail" value="${adm.wemail}"/>
	<c:set var="phone" value="${adm.phone}"/>
	<c:set var="wHrs" value="${adm.wHrs}"/>
	
	<c:set var="aUsername" value="${adm.userName}"/>
	<c:set var="aPassword" value="${adm.password}"/>
	
	
	
	<!--  --><div class="bg-img">  
  <div class="admindiv1">
  
  <img src="images/v11.png" alt="profile pic" width="100" height="100"><br><br>
  
  		<pre class = "topic1"><b><li>PERSONAL DETAILS</li></b></pre><br>
  		<label for="regNo"><b>Administrator ID  :</b></label>
		${adm.id}<br><br>
	
		<label for="regNo"><b>Administrator Name  :</b></label>
		${adm.name}<br><br>
	
		<label for="regNo"><b>Administrator Personal Email  :</b></label>
		${adm.email}<br><br>
		
		<label for="regNo"><b>Phone No  :</b></label>
		${adm.phone}<br><br><br>
	
	
		<pre class = "topic1"><b><li>OFFICIAL DATA</li></b></pre><br>
		<label for="regNo"><b>Work Email  :</b></label>
		${adm.wemail}<br><br>
	
		
		<label for="regNo"><b>Working Hours  :</b></label>
		${adm.wHrs}<br><br><br>
	
	
		<pre class = "topic1"><b><li>LOGIN DATA</li></b></pre><br>
		<label for="regNo"><b>User Name  :</b></label>
		${adm.userName}<br><br>
	
		<label for="regNo"><b>Password  :</b></label>
		${adm.password}<br><br>
  
  
  </div>
</div>
	
	
	

	</c:forEach>
	
	 
	 <!-- Update -->
	<c:url value="updateAdmin.jsp" var="adminUpdate">
		<c:param name="id" value ="${id}"/>
		<c:param name="name" value ="${name}"/>
		<c:param name="email" value ="${email}"/>
		<c:param name="wemail" value="${wemail}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="wHrs" value="${wHrs}"/>
		<c:param name="aUsername" value ="${aUsername}"/>
		<c:param name="aPassword" value ="${aPassword}"/>
		
	</c:url>
	
	<br><br>
	<a href="${adminUpdate}">
	<input type="button" name="update" class = "btn" value="Update My Data">
	</a>

	<br><br><br><br><br>
	
	
	<!-- Delete -->
	<c:url value="deleteAdmin.jsp" var="adminDelete">
		<c:param name="id" value ="${id}"/>
		<c:param name="name" value ="${name}"/>
		<c:param name="email" value ="${email}"/>
		<c:param name="wemail" value="${wemail}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="wHrs" value="${wHrs}"/>
		<c:param name="aUsername" value ="${aUsername}"/>
		<c:param name="aPassword" value ="${aPassword}"/>
		
	</c:url>
	
	
	<a href="${adminDelete}">
	<input type="button" name="delete" class = "btn1" value="Delete My Account">
	</a>
	<br><br><br><br><br>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>