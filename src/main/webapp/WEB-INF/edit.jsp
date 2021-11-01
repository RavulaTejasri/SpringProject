<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Phone Book App</title>
</head>
<body>
<form  action="/editpost" method="post">
		<table style="with: 50%">
           <tr>
				<td>Id</td>
				<td><input type="number" name="id" value=${contact.id} required readonly/></td>
			</tr>
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
		<input type="submit" value="Save Contact" />
		<br>
		<button><a href="/ViewAll">View All Contacts</a></button>
		
		</form>
		
</body>
</body>
</html>