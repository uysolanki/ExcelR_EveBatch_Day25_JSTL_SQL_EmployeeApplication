<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
<%@ page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/exeevedb"  
     user="root"  password=""/>  
     
<sql:query dataSource="${db}" var="rs">  
SELECT * from employee  
</sql:query>  

<table border="1" class="table table-dark">
	<tr>
		<th> ENO </th>
		<th> ENAME </th>
		<th> SALARY </th>
		<th> GENDER </th>
		<th> DEPT NAME </th>
		<th> DELETE </th>
	<tr>
 
<c:forEach var="row" items="${rs.rows}">
<tr>
<td><c:out value="${row.eno}"></c:out>  </td>
<td><a href="https://www.google.co.in/search?q=${row.ename}"><c:out value="${row.ename}"></c:out> <a></td>
<td><c:out value="${row.salary}"></c:out>  </td>
<td><c:out value="${row.gender}"></c:out>  </td>
<td><c:out value="${row.dept}"></c:out> <br>
<td><a href="delete-emp.jsp?t1=${row.eno}" class="btn btn-danger">DELETE</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>