<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Info</title>
</head>
<body>

	<h1>Student Information</h1>

<form action="<%=request.getContextPath()%>/student-response.jsp" method="post">
	First Name:
	<input type="text" name="fname">
	<br>
	<br> Last Name:
	<input type="text" name="lname">
	<br>
	<br> Gender:
	<input type="radio" name="gender" value="Male" id="m">
	<label for="m">Male</label>
	<input type="radio" name="gender" value="Female" id="f">
	<label for="f">Female</label>
	<input type="radio" name="gender" value="Other" id="o">
	<label for="o">Other</label>

	<br>
	<br> Country:
	<select name="country">
		<option>India</option>
		<option>China</option>
		<option>USA</option>
		<option>UK</option>
		<option>France</option>
		<option>Australia</option>
	</select>

	<br>
	<br> Skills:
	<input type="checkbox" name="skills" value="C Programming" id="C">
	<label for="C">C programming</label>
	<input type="checkbox" name="skills" value="C++ Programming" id="Cpp">
	<label for="Cpp">C++ programming</label>
	<input type="checkbox" name="skills" value="Js Programming" id="js">
	<label for="js">Javascript</label>
	<input type="checkbox" name="skills" value="Java Programming" id="java">
	<label for="java">Java</label>

	<br>
	<br>
	<input type="submit" value="save">

</form>



</body>
</html>