<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
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
	<h2 align="center">Insert New Flight Details</h2>

	<div align="center">
		<div
			style="border: 3px solid black; width: 25%; border-radius: 20px; padding: 20px; background-color: #EBDEF0"
			align="center">
			<form action=NewFlight method=post>
				<label for=name>Name :-</label> <input type="text" name=name id=name /><br>
				<br> <label for=from>From :-</label> <input type="text"
					name=from id=from /><br> <br> <label for=to>To
					:-</label> <input type="text" name=to id=to /><br> <br> <label
					for=departure>Departure :-</label> <input type="date"
					name=departure id=departure /><br> <br> <label for=time>Time
					:-</label> <input type="time" name=time id=time /><br> <br> <label
					for=price>Price :-</label> <input type="text" name=price id=price /><br>
				<br> <input type=submit value=submit /> <input type=reset />
			</form>
		</div>
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