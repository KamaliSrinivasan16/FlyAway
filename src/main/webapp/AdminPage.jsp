<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=DynaPuff&display=swap"
	rel="stylesheet">
</head>
<body style="background-color: #E5E7E9">
	<br>
	<div align="center"
		style="font-family: 'DynaPuff', cursive; font-size: 30px;">
		<a href=WelcomePage.jsp>FlyAway</a>
	</div>
	<br>
	<br>
	<div align="center">
		<h2>Admin Login</h2>
		<div
			style="border: 3px solid black; width: 25%; border-radius: 20px; padding: 20px; background-color: #EBDEF0"
			align="center">
			<form action=AdminLogin method=post>
				<label for=email>Email :-</label> <input type="email" name=email
					id=email /><br> <br> <label for=pass>Password :-</label>
				<input type="password" name=password id=pass /><br> <br>
				<input type=submit value=submit /> <input type=reset />
			</form>
		</div>
	</div>
	<br>
	<div align="center">
		<a href=ForgotPassword.jsp style="font-size: 25; color: red;">Forgot
			Password</a>
	</div>

	<%
	String message = (String) session.getAttribute("message");
	if (message != null) {
	%>
	<p style="color: silver;" align="center"><%=message%></p>
	<%
	session.setAttribute("message", null);
	}
	%>
</body>
</html>