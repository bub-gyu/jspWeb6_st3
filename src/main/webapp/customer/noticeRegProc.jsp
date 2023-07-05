<%@page import="customer.vo.Notice"%>
<%@page import="customer.dao.NoticeDao"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
<%
	request.setCharacterEncoding("utf8");	
	
	String title= request.getParameter("title");
	String writer= request.getParameter("writer");
	String content= request.getParameter("content");
	
		Notice n=new Notice();
		
		
		n.setTitle(title);
		n.setContent(content);
		

		NoticeDao dao=new NoticeDao();
		
		dao.write(n);	
	

	response.sendRedirect("notice.jsp");
%>

</body>
</html>