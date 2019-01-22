<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forward_Action.jsp</title>
</head>
<body>
<h2>forward_action.jsp에서 footer.jsp 호출</h2>
forward_action.jsp에서 호출한 메세지입니다.<br>
<jsp:forward page="footer.jsp">
	<jsp:param name ="email" value="test@test.net"/>
	<jsp:param name ="tel" value="000-000-0000"/>
</jsp:forward>

</body>
</html>