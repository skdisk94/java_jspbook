<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="addr" class="jspbook.ch07.AddrBean"/>
<jsp:setProperty name="addr" property="*"/>
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application"/>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>등록내용</h2>

<%
if(am.search(request.getParameter("sname"))!=null){
%>
	이름 : <%=am.search(request.getParameter("sname")).getUsername() %><p>
	전화번호 : <%=am.search(request.getParameter("sname")).getTel() %><p>
	이메일 : <%=am.search(request.getParameter("sname")).getEmail() %><p>
	성별 : <%=am.search(request.getParameter("sname")).getSex() %>
<%
}
else{ 
%>
	검색결과 없음
<%
}
%>
<hr>
<a href="addr_list.jsp">목록 보기</a>
</body>
</html>