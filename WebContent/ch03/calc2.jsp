<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="calc" scope="page" class="jspbook.ch03.CalcBean"/>
<jsp:setProperty name="calc" property="*"/>
<%calc.calculate(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기2</title>
</head>
<body>
<center>
<h3>계산기</h3>
<hr>
<form name= form1 method=post>
<INPUT TYPE ="text" NAME ="num1" width=200 size="5">
<SELECT NAME= "operator">
	<option selected>+</option>
	<option>-</option>
	<option>*</option>
	<option>/</option>
</SELECT>

<INPUT TYPE="text" NAME= "num2" width=200 size="5">
<input type="submit" value="계산" name="'B1">
<input type="reset" value="다시입력" name="'B2">
</form>
<hr>

계산결과 : <jsp:getProperty name="calc" property="result"/>

</body>
</html>