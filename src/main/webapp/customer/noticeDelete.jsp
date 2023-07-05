<%@page import="customer.dao.NoticeDao2"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notices 삭제 </title>
</head>
<body>
<%
	

	String seq= request.getParameter("c");


	NoticeDao2 dao=new NoticeDao2();
	int del=dao.delete(seq);
	

	
	if(del>0){
		
	response.sendRedirect("notice.jsp");
	
	}else{
		
	response.sendRedirect("noticeDetail.jsp?seq="+seq);
	}
%>

</body>
</html>