<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>College Project Management</title>
</head>
<body>
	<center>
		<h1><b>College Project Management</b></h1>
        <h2>
        	<a href="new">Add New Project</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="list">List Of All Projects</a>
        	
        </h2>
	</center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Students With Their Projects</h2></caption>
            <tr>
                <th>ID</th>
                <th>Student Name</th>
                <th>Project</th>
                <th>Project Description</th>
                <th>Operations</th>
            </tr>
            <c:forEach var="user" items="${listUser}">
                <tr>
                    <td><c:out value="${user.id}" /></td>
                    <td><c:out value="${user.studentname}" /></td>
                    <td><c:out value="${user.projectname}" /></td>
                    <td><c:out value="${user.projectdescription}" /></td>
                    <td>
                    	<a href="edit?id=<c:out value='${user.id}' />">Edit Details</a>
                  		&nbsp;&nbsp;&nbsp;&nbsp;
                    	<a href="delete?id=<c:out value='${user.id}' />">Delete</a>                    	
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>	
</body>
</html>
