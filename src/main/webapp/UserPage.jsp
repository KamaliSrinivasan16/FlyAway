<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=DynaPuff&display=swap"
	rel="stylesheet">
</head>
<body style="background-color: #E5E7E9">
	<br>
	<div align="center"
		style="font-family: 'DynaPuff', cursive; font-size:30px;">
		<a href=WelcomePage.jsp>FlyAway</a>
	</div>
	<br>
	<br>
	<div align="center">
		<h2>User Login</h2>
		<div
			style="border: 2px solid black; width: 25%; border-radius: 20px; padding: 20px; background-color: #EBDEF0"
			align="center">
			<form action=UserLogin method=post>
				<table>
					<tr>
						<td><label for=email>Email</label><br></td>
						<td><input type="email" name=email id=email /></td>
					</tr>
					<tr>
						<td><label for=pass>Password</label><br></td>
						<td><input type="password" name=password id=pass /></td>
					</tr>

					<tr>
						<td><input type=submit value=submit /></td>
						<td><input type=reset /></td>
					</tr>
				</table>

			</form>
		</div>
	</div>

	<br>
	<br>
	<div align="center">
	<i>New User- Click Create account</i>
	</div>
	<h4 align="center">
		<a href=NewUser.jsp style="font-size: 25; color: red;">Create
			Account</a>
	</h4>

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