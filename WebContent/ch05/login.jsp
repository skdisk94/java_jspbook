<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<center>
<h2>Login</h2>
<hr>
<form name=form1 action=/jspbook/ch05/loginProc.jsp method=post>
	ID <input type="text" name="id" width=200 size="5"><br>
	PASSWORD <input type="password" name="password" width=200 size="5"><br>
	<br>
	<input type="submit" value="로그인" name="'B1">
	<input type="reset" value="회원가입" name="'B2">
</form>

</body>
</html>