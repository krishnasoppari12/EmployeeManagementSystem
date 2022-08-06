<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<p></p>
<%

String name=request.getParameter("uname");
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","employeedb","employeedb");
	PreparedStatement ps=con.prepareStatement("delete  from userreg where name=?");
	ps.setString(1,name);
	
 int i= ps.executeUpdate();
	out.println("delete record sucessfully");
	con.close();
}
catch(Exception ex)
{
	out.print(ex);
}


%>
</center>
</body>
</html>