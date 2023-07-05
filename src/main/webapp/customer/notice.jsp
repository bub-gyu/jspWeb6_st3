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
<h3>notices</h3>
<%
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
		
		sql="select seq,title,writer,content,regdate,hit from notices order by to_number(seq) desc";
		//stmt=conn.prepareStatement(sql);
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		
		
%>
<table border="1" width="500">
 <tr>
	<td>번호</td>	
	<td>제목</td>			
	<td>작성자</td>	
	<td>작성일</td>
	<td>조회수</td>	
					
 </tr>
	<!-- 아래tr를 반복 -->
<%

	while(rs.next()){
		


%>
 <tr>
	<td><%=rs.getString("seq") %></td>	
	<td><a href="./noticeDetail.jsp?c=<%=rs.getString("seq")%>"><%=rs.getString("title") %></a></td>			
	<td><%=rs.getString("writer") %></td>	
	<td><%=rs.getDate("regdate") %></td>
	<td><%=rs.getInt("hit") %></td>							
 </tr>
<%
	}
	System.out.println("리스트 성공");
	
	}catch(Exception e){
	
	out.print("실패");
	e.printStackTrace();
	
	}finally{
	
	if(stmt !=null) try{stmt.close();}catch(Exception e2){}
	if(conn !=null) try{conn.close();}catch(Exception e2){}	
	
	}


%>
	<!-- 아래tr를 반복끝 -->	
</table>
<hr />
<a href="./noticeReg.jsp">글쓰기</a> &nbsp;&nbsp;
<!-- <a href="./updateForm.jsp">수정</a> &nbsp;&nbsp;
<a href="./deleteForm.jsp">삭제</a> &nbsp;&nbsp; -->

</body>
</html>