<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administrator - Login Page</title>



	<style >
		.first-row{
			padding-bottom: 10px;
		}
		
		.login-form{
			width: 350px;
			top: 40%;
			left: 50%;
			transform: translate(-50%, -50%);
			position: absolute;
		}
		
		.login-form h1{
			padding-bottom: 20px;
			text-align: center;
			font-size: 30px;
			font-family: Arial, Helvetica, sans-serif;
		}
		p {
		  font-family:Arial, Helvetica, sans-serif;
		  font-size:15;
		}
		
		.login-form input[type=text], input[type=password]{
			padding: 15px;
			margin-bottom: 10px;
			width: 100%;
		}
		
		.login-form input[type=submit]{
			width: 100%;
			padding: 15px;
			margin-bottom: 10px;
		}
		
		.inputField{
		    background-color: rgba(255, 255, 255, .15);  
		    box-shadow: 7px 7px 15px 0px rgba(0, 0, 0, .1);
		    border: none;
		    border-radius: 5px;
		    overflow: hidden;
		}
		
		.btn{
			font-size: 17px;
			color: white;
		    color: #black;
		    border: none;
		    cursor: pointer;
		    background-color: #9fb6f4;
			opacity: 0.9;
		}
		.btn:hover {
			opacity: 1;
		}
	</style>

</head>
<body>
		<div class = "login-form">
		<section class = "first-row">
			
				<h1 >Log In- Administrator Account</h1>
				
				<form action = "admin_login" method = "POST">
					<p class = row  >Username:</p>
					<input class="inputField" type = "text" placeholder = "Enter the User Name" name = "userName" id="login-email"/><br><br>
					<p class = row>Password:</p>
					<input class="inputField" type = "password" placeholder = "Enter the password" name = "password" id = "login-password"/><br><br>
					
					<input class=" btn"  type = "submit" value = "Log In" name = "logInBtn"/><br>
				</form>
				</section>
		</div>
		
	
</body>
</html>