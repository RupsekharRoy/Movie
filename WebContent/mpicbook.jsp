<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<thead>
<th> Location</th>
<th>Timing</th>
</thead>
<%! Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
String Location;
String timing;
String str1;

int i,j;

%>
<% 
try
{
 str1=request.getParameter("name1"); 
out.println(str1);
if(str1.equals("Ae Dil Hain Muskil"))
{
out.println("Book the ticket for Aye dil");	
Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/globsyn","user","user123");
		out.println("connected");
		ps=con.prepareStatement("select Location, movie_time from admin where movie_name=?");
		ps.setString(1, str1);
		out.println(ps);
		rs=ps.executeQuery();
		out.println(rs);
		out.println("done");
		if(rs.next())
		{
			out.println("hi");
			Location=rs.getString("Location");
			timing =rs.getString("movie_time");
			out.println(Location + timing);
		}
	String[]	loc=Location.split(",",-1);
	String[]	time=timing.split(",",-1);
		for( i=0;i<loc.length;i++)
		{
			for( j=0 ;j<time.length;j++)
			{  
			System.out.println(loc[i] + " "+time[j]);
			
			%>
			<tr>
			<td><%=loc[i] %></td>
			<td><%=time[j] %></td>
			</tr>
				
		<% 	}
		}
		
		
}

}
catch(Exception e)
{
	out.println(e);
}
%>
</table>
</body>
</html>