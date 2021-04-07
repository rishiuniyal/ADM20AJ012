<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<style>
form{
background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(46,148,101,1) 35%, rgba(0,212,255,1) 100%);
margin:10px auto;
border:3px solid black;
width:35%;
padding:20px;
color: white;

}
h1{
text-align:center;
}

input[type=submit]
{
background-color:transparent;
padding:10px 25px;
border-radius: 20px;
border:3px solid white;
color:white;

}

input[type=submit]:hover
{
background-color: grey;
}

</style>
<meta charset="ISO-8859-1">
<title>Student Registration</title>
</head>
<body>
<h1>Student Registration</h1>
<form:form action="saveStudent" method="post" modelAttribute="student">

Student ID:<form:input path="studId" />
<br><br>
Student Name:<form:input path="studName"/>
<br><br>
Gender:
<form:radiobuttons path="studGen" items="${genders}"/>
<br><br>
Course:<form:select path="studCourse" >
<form:options items="${courses}"/>
</form:select><br><br>
Timings:
<form:checkboxes path="studTim" items="${timings}"/>
<br><br>
<input type="submit" value="Submit"> 
</form:form>


</body>
</html>