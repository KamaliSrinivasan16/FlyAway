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
	if (user == null) {
		response.sendRedirect("UserPage.jsp");
	}
	%>
	<p align="center"
		style="color: green; font-size: 40px; font-weight: bold">Flight
		Booked Successfully</p>

	<%
	List<String[]> booking = (List<String[]>) session.getAttribute("booking");
	%>
	<div align="center">
		<table border="1">
			<%
			for (String[] s : booking) {
			%>
			
			<tr>
				<th>Name</th>
				<td><%=s[0]%></td>
			</tr>
			<tr>
				<th>Airlines</th>
				<td><%=s[1]%></td>
			</tr>
			<tr>
				<th>From</th>
				<td><%=s[2]%></td>
			</tr>
			<tr>
				<th>To</th>
				<td><%=s[3]%></td>
			</tr>
			<tr>
				<th>Date</th>
				<td><%=s[4]%></td>
			</tr>
			<tr>
				<th>Time</th>
				<td><%=s[5]%></td>
			</tr>
			<tr>
				<th>Price</th>
				<td><%=s[6]%></td>
			</tr>
			<tr>
				<th>Status</th>
				<td>BOOKED</td>
			</tr>
			<tr>
				<th>No.of.Travellers</th>
				<td><%=s[7]%></td>
			</tr>


			<%
			}
			%>
		</table>
	</div>

</body>
</html>
