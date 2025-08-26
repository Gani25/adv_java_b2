<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session TODO DEMO</title>
</head>
<body>


	<form action="#" method="get">
		<input type="text" placeholder="Enter Task" name="task"> <br>
		<br>
		<button type="submit">Add Task</button>

	</form>

	<hr>
	<h1>All Tasks Are:</h1>

	<ol>
		<%
		String task = request.getParameter("task");

		List<String> tasks = (List<String>) session.getAttribute("my_task_list");
		if (tasks == null) {
			tasks = new ArrayList<>();
		}

		if (task != null && !task.isBlank()) {
		session.setAttribute("my_task_list", tasks);
			if (!tasks.contains(task.trim())) {

				tasks.add(task.trim());
			}

		}

		for (String ele : tasks) {
			out.print("<li>" + ele + "</li>");
		}
		
		// session.setMaxInactiveInterval(60*60); // 1 hour
		session.setMaxInactiveInterval(60); // 1 min
		
		if(tasks.size() >=6){
			
		session.removeAttribute("my_task_list");
		session.invalidate();
		}
		%>
	</ol>



</body>
</html>