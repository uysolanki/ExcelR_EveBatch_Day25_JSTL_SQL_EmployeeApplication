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
</head>
<body>

<%
int eno=Integer.parseInt(request.getParameter("t1"));
%>

<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/exeevedb"  
     user="root"  password=""/>  
     
<sql:query dataSource="${db}" var="rs">  
SELECT * from employee where eno=<%= eno %>;  
</sql:query>  
<c:forEach var="t" items="${rs.rows}">
<c:out value="${t.eno}"></c:out> <br>
<c:out value="${t.ename}"></c:out> <br>
<c:out value="${t.salary}"></c:out> <br>
<c:out value="${t.gender}"></c:out> <br>
<c:out value="${t.dept}"></c:out>
</c:forEach>  
</body>
</html>