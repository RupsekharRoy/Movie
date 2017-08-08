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
<%  String mid=request.getParameter("name1");
movie_id=Integer.parseInt(mid);%>
<form action="update.jsp">
Movie ID:<input type="text" name="t1" value='<%=movie_id %>'><br>
Enter Movie Name:<input type="text" name="t2"><br>
Enter Movie certificate:<input type="text" name="t3"><br>
Enter Movie Language:<input type="text"  name="t4"><br>
Enter Movie Quality:<input type="text" name="t5"><br>
Enter Movie Voting:<input type="text" name="t6"><br>
Enter Movie Duration:<input type="text" name="t7"><br>
Enter Movie Cost:<input type="text"  name="t8"><br>
Enter Star casting:<input type="text" name="t9"><br>
Enter Movie Director:<input type="text" name="t10"><br>
Enter Movie Location:<input type="text" name="t11"><br>
Enter Movie Time:<input type="text" name="t12"><br>
Enter Movie Release Date:<input type="text" name="t13"><br>
Enter About :<input type="text" name="t14"><br>
Enter photo:<input type="file" name="15">


<input type="submit" value="UPDATE">
</form>
</body>
</html>