<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1 style="color:red">Employee Management System</h1>
<a href="home.jsp">HOME</a>&emsp;&emsp;
<a href="about.jsp">ABOUT_US</a>&emsp;&emsp;
<a href="contact.jsp">CONTACT_US</a>&emsp;&emsp;
<a href="reg.jsp">REGISTER</a>&emsp;&emsp;
<a href="login.jsp">LOGIN</a>&emsp;&emsp;
<p></p>
<p></p>
<form method="post" action="SelectCode.jsp">
<h3>Show Employee Details</h3>
Enter Employee Name:<input type="text" name="ename">
<input type="submit" value="DisplayRecord">
</center>
</body>
</html>