<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="mpcss.css">
<div class="topnav" id="myTopnav">
<a href="bolly.jsp">BOLLYWOOD</a>
</div>
<center>
<body  background="book.jpg">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
<%! String name, certificate, language,quality, voting, duration, cast, director, location, time, release, about, photo;
int cost, movie_id;
%>

<% 
try
{
	Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/globsyn", "user", "user123"); 
Statement ss=con.createStatement();
String sql="select * from admin ";
ResultSet rs=ss.executeQuery(sql);
while(rs.next())
{
	 movie_id=rs.getInt(1);
	 name=rs.getString(2);
	certificate=rs.getString(3);
	language=rs.getString(4);
	quality=rs.getString(5);
	voting=rs.getString(6);
	duration=rs.getString(7);
	cost=rs.getInt(8);
	 cast=rs.getString(9);
	 director=rs.getString(10);
	 location=rs.getString(11);
	 time=rs.getString(12);
	release=rs.getString(13);
	 about=rs.getString(14);
	 photo=rs.getString(15); %>


<a href='mov1.jsp?name=<%=photo%>'><img src="http://localhost:8084/Movie/<%=photo %>"  height="300" width="300"></a>


<% } 
}
catch(Exception e)
{
	out.println(e);
}
%>



</body>
</center>
</html>
