<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("uname");
	String pwd = request.getParameter("upwd");
	
	//将用户名加入到Cookie中
	Cookie cookie = new Cookie("uname",name);
	cookie.setMaxAge(10);
	//Cookie cookie = new Cookie("name",name);
	response.addCookie(cookie);
	//response
	response.sendRedirect("result.jsp");
	%>
</body>
</html>