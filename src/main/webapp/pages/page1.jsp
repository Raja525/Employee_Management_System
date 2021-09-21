<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %> 
    <%@ page import="java.util.List" %>
    <%@ page import="com.practice.model.Employee" %>
    <%@ page import="com.practice.model.Department" %>
     <%@ page import="com.practice.model.Regulation" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link href="/css/page1.css" rel="stylesheet">
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
            <a href="/addemp"><div class="links"><i class="fas fa-user-plus fa-2x" style="color:#FF5C58;"></i> Add Employee</div></a>
            <a href="/adddept"><div class="links"><i class="fas fa-building fa-2x" style="color:#FFB344;"></i> Add Department</div></a>
            <a href="/addreg"><div class="links"><i class="fas fa-clipboard fa-2x" style="color:#3DB2FF;"></i> Add Regulation</div></a>
        </div>
        <div class="col-md-10" id="contentpage">
        	<nav id="navbar">
        		<a href="/" class="btn btn-warning">Logout</a>
        	</nav>
            <div class="row section">
            <div class="col-md-4">
               <a href="/emppage"><div class="littlebox" id="empbox">
                	<h4 style="font-family:'Montserrat',sans-serif;text-align:right;display:block;color:">EMPLOYEE</h4>
                	<p>
                		<span style="font-family:'Montserrat',sans-serif;">Functions</span><br>
                		<i style="padding:0 10px;">View Employee</i><br>
                		<i style="padding:0 10px;">Update Employee</i><br>
                		<i style="padding:0 10px;">Delete Employee</i><br>
                	</p>
                </div></a> 
            </div>
            <div class="col-md-4">
                <a href="/deptpage"><div class="littlebox" id="deptbox">
                	<h4 style="font-family:'Montserrat',sans-serif;text-align:right;display:block;color:">DEPARTMENT</h4>
                	<p>
                		<span style="font-family:'Montserrat',sans-serif;">Functions</span><br>
                		<i style="padding:0 10px;">View Department</i><br>
                		<i style="padding:0 10px;">Update Department</i><br>
                		<i style="padding:0 10px;">Delete Department</i><br>
                	</p>
                </div></a>
            </div>
            <div class="col-md-4">
                <a href="/regpage"><div class="littlebox" id="regbox">
                	<h4 style="font-family:'Montserrat',sans-serif;text-align:right;display:block;color:">REGULATION</h4>
                	<p>
                		<span style="font-family:'Montserrat',sans-serif;">Functions</span><br>
                		<i style="padding:0 10px;">View Regulation</i><br>
                		<i style="padding:0 10px;">Update Regulation</i><br>
                		<i style="padding:0 10px;">Delete Regulation</i><br>
                	</p>
                </div></a>
            </div>
            </div>
            <div class="section">
                <div>
                    <div class="littlebox table">
                        <table class="table">
                            <thead class="thead-dark">
                              <tr>
                                <th scope="col">Employee Id</th>
                                <th scope="col">Employee Name</th>
                                <th scope="col">Employee Number</th>
                                <th scope="col">Department</th>
                              </tr>
                            </thead>
                            <tbody>
                            <%
                            		List<Employee> list=(List<Employee>)request.getAttribute("emplist");
                            	for(int i=0;i<list.size();i++)
                            	{
                            %>
                            	<tr>
                            		<td><%=list.get(i).getEmpId() %></td>
                            		<td><%=list.get(i).getEmpname() %></td>
                            		<td><%=list.get(i).getEmpno() %></td>
                            		<td><%=list.get(i).getEmpdept() %></td>
                            	</tr>
                            	<%
                            	}
                            	%>
                            </tbody>
                          </table>
                    </div>
                    
                    <div class="littlebox table">
                        <table class="table">
                            <thead class="thead-dark">
                              <tr>
                                <th scope="col">Department Id</th>
                                <th scope="col">Department Name</th>                 
                              </tr>
                            </thead>
                            <tbody>
                            <%
                            		List<Department> deptlist=(List<Department>)request.getAttribute("deptlist");
                            	for(int i=0;i<deptlist.size();i++)
                            	{
                            %>
                            	<tr>
                            		<td><%=deptlist.get(i).getDeptId() %></td>
                            		<td><%=deptlist.get(i).getDeptName() %></td>                     
                            	</tr>
                            	<%
                            	}
                            	%>
                            </tbody>
                          </table>
                    </div>
                    
                    <div class="littlebox table">
                        <table class="table">
                            <thead class="thead-dark">
                              <tr>
                                <th scope="col">Department Id</th>
                                <th scope="col">Regulation Content</th>                 
                              </tr>
                            </thead>
                            <tbody>
                            <%
                            		List<Regulation> reglist=(List<Regulation>)request.getAttribute("reglist");
                            	for(int i=0;i<reglist.size();i++)
                            	{
                            %>
                            	<tr>
                            		<td><%=reglist.get(i).getDeptId() %></td>
                            		<td><%=reglist.get(i).getRegContent() %></td>                     
                            	</tr>
                            	<%
                            	}
                            	%>
                            </tbody>
                          </table>
                    </div>
        
                </div>
            </div>
        </div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>