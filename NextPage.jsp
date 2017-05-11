<%
   String name = request.getParameter( "username" );
   session.setAttribute( "theName", name );
%>
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<BODY>
<div class="container-fluid">
	<div class="list-group">
  	<a class="list-group-item active">
    	Hello, <%= session.getAttribute( "theName" ) %>. The following is your information
  	</a>
  		<a class="list-group-item">The time is now <%= new java.util.Date() %></a>
  		<a class="list-group-item">Your Java version is <%= System.getProperty("java.version") %></a>
  		<a class="list-group-item">Your Java is located in <%= System.getProperty("java.home") %></a>
  		<a class="list-group-item">Your OS is <%= System.getProperty("os.name") %></a>
  		<a class="list-group-item">Your username is <%= System.getProperty("user.name") %></a>
	</div>
</div>
</BODY>
</HTML>