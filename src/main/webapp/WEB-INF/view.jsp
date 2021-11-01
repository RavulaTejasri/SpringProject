<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP - Hello World Tutorial - Programmer Gate</title>
</head>
<body style="background-color:pink">
   
         <h2 style="color:brown" align="center">Contacts </h2>
         <table >
<table border="1" align="center">
<tr>
<th>Id</th>
<th>Name</th>
<th>Email</th>
<th>Phone Number</th>
<th>Edit</th>
<th>Delete<th>
</tr>
         
         <c:forEach var="col" items="${m1}">
                <tr>
                <td>${col.id}</td>
                
                	<td>${col.name}</td>
                	<td>${col.email}</td>
                	<td>${col.num}</td>
                	<td><a href="del/${col.id}" onClick="return confirm('Are you sure want to delete it?');">Delete</a></td>
                	
                	<td><a href="update/${col.id}" onClick="return confirm('Are you sure want to Edit it?');">Edit</a></td>
                	
                </tr>
            </c:forEach>
    </table> 
    </div>  
</body>
</body>
</html>