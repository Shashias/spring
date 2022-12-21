<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body style="background: linear-gradient(to right, #99004d 0%, #FA8072 100%);">
<form action="loginRegister" method ="post">
		<table
			style="margin-top: 50px" >
			<tr>
				<td><h3 style="color: F0F8F;"> Create an account </h3></td>
				<td></td>
			</tr>

			<tr>
				<td>UserName :</td>
				<td><input type="text" name="username" placeholder="Enter Your User name" required></td>
			</tr>
			
			<tr>
				<td>Name :</td>
				<td><input type="text" name="name" placeholder="Enter Your prefered name" required></td>
			</tr>

			<tr>
				<td>Password :</td>
				<td><input type="password" name="password1" placeholder="Enter Your password" required></td>
			</tr>
			
			<tr>
				<td>Re-Type Password :</td>
				<td><input type="password" name="password2" placeholder="Retype password" required></td>
			</tr>

			<tr>
				<td><input type="submit" name="submit" value="register"></td>
			</tr>
		</table>
	</form>
</body>
</html>