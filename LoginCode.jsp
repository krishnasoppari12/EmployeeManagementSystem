`<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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

String email=request.getParameter("mail");
String password=request.getParameter("psw");
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","employeedb","employeedb");
	PreparedStatement ps=con.prepareStatement("select * from userreg where email=? and password=?");
	ps.setString(1,email);
	ps.setString(2,password);
	
	ResultSet rs= ps.executeQuery();
	if(rs.next()){
		response.sendRedirect("Userhome.jsp");
	}else{
		out.print("please enter valid email and password");
	}
	
}catch(Exception ex){
	out.print(ex);
}

%>


</body>
</html>