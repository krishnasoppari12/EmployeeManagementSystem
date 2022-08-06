<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style="color:red">Employee Management System</h1>
<a href="home.jsp">HOME</a>&emsp;&emsp;
<a href="about.jsp">ABOUT_US</a>&emsp;&emsp;
<a href="contact.jsp">CONTACT_US</a>&emsp;&emsp;
<a href="reg.jsp">REGISTER</a>&emsp;&emsp;
<a href="login.jsp">LOGIN</a>&emsp;&emsp;

<h3> Delete Records</h3>
<table border="1">
<form method="post" action="deletecode.jsp">
<tr>
<td>
Enter Employee Id:
</td>
<td><input type="text" name="eid"></td>
<td><input type="submit" value="Delete">
</td>
</tr>


</form>


</table>

</body>
</html>