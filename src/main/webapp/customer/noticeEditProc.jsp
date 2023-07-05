<%@page import="customer.vo.Notice"%>
<%@page import="customer.dao.NoticeDao2"%>
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

	String seq= request.getParameter("c");
	String title= request.getParameter("title");
	//String writer= request.getParameter("writer");
	String content= request.getParameter("content");

	Notice n=new Notice();
	
	n.setTitle(title);
	n.setContent(content);
	n.setSeq(seq);
	
	NoticeDao2 dao=new  NoticeDao2();
	
	//dao.update(n);
	dao.update2(seq, title, content);
		

	
	response.sendRedirect("notice.jsp");
%>

</body>
</html>