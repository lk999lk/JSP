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
	out.print(session.getAttribute("uname"));
	Cookie[] cookies = request.getCookies();
	for (Cookie cookie : cookies){
		if(cookie.getName().equals("JSESSIONID")){
			out.print("JSESSIONID" + cookie.getValue()+"<br/>");
			
			out.println("sessionId" + session.getId());
		}
		
	}
	%>
</body>
</html>