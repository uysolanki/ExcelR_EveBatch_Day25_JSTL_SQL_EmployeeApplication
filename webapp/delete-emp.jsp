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
     
<sql:update dataSource="${db}" var="count">  
delete from employee where eno =<%= eno %>
</sql:update>

<c:if test="${count>0}">
<h1> Record Deleted for Employee Number <%= eno %> </h1>
</c:if>
</body>
</html>