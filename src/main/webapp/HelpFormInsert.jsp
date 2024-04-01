<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Help Form</title>
		<link rel="stylesheet" type="text/css" href="insertForm.css">
	</head>
	<body>
		<div class="container">
		
		<h1>Help Form</h1>
	      <form method="post" action="FormInsert">
	            <fieldset>
	                <legend>Help Form</legend>
	                
	                <div class="content">
	                    <label for="input_name">Enter your name:</label>
	                    <input type="text" name="Name" >
	                </div>
	                
	                <div class="content">
	                    <label for="input_email">Enter your email:</label>
	                    <input type="email" name="Email">
	                </div>
	                
	                <div class="content">
	                    <label for="select category">Select Category:</label>
	                    <select  name="Category">
	                    <option value="">-- Choose an option --</option>
	                    <option value="mathematics">Mathematics</option>
	                    <option value="science">Science</option>
	                    <option value="it">IT</option>
	                    <option value="business">Business</option>
	                    </select>
	                </div>
	                
	                <div class="content">
	                    <label for="input_subject">Enter your subject:</label>
	                    <input type="text" name="Subject">
	                </div>
	
	                <div class="content">
	                    <label for="input_description">Enter a Description:</label>
	                    <textarea name="Description"  rows="3"></textarea>
	                </div>
	                
	                <input type="Submit" name="Submit" value="Submit"/>
	            </fieldset>
	
	        </form>
	            <a href="#">
	            <input type="Button" name="home" value="Back to Homepage"></a>        
	        </div>
	</body>
</html>