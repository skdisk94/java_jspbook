<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	int result =0;
    
    	if(request.getMethod().equals("POST")){
	    	String op = request.getParameter("operator");
	    	
	    	int num1 = Integer.parseInt(request.getParameter("num1"));
	    	int num2 = Integer.parseInt(request.getParameter("num2"));
	    	
	    	/* if(op.equals("+"))
	    		result = num1+num2;
	    	else if(op.equals("-"))
	    		result = num1-num2;
	    	else if(op.equals("*"))
	    		result = num1*num2;
	    	else if(op.equals("/"))
	    		result = num1/num2; */
	    	
	    	switch(op){
	    	case "+":
	    		result=num1+num2;
	    		break;
	    	case "-":
	    		result= num1-num2;
	    		break;
	    	case "*":
	    		result= num1*num2;
	    		break;
	    	case "/":
	    		result= num1/num2;
	    		break;
	    	}
    	}
    	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
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

계산결과 : <%=result %>

</body>
</html>