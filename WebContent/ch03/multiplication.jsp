<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
   		int num=0;
    	if(request.getMethod().equals("POST")){
	    	num = Integer.parseInt(request.getParameter("num"));
	    }
    	
    	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>
</head>
<body>
<center>
<h3>구구단</h3>
	<hr>
	<form name= form1 method=post>
		<INPUT TYPE ="text" NAME ="num" width=200 size="5">단
		<input type="submit" value="계산" name="'B1">
	</form>
	<hr>
	구구단 : <%=num %>단
	<br>
	<%
		if(num==0){
			out.write("");
		}
		else{
			for(int i=1;i<10;i++){
				String s = String.format("%d x %d = %d <br>",num,i,num*i);
				out.write(s);
			}
		}
	%>


</body>
</html>