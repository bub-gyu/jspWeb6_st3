<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
<script>
	function logoutProc(){
		location.href="./logIn/logoutProc.jsp";
	}

</script>
</head>
<body>
<h3>mainForm</h3>
<%
	
if(session.getAttribute("sessionID")==null){//로그인이 안된 상태
	response.sendRedirect("login/loginForm.jsp");
	
}else{
%>	
	<%=session.getAttribute("sessionID") %>님 로그인 되었습니다 <br /><br />
	<input type="button"  value="로그아웃" onclick="logoutProc();"/>


<%	
}

%>

</body>
</html>