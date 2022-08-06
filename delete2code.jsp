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
<%

String password=request.getParameter("psw");
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","employeedb","employeedb");
	PreparedStatement ps=con.prepareStatement("delete  from userreg where password=?");
	ps.setString(1,password);
	
 int i= ps.executeUpdate();
	out.println("delete record sucessfully");
	con.close();
}
catch(Exception ex)
{
	out.print(ex);
}


%>
</body>
</html>