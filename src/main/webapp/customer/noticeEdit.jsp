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
<h3>noticesEdit</h3>
<%
	request.setCharacterEncoding("utf8");	
	
	String seq= request.getParameter("c");
	System.out.println(seq);
	//if(true){
	//	return;
	//}

	Connection conn =null;
	Statement stmt=null;
	ResultSet rs=null;
	String sql="";	

	try{ 
		
		String driver ="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="hr";
		String pass="123456";
		
		Class.forName(driver); 
		conn = DriverManager.getConnection(url, user, pass);
		
		sql="select seq,title,writer,content,regdate,hit from notices where seq='"+seq+"'";
		//stmt=conn.prepareStatement(sql);
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		
		
%>
<%

	if(rs.next()){
		


%>
<form action="noticeEditProc.jsp" method="post">
<input type="hidden" name="c" value="<%=seq %>"/> 
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
 	 			<td><%=rs.getString("seq") %></td>	
  				<th class="left">조회수</th>
 	 			<td><%=rs.getInt("hit") %></td>		 			
 	 		</tr>
 		 	<tr>
 				<th class="left">작성자</th>
 	 			<td> <input type="text" name="writer" value="<%=rs.getString("writer") %>"/> </td>	
 	 			
  				<th class="left">작성시간</th>
 	 			<td><%=rs.getDate("regdate") %></td>		 			
 	 		</tr>	 			
 	 			
  		 	<tr>
 				<th class="left">제목</th>
 	 			<td colspan="3"><input type="text" name="title" value="<%=rs.getString("title") %>" class=inp/></td>	
	 			
 	 		</tr>		 			
 	 			
 	  		 <tr>
 				<th class="left">내용</th>
 	 			<td colspan="3" id="content">
 	 			
 	 			<textarea id="content" name="content" rows="5" cols="33" class="txt"><%=rs.getString("content") %></textarea>
          		</td>	
	 			
 	 		</tr> 			
  	  		 <tr>
 				<th class="left">첨부</th>
 	 			<td colspan="3">첨부</td>	
	 			
 	 		</tr> 	 			
 	 			
 	 					

		</tbody>

 <tr>
 
 </tr>
 </table>

 <input type="submit" value="수정"/> 
 <a href="./noticeDetail.jsp?c=<%=rs.getString("seq") %>">취소</a>

</form>
 

<%
	}
	System.out.println("edit");
	
	}catch(Exception e){
	
	out.print("실패");
	e.printStackTrace();
	
	}finally{
	
	if(stmt !=null) try{stmt.close();}catch(Exception e2){}
	if(conn !=null) try{conn.close();}catch(Exception e2){}	
	
	}
%>
</body>
</html>