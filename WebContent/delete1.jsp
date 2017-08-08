<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.sql.*"  %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! int movie_id=0;
%>
<% 
try
{

String mid=request.getParameter("t1");
movie_id=Integer.parseInt(mid);
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/globsyn","user","user123");
PreparedStatement ps=con.prepareStatement("delete from admin where Movie_id=? ");
ps.setInt(1, movie_id);
int i=ps.executeUpdate();
if(i>0)
{
	out.println("Sucessfully deleted");
}}
catch(Exception e)
{
	out.println(e);
}

%>
</body>
</html>