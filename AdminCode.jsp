<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
if(name.equals("admin") && password.equals("admin")){
response.sendRedirect("adminhome.jsp");
}
else{
	response.sendRedirect("wrong.jsp");
}

%>
</body>
</html>