<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
<h3>noticesDetail</h3>
<%
	request.setCharacterEncoding("utf8");	
%>
<form action="noticeRegProc.jsp" method="post">
<table  class="twidth">
	<colgroup>
		<col width=15%/>
		<col width=35%/>
		<col width=15%/>
		<col width=35%/>	
	</colgroup>
	<caption>noticeReg</caption>
		<tbody>
  		 	<tr>
 				<th class="left">제목</th>
 	 			<td ><input type="text"  name="title" /></td>	
	 			
 	 		</tr>
 		 	<tr>
 				<th class="left">작성자</th>
 	 			<td><input type="text"  name="writer" /></td>	
	 			
 	 		</tr>	 			

 	  		 <tr>
 				<th class="left">내용</th>
 	 			<td id="txtcontent" class="txtcontent"><textarea id="story" name="content"
          rows="5" cols="33">aa</textarea></td>	
	 			
 	 		</tr> 			
  	  		 <tr>
 				<th class="left">첨부</th>
 	 			<td ><input type="file" name=""/></td>	
	 			
 	 		</tr> 	 			
		

		</tbody>

 <tr>
 
 </tr>
</table>
 	 		<input type="submit" value="save" />
 	 		<input type="button" value="cancel" class="cancel"/>	
</form>
</body>

</html>