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
 <table border=1>
<%

try{
	String name=request.getParameter("ename");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","employeedb","employeedb");
	PreparedStatement ps=con.prepareStatement("select * from userreg where name=?");
	ps.setString(1,name);
	ResultSet rs=ps.executeQuery();
	ResultSetMetaData rss=rs.getMetaData();
	int n=rss.getColumnCount(); //n=7
			for(int i=1;i<=n;i++)
			out.println("<td><font color=blue size=3>"+"<br>"+rss.getColumnName(i));
	
	out.println("<tr>");
	
	while(rs.next()){
		for(int j=1;j<=n;j++)
			out.println("<td><br>   "+rs.getString(j));
			out.println("<tr>");
		
		out.println("</table>");
	}
	con.close();
}
	catch(Exception ex){
		System.out.println(ex);
	}


%>
</body>
</html>