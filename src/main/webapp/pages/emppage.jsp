<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %> 
    <%@ page import="java.util.List" %>
    <%@ page import="com.practice.model.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link href="/css/common.css" rel="stylesheet">
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
                                <th scope="col">Edit</th>
                                <th scope="col">Delete</th>
                              </tr>
                            </thead>
                            <tbody>
                            	<%
                            	List<Employee> emplist=(List<Employee>)request.getAttribute("emplist");
                            	for(int i=0;i<emplist.size();i++)
                            	{
                            	%>
                            		<tr>                  
                            			<td><%=emplist.get(i).getEmpId() %></td>
                            			<td><%=emplist.get(i).getEmpname() %></td>
                            			<td><%=emplist.get(i).getEmpno() %></td>
                            			<td><%=emplist.get(i).getEmpdept() %></td>
                            			<td><form action="idedit" method="post"><button class="btn btn-warning" type="submit" name="edit" value="<%=emplist.get(i).getEmpId()%>">Edit</button></form></td>
                            			<td><form action="iddelete" method="post"><button class="btn btn-danger" type="submit" name="delete" value="<%=emplist.get(i).getEmpId()%>">Delete</button></form></td>
                            		
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