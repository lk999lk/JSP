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
	
	if(name.equals("zs") && pwd.equals("abc")){
		//response.sendRedirect("success.jsp");//重定向导致数据丢失
		//请求转发,可以获取到数据，并且地址栏没有改变（仍然保留转发时的页面）
		request.getRequestDispatcher("success.jsp").forward(request, response);
	} else {
		out.print("用户名或密码有误");
	}
	%>
</body>
</html>