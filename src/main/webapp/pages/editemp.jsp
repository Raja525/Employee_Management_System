<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" import="java.util.List" %>
     <%@ page import="com.practice.model.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link href="/css/addemp.css" rel="stylesheet">
	<title>Home</title>
	<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/da37389ee8.js" crossorigin="anonymous"></script>
</head>
<body>
	<div id="box" class="row">
		<div class="col-md-2" id="sidebar">
            <a href="/login"><h2 id="header">EMS</h2></a>
            <a href="/addemp"><div class="links">Add Employee</div></a>
            <a href="/adddept"><div class="links">Add Department</div></a>
            <a href="/addreg"><div class="links">Add Regulation</div></a>
        </div>
        <div class="col-md-10" id="contentpage">
            <div id="formbox">
            <%
            		List<Employee> emplist=(List<Employee>)request.getAttribute("editemplist");
           // System.out.println(emplist);
            	for(int i=0;i<emplist.size();i++){
            %>
                <form action="empupdate" method="POST">
                	<input class="form-control" type="text" name="empId" placeholder="Employee Name" value="<%=emplist.get(i).getEmpId()%>">
                    <input class="form-control" type="text" name="empname" placeholder="Employee Name" value="<%=emplist.get(i).getEmpname()%>">
                    <input class="form-control" type="text" name="empno" placeholder="Mobile Number" value="<%=emplist.get(i).getEmpno()%>">
                    <input class="form-control" type="text" name="empdept" placeholder="Employee Department" value="<%=emplist.get(i).getEmpdept()%>">
                    <button name="btn" class="btn btn-primary" type="submit">Update</button>
                </form>
                <%
            	}
                %>
            </div>
        </div>
	</div>
</body>
</html>