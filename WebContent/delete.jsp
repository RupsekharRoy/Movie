<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! int movie_id=0; %>
<%  String mid=request.getParameter("name2");
movie_id=Integer.parseInt(mid);%>
<form action="delete1.jsp">
Movie ID:<input type="text" name="t1" value='<%=movie_id %>'><br>
<input type="submit" value="Delete">
</body>
</html>