<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight List</title>
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
	<%
	@SuppressWarnings("unchecked")
	HashMap<String, String> user = (HashMap<String, String>) session.getAttribute("user");
	if (user != null) {
	%>
	<p>
		Welcome
		<%=user.get("name")%></p>
	<a href="Logout">Logout</a>
	<%
	} else {
	%>
	<a href=UserPage.jsp>User Login</a>
	<%
	}
	%>
	<br>
	<%
	@SuppressWarnings("unchecked")
	List<String[]> flights = (List<String[]>) session.getAttribute("flights");
	if (flights != null) {
	%>

	<h2 align="center">Available Flights</h2>

	<div align="center">
		<table border="1">
			<tr>
				<th>ID</th>
				<th>Airlines</th>
				<th>Time</th>
				<th>Price</th>
			</tr>



			<%
			for (String[] flight : flights) {
			%>

			<tr>
				<td><%=flight[0]%></td>
				<td><%=flight[1]%></td>
				<td><%=flight[2]%></td>
				<td><%=flight[3]%></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	
	<div align="center" style="position: relative; top: 20px;">
		<form action="TicketDetails" method="get">
			Enter flight id:-<input type=text name=id />
			<input type="submit" value="book">
		</form>
	</div>


	<%
	} else {
	%>
	<h1>There are no available flights</h1>
	<%
	}
	%>

</body>
</html>