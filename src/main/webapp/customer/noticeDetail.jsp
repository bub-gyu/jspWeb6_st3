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
<link rel="stylesheet" href="../css/nstyle.css" />
</head>
<body>
<h3>noticesDetail</h3>
<%
	request.setCharacterEncoding("utf8");	
	
	String seq= request.getParameter("c");
	System.out.println("게시글번호"+seq);
	//if(true){
	//	return;
	//}
	NoticeDao2 dao=new NoticeDao2();
	
	Notice n=dao.getNotice(seq);
	
	


	
		
		
%>
<%


		


%>
<table  class="twidth">
	<colgroup>
		<col width=15%/>
		<col width=35%/>
		<col width=15%/>
		<col width=35%/>	
	</colgroup>
	<caption>Detail</caption>
		<tbody>
		 	<tr>
 				<th class="left">글번호</th>
 	 			<td><%=n.getSeq() %></td>	
  				<th class="left">조회수</th>
 	 			<td><%=n.getHit() %></td>		 			
 	 		</tr>
 		 	<tr>
 				<th class="left">작성자</th>
 	 			<td><%=n.getWriter() %></td>
  				<th class="left">작성시간</th>
 	 			<td><%=n.getRegedat() %></td>		 			
 	 		</tr>	 			
 	 			
  		 	<tr>
 				<th class="left">제목</th>
 	 			<td colspan="3"><%=n.getTitle() %></td>	
	 			
 	 		</tr>		 			
 	 			
 	  		 <tr>
 				<th class="left">내용</th>
 	 			<td colspan="3" id="content"><%=n.getContent() %></td>	
	 			
 	 		</tr> 			
  	  		 <tr>
 				<th class="left">첨부</th>
 	 			<td colspan="3">첨부</td>	
	 			
 	 		</tr> 	 			
 	 			
 	 					

		</tbody>

 <tr>
 
 </tr>
 </table>
 
 <hr />
<a href="./noticeEdit.jsp?c=<%=n.getSeq() %>">수정</a> &nbsp;&nbsp;
<a href="./noticeDelete.jsp?c=<%=n.getSeq() %>">삭제</a> &nbsp;&nbsp;
<a href="./notice.jsp">목록</a> &nbsp;&nbsp;
<%

	System.out.println("내용보기 성공");
	

%>
</body>
</html>