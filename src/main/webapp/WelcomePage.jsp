<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=DynaPuff&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
</head>
<body style="background-color: #E5E7E9">
	<h1 align="center"
		style="font-family: 'DynaPuff', cursive; color: #6C3483">FlyAway</h1>
	<div align="right">
		<a href="AdminPage.jsp">Admin Login</a>
	</div>

	<%
	@SuppressWarnings("unchecked")
	HashMap<String, String> user = (HashMap<String, String>) session.getAttribute("user");
	if (user != null) {
	%>
	<p style="font-size: 25px;" align="center">
		<b> Welcome <%=user.get("name")%></b>
	</p>
	<div align="center" style="position: relative; top: 10px;">
		<span class="material-symbols-outlined"> logout </span> <a
			href="Logout">Logout</a>
	</div>
	<%
	} else {
	%>
	<span class="material-symbols-outlined"> login </span>
	<a href=UserPage.jsp>User Login</a>
	<%
	}
	%>
	<br>
	<br>
	<div align="center">
		<div
			style="border: 5px solid black; width: 25%; border-radius: 20px; padding: 20px; background-color: #EBDEF0"
			align="center">
			<form action=FlightList method=post>
				<label for=from>From :-</label> <input type=text name=from id=from /><br>
				<br> <label for=to>To :-</label> <input type=text name=to id=to /><br>
				<br> <label for=departure>Departure :-</label> <input type=date
					name=departure id=departure /><br> <br> <label
					for=travellers>Travellers :-</label> <input type=number
					name=travellers id=travellers /><br> <br> <input
					type=submit value=Search /> <input type=reset />
			</form>
		</div>
	</div>


</body>
</html>