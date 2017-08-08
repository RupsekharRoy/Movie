<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="movi1.jpg">
&nbsp;

<table align="center" bgcolor="cyan" cellpadding="8" cellspacing="30" border="8" bordercolor="black">

<form action="finalmov1.jsp">
<thead>
<th>Movie Name</th>
<th>Location</th>
<th>Time</th>
<th>Ticket price perhead</th>
</thead> 
<%! Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
String name=null;
String location=null;
String time=null;
String imgName;
int cost=0;
%>
<%
imgName=request.getParameter("name");
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/globsyn","user", "user123"); 
ps=con.prepareStatement("select name,Location, Movie_time,cost from admin where photo=?");
ps.setString(1, imgName);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
	name=rs.getString("name");
	application.setAttribute("key1", name);
	location=rs.getString("Location");
	application.setAttribute("key55", location);
	time=rs.getString("Movie_time");
	cost=rs.getInt("cost");
}
%>
<tr>
<td><font color="white"><input type="text" name="t1" value='<%=name%>' size="7"></font>
<td><font color="white"> <select name="loc">
<option value="PVR">PVR</option>
<option value="INOX">INOX</option>
<option value="JAYA">JAYA</option>
</select></font>
<td><font color="white"><select name="time">
<option value="9:00A.M">9:00A.M</option>
<option value="12:00P.M">12:00P.M</option>
<option value="6:00P.M">6:00P.M</option>
</select></font>
<td><font color="white"><input type="text" name="t2" value='<%=cost%>' size="5"></font><input type="submit" value="Book Your Ticket"></td>
</tr>
</form>
</table>



</body>
</html>