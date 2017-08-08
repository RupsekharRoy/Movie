<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<center>
<body background="ffinalmov2.jpg">
<br>
<br>
<br>
<br>
<%!
int i;
int counter=1;
int sl; 
String username,ok,location, booking_id;
%>
<% try
{
String ok=request.getParameter("btn1");
if(ok.equalsIgnoreCase("ok"))
{
	int nos=Integer.parseInt(request.getParameter("t2"));
	
	out.println(nos);
	out.println("<br>");
	String mvname=(String)application.getAttribute("key1");
	out.println(mvname);
	out.println("<br>");
	int bid1=mvname.indexOf(mvname.charAt(0), mvname.charAt(3));
	
	int bid2=ok.indexOf(ok.charAt(1));
	String email=(String)application.getAttribute("key3");
	out.println(email);
	out.println("<br>");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/globsyn","user","user123");
	PreparedStatement ps1=con.prepareStatement("select  name from regmovie where email=?");
	ps1.setString(1,email);
	ResultSet rs=ps1.executeQuery();
	if(rs.next())
	{
		username=rs.getString("name");
	}
	location=(String)application.getAttribute("keyloc");
	out.println(location);
	out.println("<br>");
	booking_id=bid1+bid2+username.substring(0,1)+location.substring(0,2)+(++counter);
	out.println(booking_id);
	out.println("<br>");
	PreparedStatement ps2=con.prepareStatement("insert into booking_info values(?,?,?,?,?)");
	ps2.setString(1, booking_id);
	ps2.setInt(2, counter+nos);
	ps2.setString(3, mvname);
	ps2.setString(4,username);
	ps2.setString(5, location);
	int j=ps2.executeUpdate();
	if(j>0)
	{
		out.println("sucessfully inserted");
	}
	
}
}
catch(Exception e)
{
	out.println(e);
}
String time=request.getParameter("t1");
String nos=request.getParameter("t2");
int nos1=Integer.parseInt(nos);
String cost=request.getParameter("t3");
int price1=Integer.parseInt(cost);
int Totalprice=(nos1*price1);
out.println("<br>TOTAL TICKET PRICE="+Totalprice);

%> 

<p><h3 style="color:blue">Your movie ticket is booked successfully...THANK YOU!!:)</h3>
<form action="finalmov3.html"><input type="submit" value="ok" size="800"></form>
</body>
</center>
</html>