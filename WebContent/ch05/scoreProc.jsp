<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int kScore = Integer.parseInt(request.getParameter("kScore"));
	int eScore = Integer.parseInt(request.getParameter("eScore"));
	int mScore = Integer.parseInt(request.getParameter("mScore"));
	
	int sum = kScore + eScore + mScore;
	double avg = sum/3.0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scoreProc</title>
</head>
<body>
<hr>

<jsp:forward page="scoreResult.jsp">
	<jsp:param name ="kScore" value="<%=kScore%>"/>
	<jsp:param name ="eScore" value="<%=eScore%>"/>
	<jsp:param name ="mScore" value="<%=mScore%>"/>
	<jsp:param name ="sum" value="<%=sum%>"/>
	<jsp:param name ="avg" value="<%=avg%>"/>
</jsp:forward>

</body>
</html>