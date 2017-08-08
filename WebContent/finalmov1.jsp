<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<center>
<body background="ffinalmov1.jpg">



<%! String time=null;
int cost=0;
String location;
  %>
<%time=request.getParameter("time");
cost=Integer.parseInt(request.getParameter("t2"));
location=request.getParameter("loc");
application.setAttribute("keyloc",location);
%>

<form action="finalmov2.jsp">
&nbsp;


<h1><font color="black">Your Selected movie time  is:</font><input style="height:30px;font-size:20pt; type="text" name="t1" value=<%=time %>></h1>
<h1><font color="black">No of seats:<input style="height:30px;font-size:20pt; type="text" name="t2" size="3"></font></h1>
<h1><font color="black">Ticket price:<input style="height:30px;font-size:20pt; type="text" name="t3" value=<%=cost%> size="3"></font></h1>
<input type="submit"  name= "btn1" value="ok" >
</form>
</body>
</center>
</html>