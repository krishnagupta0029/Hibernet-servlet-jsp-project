<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>College Project Management</title>
</head>
<body>
	<center>
		<h1>College Project Management</h1>
        <h2>
        	<a href="new">Add New Project</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="list">List Of All Projects</a>
        	
        </h2>
	</center>
    <div align="center">
		<c:if test="${user != null}">
			<form action="update" method="post">
        </c:if>
        <c:if test="${user == null}">
			<form action="insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
            	<h2>
            		<c:if test="${user != null}">
            			Edit Details
            		</c:if>
            		<c:if test="${user == null}">
            			Add New Project
            		</c:if>
            	</h2>
            </caption>
        		<c:if test="${user != null}">
        			<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
        		</c:if>            
            <tr>
                <th>Student Name: </th>
                <td>
                	<input type="text" name="studentname" size="45"
                			value="<c:out value='${user.studentname}' />"
                		/>
                </td>
            </tr>
            <tr>
                <th>Project Name: </th>
                <td>
                	<input type="text" name="projectname" size="45"
                			value="<c:out value='${user.projectname}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Project Description: </th>
                <td>
                	<input type="text" name="projectdescription" size="45"
                			value="<c:out value='${user.projectdescription}' />"
                	/>
                </td>
            </tr>
            <tr>
            	<td colspan="2" align="center">
            		<input type="submit" value="Save" />
            	</td>
            </tr>
        </table>
        </form>
    </div>	
</body>
</html>
