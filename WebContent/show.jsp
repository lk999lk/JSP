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
	//设置编码
	request.setCharacterEncoding("utf-8");
	//
	String name = request.getParameter("uname");
	int age = Integer.parseInt(request.getParameter("uage"));
	String pwd = request.getParameter("upwd");
	
	String hobbies[] = request.getParameterValues("uhobbies");
	%>
	注册成功，信息如下：<br/>
	姓名：<%=name %><br/>
	年龄：<%=age %><br/>
	密码：<%=pwd %><br/>
	爱好：<br/>
	<%
	if(hobbies != null){
		for(int i = 0; i<hobbies.length; i++){
			out.print(hobbies[i] + "&nbsp");
		}
	}
	
	%>
	<br/>
	
	
</body>
</html>