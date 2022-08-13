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
		<div
			style="border: 3px solid black; width: 25%; border-radius: 20px; padding: 20px;background-color: #EBDEF0"
			align="center">
			<form action=UserRegistration method=post>
				<label for=email>Email :-</label> <input type="email" name=email
					id=email /><br>
				<br> <label for=pass>Password :-</label> <input type="password"
					name=password id=pass /><br>
				<br> <label for=name>Name :-</label> <input type="text"
					name=name id=name /><br>
				<br> <label for=phno>Phone No. :-</label> <input type="text"
					name=phno id=phno /><br>
				<br> <label for=adno>Aadhaar No. :-</label> <input type="text"
					name=adno id=adno /><br>
				<br> <input type=submit value=submit /> <input type=reset />
			</form>
		</div>
	</div>
</body>
</html>