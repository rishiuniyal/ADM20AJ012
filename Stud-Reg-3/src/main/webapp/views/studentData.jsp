<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
table{

background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(46,148,101,1) 35%, rgba(0,212,255,1) 100%);
border:3px solid black;
font-size:25px;
margin:5px auto;
padding:15px;
color:white;

}

tr{
height:45px;
}

a:hover{
background-color: Blue;
}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style=text-align:center>Student Details!</h1>
<table>
<tr>
<td>ID:</td>
<td>${student.studId}</td><br><br>
</tr>
<tr>
<td>Name:</td>
<td>${student.studName}</td><br><br>
</tr>
<tr>
<td>Gender:</td>
<td>${student.studGen}</td><br><br>
</tr>
<tr>
<td>Course:</td>
<td>${student.studCourse}</td><br><br>
</tr>
<tr>
<td>Timings:</td>
<td><c:forEach items="${student.studTim}" var="t">
${t}
</c:forEach></td>
</tr>
<tr>
<td><a href="loadform"/ style=color:white>Back</td>
</tr>
</table>
</body>
</html>