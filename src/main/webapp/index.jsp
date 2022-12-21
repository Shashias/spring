<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>

<body style="background: linear-gradient(to right, #99004d 0%, #ff0080 100%);">
<div align=center>
<h2> User Login</h2>


<form action="loginRegister" method="post">
<table style="width: 20%">
				<tr>
				<td><h3>${message }</h3>
				<h3 style="color:green;">${sucessMessage}</h3>
				</td>
				</tr>

                 <tr>
                 <td>UserName : </td>
                                    <td><input type="text" name="username" placeholder="Enter Your User name" required/></td>
                         </tr>
                                    <tr>
                                    <td>Password : </td>
                                    <td><input type="password" name="password1" placeholder="Enter Your Password" required /></td>
                           </tr>
                 <tr>
                 
                 <td><input type="submit" name="submit" value="Login" /></td>
                 <td><a href="Registration.jsp">Registration</a></td>
                 <td> <input type="reset"  /></td>
                 </tr>
                 </table>
                 </form>
                 
        </div>         
</body>
</html>
