<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %> 
    <%@ page import="java.util.List" %>
    <%@ page import="com.practice.model.Regulation" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Regulation</title>
<link href="/css/userpage.css" rel="stylesheet">
	<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Carattere&display=swap" rel="stylesheet">  <!-- font-family: 'Carattere', cursive; -->
<script src="https://kit.fontawesome.com/da37389ee8.js" crossorigin="anonymous"></script>

</head>
<body>
	<h1 style="text-align:center;font-family:'Montserrat',sans-serif;padding-top:40px;">Regulation</h1>
	<%
	List<Regulation> reglist=(List<Regulation>)request.getAttribute("reglist");
	for(int i=0;i<reglist.size();i++){
	%>
		
	<div style="border:solid 1px; padding:50px 100px;margin:50px;">
		<%=reglist.get(i).getRegContent() %>
	</div>
	<% }%>
	<a href="/userpage" class="btn btn-primary" style="margin:0 50px;">Back</a>
</body>
</html>