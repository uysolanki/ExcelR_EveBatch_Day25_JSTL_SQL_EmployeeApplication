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
String ename=request.getParameter("t2");
int sal=Integer.parseInt(request.getParameter("t3"));
String gen=request.getParameter("gender");
String dname=request.getParameter("dept");
%>

<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/exeevedb"  
     user="root"  password=""/>  
     
<sql:update dataSource="${db}" var="count">  
insert into employee values(?,?,?,?,?)  
<sql:param value="<%= eno %>" />
<sql:param value="<%= ename %>" />  
<sql:param value="<%= sal %>" />  
<sql:param value="<%= gen %>" />  
<sql:param value="<%= dname %>" />    
</sql:update>

<c:if test="${count>0}">
<h1> Record Inserted for Employee <%= ename %> </h1>
</c:if>
</body>


</html>