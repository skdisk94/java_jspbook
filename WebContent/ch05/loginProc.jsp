<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.*" %>
<%
	MemberDAO mDao = new MemberDAO();
	String idStr = request.getParameter("id");
	String password = request.getParameter("password");
	String errorMessage = null;
	int id=0;
	int loginOk;
	try{
		id = Integer.parseInt(idStr);
		loginOk=mDao.login(id, password);
		if(loginOk==1){
			%>
			<jsp:forward page="include_test.jsp"/>
			<%
		}
		else{
			%>
			<jsp:forward page="login.jsp"/>
			<%
		}
	}catch (Exception e){
		%>
		<jsp:forward page="login.jsp"/>
		<% 
		}
	mDao.close();
		%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>