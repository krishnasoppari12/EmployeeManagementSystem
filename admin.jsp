<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.tb{
border:2px solid black;
 width:600px;
 height:600px;
margin:50px 0px 0px 480px;
background-color:cyan;
}
.tb1{

border:2px solid black;
margin:50px 0px 0px 0px;
 width:300px;
 height:100px;
background-color:grey;
}
</style>
</head>
<body>
<div  class="tb">
<center>
<h1 style="color:red">Employee Management System</h1>
<a href="home.jsp">HOME</a>&emsp;&emsp;
<a href="about.jsp">ABOUT_US</a>&emsp;&emsp;
<a href="contact.jsp">CONTACT_US</a>&emsp;&emsp;
<a href="reg.jsp">REGISTER</a>&emsp;&emsp;
<a href="login.jsp">LOGIN</a>&emsp;&emsp;
<a href="admin.jsp">ADMIN</a>
<h1> WelCome Admin Page</h1>

<form action="AdminCode.jsp" method="post">
<div class="tb1">
Name:<input type="text" name="uname"><br/><br/>
Password:<input type="password" name="psw"><br/><br/>
<input type="submit" value="Login">
</div>
</form>
</center>
</div>
</body>
</html>