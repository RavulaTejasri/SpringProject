<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Phone Book App</title>
</head>
<body style="background-color:powderblue">
<h2 style="color:orange" align="center"> Enter your details</h2>
<hr>
<form  action="/homepost" method="post">

		<table style="with: 50%" align="center">
			

			<tr>
				<td>Name</td>
				<td><input type="text" name="name"  required value=${contact.name}></td>
			</tr>
				<tr>
				<td>Email</td>
				<td><input type="email" name="email"  required value=${contact.email}></td>
			</tr>
			<tr>
				<td>Phone Number</td>
				<td><input type="number" name="num" value=${contact.num} required /></td>
			</tr>
		</table>
		<hr>
		<section align="center">
		<input type="submit" value="Save Contact" onClick="return confirm('Are u sure want to submit it')";/>
		<br>
		<button><a href="/ViewAll">View All Contacts</a></button>
		</section>
		</form>
		
</body>
</body>
</html>