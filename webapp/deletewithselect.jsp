<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
<%@ page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="f1" action="delete-emp.jsp" method="get">
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/exeevedb"  
     user="root"  password=""/>  
     
<sql:query dataSource="${db}" var="rs">  
SELECT * from employee  
</sql:query>


<select name="t1">
<c:forEach var="row" items="${rs.rows}">
					<option value="${row.eno}"><c:out value="${row.ename}"></c:out></option>
</c:forEach>
</select>
<input type="submit" value="Delete Employee" name="s1" class="btn btn-primary"> 
</body>
</html>