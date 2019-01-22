<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<table border="1">
	<thead>
      <tr><th>국어</th><th>영어</th><th>수학</th><th>합계</th><th>평균</th></tr>
    </thead>
 	<tbody>
      <tr><td><%=request.getParameter("kScore") %></td>
      <td><%=request.getParameter("eScore") %></td>
      <td><%=request.getParameter("mScore") %></td>
      <td><%=request.getParameter("sum") %></td>
      <td><%=request.getParameter("avg") %></td></tr>
    </tbody>

</table>
</body>
</html>