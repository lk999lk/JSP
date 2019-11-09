<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%="当前项目的虚拟路径"+application.getContextPath() + "<br/>"%>
	<%="虚拟路径对应的绝对路径"+application.getRealPath("/MyJspProject")  + "<br/>" %>
	<%!
		public String bookName;//全局变量
		public void init(){//方法
			Date date = new Date();
			bookName = "javashu" + date;
		}
	%>
	=============hello index1==========="<br/>"
	<%
		String name = "zhang";
	  	out.print("<font color='red'>hello</font>.. " + name + "<br/>");
	  	init();
	%>
	<%="he<br/>llo.. " + bookName %>
</body>
</html>