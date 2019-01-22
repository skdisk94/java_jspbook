<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include_Action.jsp</title>
</head>
<body>
<h2>include_action.jsp에서 footer.jsp 호출</h2>
<hr>
include_actionjsp에서 호출한 메세지입니다.<br>
<jsp:include page="footer.jsp">
	<jsp:param name ="email" value="test@test.net"/>
	<jsp:param name ="tel" value="000-000-0000"/>
</jsp:include>
</body>
</html>