<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student</title>
</head>
<body>

<h1>Student Info</h1>
<%
String firstName = request.getParameter("fname");
String lastName = request.getParameter("lname");
String gender = request.getParameter("gender");
String country = request.getParameter("country");
String[] skills = request.getParameterValues("skills");
%>
<h3>Name = <%=firstName +" " + lastName %></h3>
<p>Gender = <%=gender %></p>
<p>Country = <%=country %></p>
<p>Skills</p>
<ol>
<%
	
	for(String skill: skills){
		out.print("<li>"+skill+"</li>");
	}
%>
</ol>


</body>
</html>