<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body style="background-color:#aa1234">
<h1>Registration for the coaching center</h1>
<form action="Register" method="post">
 <div class="container">
   <table><tr><td>
<label><b>First Name</b></label></td>
   <td><input type="text" placeholder="Enter First Name" name="firstname" required></td></tr>
   
   <tr><td><label><b>Last Name</b></label></td>
   <td><input type="text" placeholder="Enter Lastt Name" name="lastname" required></td></tr>
   
   <tr><td><label><b>Password</b></label></td>
   <td><input type="password" placeholder="Enter Password" name="pass" required></td></tr>
   
   <tr><td><label><b>Confirm Password</b></label></td>
   <td><input type="password" placeholder="Enter Password" name="confirmpass" required></td></tr>
   
   <tr><td><label><b>Email</b></label></td>
   <td><input type="text" placeholder="Enter Email" name="email" required></td></tr>       
   <tr><td colspan="2" align="Center"><button type="submit">Register</button></td></tr>
</table>
 </div>
</form>
</body>
</html>
