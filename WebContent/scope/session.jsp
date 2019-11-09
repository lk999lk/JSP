<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		session.setAttribute("hello","world");
		//request.getRequestDispatcher("rq1.jsp").forward(request, response);
		response.sendRedirect("ss1.jsp");
	%>
	
	<%=
		session.getAttribute("hello")
	%>
</body>
</html>