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
		application.setAttribute("hello","world");
		//request.getRequestDispatcher("rq1.jsp").forward(request, response);
		response.sendRedirect("ap1.jsp");
	%>
	
	<%=
		application.getAttribute("hello")
	%>
</body>
</html>