<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	int kScore=0;
 	int eScore=0;
 	int mScore=0;
 	int sum=0;
 	double avg=0;
 	
 	if(request.getMethod().equals("POST")){
 		kScore = Integer.parseInt(request.getParameter("kScore"));
 		eScore = Integer.parseInt(request.getParameter("eScore"));
 		mScore = Integer.parseInt(request.getParameter("mScore"));
 		sum = kScore+eScore+mScore;
 		avg = sum/3.0;
 	}
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점수 입력받기</title>
</head>
<body>
<center>
<form name=form1 method=post>
	국어 <input type="text" name="kScore" width=200 size="5"><br>
	영어 <input type="text" name="eScore" width=200 size="5"><br>
	수학 <input type="text" name="mScore" width=200 size="5"><br>
	<br>
	<input type="submit" value="제출" name="'B1">
	<input type="reset" value="다시입력" name="'B2">
</form>
<br>
<!-- <hr width="1px" size="50%" color="yellow"> -->
<table border="1">
	<thead>
      <tr><th>국어</th><th>영어</th><th>수학</th><th>합계</th><th>평균</th></tr>
    </thead>
 	<tbody>
      <tr><td><%=kScore %></td><td><%=eScore %></td><td><%=mScore %></td><td><%=sum %></td><td><%=avg %></td></tr>
    </tbody>

</table>

</body>
</html>