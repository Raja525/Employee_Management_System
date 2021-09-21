<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %> 
    <%@ page import="java.util.List" %>
    <%@ page import="com.practice.model.Department" %>
    <%@ page import="com.practice.model.Employee" %>
    <%@ page import="com.practice.model.Regulation" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link href="/css/userpage.css" rel="stylesheet">
	<title>Home</title>
	<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Carattere&display=swap" rel="stylesheet">  <!-- font-family: 'Carattere', cursive; -->
<script src="https://kit.fontawesome.com/da37389ee8.js" crossorigin="anonymous"></script>
</head>
<body id="container">
	<div>
	<div id="navbar">
		<nav>EMS User Page</nav>
		<a href="/" style="float:right;position:absolute;top:20px;right:20px;">logout</a>
	</div>
	<div id="section1">
		<form action="showreg" method="post">
		<select name="deptId" class="form-control">
			<option>Select Department Name</option>
			<%
			List<Department> deptlist=(List<Department>)request.getAttribute("deptlist");
			for(int i=0;i<deptlist.size();i++){
			%>
				<option value="<%=deptlist.get(i).getDeptId()%>" ><%=deptlist.get(i).getDeptName() %></option>
			<%
			}
			%>
		</select>
		<button type="submit" class="btn btn-dark">Show Regulation</button>
		</form>
	</div>
	<div id="section2">
		<div style="text-align:center;font-family:'Montserrat',sans-serif;">Send Response/Commands</div>
		<form action="sendmsg" method="post">
			<select class="form-control">
				<option>Select Your Name</option>
				<%
			List<Employee> emplist=(List<Employee>)request.getAttribute("emplist");
			for(int i=0;i<emplist.size();i++){
			%>
				<option name="Name" value="<%=emplist.get(i).getEmpname()%>" ><%=emplist.get(i).getEmpname() %></option>
			<%
			}
			%>
			</select>
			<select class="form-control">
				<option>Select Your Department</option>
				<%
			
			for(int i=0;i<deptlist.size();i++){
			%>
				<option name="Dept" value="<%=deptlist.get(i).getDeptName()%>" ><%=deptlist.get(i).getDeptName() %></option>
			<%
			}
			%>
			</select>
			<textarea rows="6" cols="40" name="Commands" class="form-control"></textarea>
			<button class="btn btn-dark">send</button>
		</form>
	</div>
	<div id="img" style="box-shadow:2px 2px 10px;"></div>
	</div>
</body>
</html>