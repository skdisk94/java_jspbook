<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점수 입력</title>
</head>
<body>
<center>
<h2>점수를 입력하시오.</h2>
<form name=form1 action=/jspbook/ch05/scoreProc.jsp method=post>
	국어 <input type="text" name="kScore" width=200 size="5"><br>
	영어 <input type="text" name="eScore" width=200 size="5"><br>
	수학 <input type="text" name="mScore" width=200 size="5"><br>
	<br>
	<input type="submit" value="제출" name="'B1">
	<input type="reset" value="다시입력" name="'B2">
</form>

</body>
</html>