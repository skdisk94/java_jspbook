<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page_control.jsp</title>
</head>
<body>
<center>
<h2>forward, sendRedirect</h2>
<hr>
<form method=post action=forward_action2.jsp>
forward 액션 : <input type=text name=username>
<input type=submit value="확인">
</form>
<form method=post action=response_sendRedirect.jsp>
response.sendRedirect : <input type=text name=username>
<input type=submit value="확인">
</form>
</body>
</html>