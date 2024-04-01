<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Form Details</title>
<link rel="stylesheet" type="text/css" href="viewForm.css">

</head>
<body>
	
	<div class="container">
	<h1>This is your Help requests</h1>
	<table>
	
	<tr>
		<th>Form ID</th>
		<th>Name</th>
		<th>Email</th>
		<th>Category</th>
		<th>Subject</th>
		<th>Description</th>
	</tr>
	<c:forEach var="form" items="${formDetails}">
	
	<c:set var="id" value="${form.id}"/>
	<c:set var="name" value="${form.name}"/>
	<c:set var="email" value="${form.email}"/>
	<c:set var="category" value="${form.category}"/>
	<c:set var="subject" value="${form.subject}"/>
	<c:set var="description" value="${form.description}"/>
	<tr>
		<td>${form.id}</td>
		<td>${form.name}</td>
		<td>${form.email}</td>
		<td>${form.category}</td>
		<td>${form.subject}</td>
		<td>${form.description}</td>
	</tr>	
	
	

	</c:forEach>
	</table>
	
	<br>
	
	<div class="button-container">
	
	<c:url value="HelpFormUpdate.jsp" var="formupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="category" value="${category}"/>
		<c:param name="subject" value="${subject}"/>
		<c:param name="description" value="${description}"/>
	</c:url>
	
	<a href="${formupdate}">
	<input type="button" name="update" value="Update Form">
	</a>

	<c:url value="HelpFormDelete.jsp" var="formdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="category" value="${category}"/>
		<c:param name="subject" value="${subject}"/>
		<c:param name="description" value="${description}"/>
	</c:url>
	<a href="${formdelete}">
	<input type="button" name="delete" value="Delete Form">
	</a>
	</div>
	</div>
</body>
</html>