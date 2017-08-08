<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
int movie_id=0;
String name=null;
String certificate=null;   
String voting=null;
int cost=0;
String quality=null;
String language=null;
String duration=null;
String director=null;
String cast=null;
String location=null;
String time=null;
String release=null;
String about=null;
String photo=null;%>
<%

try
{
	Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection("jdbc:mysql://localhost:3306/globsyn","user","user123");
ps=con.prepareStatement("select * from admin");
rs=ps.executeQuery();
%>

<table align="center" border="4" bgcolor="cyan" cellpadding="2">

<thead>
<th>Movie_ID</th>
<th>Name</th>
<th>Certificate</th>
<th>Language</th>
<th>Quality</th>
<th>Voting</th>
<th>Duration</th>
<th>Cost</th>
<th>Cast</th>
<th>Director</th>
<th>Location</th>
<th>Movie_Time</th>
<th>Release_Date</th>
<th>About</th>
<th>Photo</th>


</thead>
<% while(rs.next())
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
     photo=rs.getString(15);
	 %>
	 <tr>
	 <td bgcolor="white"> <font color="blue"><%=movie_id %></font></td>
      <td bgcolor="white"> <font color="blue"><%=name %></font></td>
	  <td bgcolor="white"> <font color="blue"><%=certificate %></font></td>
	   <td bgcolor="white"> <font color="blue"> <%=language %></font></td>
	    <td bgcolor="white"> <font color="blue"><%=quality %></font></td>
	     <td bgcolor="white"> <font color="blue"><%=voting %></font></td>
	     <td bgcolor="white"> <font color="blue"><%=duration %></font></td>
	   <td bgcolor="white"> <font color="blue"> <%=cost %></font></td>
	   <td bgcolor="white"> <font color="blue"> <%=cast %></font></td>
	   <td bgcolor="white"> <font color="blue"> <%=director %></font></td>
	    <td bgcolor="white"> <font color="blue"> <%=location %></font></td>
	    <td bgcolor="white"> <font color="blue"> <%=time %></font></td>
	    <td bgcolor="white"> <font color="blue"> <%=release %></font></td>
       <td bgcolor="white"> <font color="blue"> <%=about %></font></td>	    
<td bgcolor="white"> <font color="blue"> <%=photo %></font></td>
	   <td bgcolor="white"> <font color="red"><a href='finalUpdate.jsp?name1=<%=movie_id%>'>UPDATE</a></font></td>
	
	<td bgcolor="white"> <font color="red"><a href='delete.jsp?name2=<%=movie_id%>'>DELETE</a></font></td>
		</tr>
		<%}


}
catch(Exception e)
{
	out.println(e);
}

%>
		
		</table>
		


</body>
</html>