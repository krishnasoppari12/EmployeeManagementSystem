<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("uname");
String password=request.getParameter("psw");
String email=request.getParameter("mail");
String mobileNumber=request.getParameter("mnum");
String address=request.getParameter("addr");

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","employeedb","employeedb");
	PreparedStatement ps=con.prepareStatement("update userreg set password=?,email=?,mobileNumber=?,address=? where name=?");
	
	ps.setString(1,password);
	ps.setString(2,email);
	ps.setString(3,mobileNumber);
	ps.setString(4,address);
	ps.setString(5,name);
	
	int i=ps.executeUpdate();
	out.println(i+"   One Record Has Been Inserted");
	con.close();
}catch(Exception ex){
	out.print(ex);
}

%>
</body>
</html>