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
<h1 style="color:grey">New Employee Register Here</h1>
<table border=1>
<form action="RegisterCode.jsp" method="post">
<tr>
  <td>name:</td>
  <td><input type="text" name="uname"></td>
</tr>
<tr>
  <td>password:</td>
  <td><input type="password" name="psw"></td>
</tr>
<tr>
  <td>email:</td>
  <td><input type="email" name="mail"></td>
</tr>
<tr>
  <td>mobilenumber:</td>
  <td><input type="text" name="mnum"></td>
</tr>
<tr>
  <td>gender:</td>
  <td><input type="radio" name="gen" value="male">Male
  <input type="radio" name="gen" value="female">FeMale
  </td>
</tr>
<tr>
  <td>address:</td>
  <td><textarea name="addr" col=10 row=10></textarea></td>
</tr>
<tr>
  <td>Country:</td>
  <td><select name="country">
  <option value="India">India</option>
  <option value="USA">USA</option>
  <option value="Canada">canada</option>
  </select>
  </td>
</tr>
<tr>
<td></td>
<td>
<input type="submit" value="Register">
<input type="reset" value="Reset">
</td>
</tr>
</form>
</table>
</center>
</div>
</body>
</html>