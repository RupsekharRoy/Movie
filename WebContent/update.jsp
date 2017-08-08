<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! int movie_id=0; %>
<% 
try
{

String mid=request.getParameter("t1");
movie_id=Integer.parseInt(mid);

String name=request.getParameter("t2");
String Certificate=request.getParameter("t3");
String Language=request.getParameter("t4");
String quality=request.getParameter("t5");
String voting=request.getParameter("t6");
String Duration=request.getParameter("t7");
int cost=Integer.parseInt(request.getParameter("t8"));
String Cast=request.getParameter("t9");
String Director=request.getParameter("t10");
String Location=request.getParameter("t11");
String movie_time=request.getParameter("t12");
String movie_release=request.getParameter("t13");
String movie_about=request.getParameter("t14");
String photo=request.getParameter("t15");



Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/globsyn","user","user123");
PreparedStatement ps=con.prepareStatement("update admin set name=?, Certificate=?, Language=?,quality=?,voting=?, Duration=?, cost=?,Cast=?,Director=?  ,Location=?,Movie_time=?,Release Date=?,About=?,photo=? where Movie_id=? ");
ps.setString(1,name);
ps.setString(2,Certificate);
ps.setString(3, Language);
ps.setString(4, quality);
ps.setString(5, voting);
ps.setString(6, Duration);
ps.setInt(7, cost);
ps.setString(8, Cast);
ps.setString(9, Director);
ps.setString(10, Location);
ps.setInt(11,movie_id);
ps.setString(12, movie_time);
ps.setString(13, movie_release);
ps.setString(14, movie_about);
ps.setString(15, photo);

int i=ps.executeUpdate();
if(i>0)
{
	out.println("Sucessfully updated");
}}
catch(Exception e)
{
	out.println(e);
}

%>

</body>
</html>